package productcrudapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;
import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private ProductDao productDao;

    @RequestMapping
    public String home(Model m){
        List<Product> productList = productDao.getProducts();
        m.addAttribute("productList", productList);
        return "index";
    }

    //show add product form
    @RequestMapping("/add-product")
    public String addProduct(Model m){
        m.addAttribute("title", "Add Product");
        return "add_product_form";
    }

    //handle add product form
    @RequestMapping(value = "/handle-product", method = RequestMethod.POST)
    public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request){
        System.out.println(product);
        productDao.createProduct(product);
        RedirectView redirectView = new RedirectView(request.getContextPath() + "/");
        return redirectView;
    }

    @RequestMapping(value = "/delete/{productId}", method = RequestMethod.GET)
    public RedirectView deleteProduct(@PathVariable("productId") int productId, HttpServletRequest request){
        productDao.deleteProduct(productId);
        RedirectView redirectView = new RedirectView(request.getContextPath() + "/");
        return redirectView;
    }

    @RequestMapping(value = "/update/{productId}", method = RequestMethod.GET)
    public String updateProduct(@PathVariable("productId") int productId, Model m){
        Product product = productDao.getProduct(productId);
        m.addAttribute("product", product);
        return "update_form";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String searchProduct(@RequestParam("name") String productName, Model m){
//        productName = productName.toLowerCase().replaceAll("\\s+", "");
        List<Product> productList = productDao.searchProduct(productName);
        if(productList!=null && !productList.isEmpty()){
            System.out.println("found succesfully");
            m.addAttribute("productList", productList);
            return "search_result";
        }
        return "not_found";
    }
}
