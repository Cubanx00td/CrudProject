package productcrudapp.dao;

import jakarta.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.stereotype.Component;
import productcrudapp.model.Product;

import java.util.List;

@Component
public class ProductDao {

    @Autowired
    private HibernateTransactionManager transactionManager;

    //create
    @Transactional
    public void createProduct(Product product){
        this.transactionManager.getSessionFactory().getCurrentSession().saveOrUpdate(product);
    }

    //get all product
    @Transactional
    public List<Product> getProducts(){
        List<Product> products = this.transactionManager.getSessionFactory().getCurrentSession().createQuery("From Product", Product.class).list();
        return products;
    }

    //delete single product
    @Transactional
    public void deleteProduct(int pid){
        Product p = this.transactionManager.getSessionFactory().getCurrentSession().get(Product.class, pid);
        this.transactionManager.getSessionFactory().getCurrentSession().remove(p);
    }


    //get single product
    @Transactional
    public Product getProduct(int pid){
        return this.transactionManager.getSessionFactory().getCurrentSession().get(Product.class, pid);
    }
    @Transactional
    public List<Product> searchProduct(String name){
        Session currSession = this.transactionManager.getSessionFactory().getCurrentSession();
        String hql = "From Product p where p.name LIKE :name";
        Query<Product> query = currSession.createQuery(hql, Product.class);
        query.setParameter("name","%" + name + "%");


        List<Product> results = query.getResultList();
        return results.isEmpty() ? null : results;
    }

    public HibernateTransactionManager getTransactionManager() {
        return transactionManager;
    }

    public void setTransactionManager(HibernateTransactionManager transactionManager) {
        this.transactionManager = transactionManager;
    }
}
