package com.example.billingdemo;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.ArrayList;
import java.util.List;

public class SelectDB {

    public ArrayList<Product> addProduct(){
        ArrayList<Product> products = new ArrayList<>();
        Product p1 = new Product(1, "Kim Cake", 15.90);
        Product p2 = new Product(2, "Kerry Cake", 12.80);
        Product p3 = new Product(3, "Coffee Cake", 10.30);
        Product p4 = new Product(4, "Swindon Cake", 18.50);
        Product p5 = new Product(5, "New York Cheesecake", 11.25);
        Product p6 = new Product(6, "Black Forest Cake", 20.00);
        Product p7 = new Product(7, "Chocolate Cake", 8.95);
        Product p8 = new Product(8, "Red Velvet Cake", 18.75);
        Product p9 = new Product(9, "Vanilla Cupcakes", 4.50);
        Product p10 = new Product(10, "6 Piece Cakepops", 10.60);
        Product p11 = new Product(11, "10 Piece Cakepops", 16.20);
        Product p12 = new Product(12, "4 Box Donuts", 14.75);
        Product p13 = new Product(13, "8 Box Donuts", 29.5);

        products.add(p1);
        products.add(p2);
        products.add(p3);
        products.add(p4);
        products.add(p5);
        products.add(p6);
        products.add(p7);
        products.add(p8);
        products.add(p9);
        products.add(p10);
        products.add(p11);
        products.add(p12);
        products.add(p13);

        return products;
    }

    public List<Product> select() {
        EntityManagerFactory sessionFactory = Persistence.createEntityManagerFactory("default");
        EntityManager entityManager = sessionFactory.createEntityManager();

        entityManager.getTransaction().begin();

        List<Product> result = entityManager.createQuery("from Product", Product.class).getResultList();

        entityManager.getTransaction().commit();

        entityManager.close();
        return result;
    }

    public void insertUser(User b) {
        EntityManagerFactory sessionFactory = Persistence.createEntityManagerFactory("default");
        EntityManager entityManager = sessionFactory.createEntityManager();

        entityManager.getTransaction().begin();
        //entityManager.persist(b.getAutor());
        entityManager.persist(b);

        entityManager.getTransaction().commit();

        entityManager.close();
    }

    public List<User> selectUser() {
        EntityManagerFactory sessionFactory = Persistence.createEntityManagerFactory("default");
        EntityManager entityManager = sessionFactory.createEntityManager();

        entityManager.getTransaction().begin();

        List<User> result = entityManager.createQuery("from User", User.class).getResultList();

        entityManager.getTransaction().commit();

        entityManager.close();
        return result;
    }
}
