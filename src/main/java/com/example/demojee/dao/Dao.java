package com.example.demojee.dao;

import java.util.List;
import java.util.Optional;
public interface  Dao<T> {


    Optional<T> get(Long id);
    List<T> getByName(String name);
    List<T> getAll();
    void save(T t);
    void update(T t);
    void delete(T t);
}
