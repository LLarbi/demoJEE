package com.example.demojee.dao;

public final class DaoFactory {
    public static PastryDao getPastryDao() {
        return new PastryJpaDao();
    }
}
