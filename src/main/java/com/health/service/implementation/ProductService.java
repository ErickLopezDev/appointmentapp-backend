package com.health.service.implementation;

import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;
import com.health.model.Product;
import com.health.repository.IGenericRepository;
import com.health.repository.IProductRepository;
import com.health.service.IProductService;

@Service
@RequiredArgsConstructor
public class ProductService extends GenericService <Product, Integer> implements IProductService{

    private final IProductRepository repo;

    @Override
    protected IGenericRepository<Product, Integer> getRepo(){
        return repo;
    }
    
}
