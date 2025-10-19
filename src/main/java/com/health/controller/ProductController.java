package com.health.controller;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import com.health.dto.ProductDTO;
import com.health.service.IProductService;

import jakarta.validation.Valid;

import com.health.model.Product;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;




@RestController
@RequestMapping("/products")
@RequiredArgsConstructor
public class ProductController {
    private final IProductService service;
    @Qualifier("defaultMapper")
    private final ModelMapper modelMapper;

    @GetMapping
    public ResponseEntity<List<ProductDTO>> findAll() throws Exception {
        List<ProductDTO> list = service.findAll().stream().map(this::convertToDto).toList();
        return ResponseEntity.ok(list);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProductDTO> findById(@PathVariable("id") Integer id) throws Exception {
        ProductDTO obj = convertToDto(service.findById(id));
        return ResponseEntity.ok(obj);
    } 

    @PostMapping
    public ResponseEntity<ProductDTO> save (@Valid @RequestBody ProductDTO dto) throws Exception {

        Product obj = service.save(convertToEntity(dto));
        return new ResponseEntity<>(convertToDto(obj), HttpStatus.CREATED);
    }


    @PutMapping("/{id}")
    public ResponseEntity<ProductDTO> update(@PathVariable("id") Integer id, @Valid @RequestBody ProductDTO dto) throws Exception{
        if (dto.getIdProduct() != null && !dto.getIdProduct().equals(id)) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }

        Product entity = convertToEntity(dto);
        entity.setIdProduct(id);

        Product obj = service.update(entity, id);
        return ResponseEntity.ok(convertToDto(obj));
    }
    

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable("id") Integer id) throws Exception {
        service.delete(id);

        return ResponseEntity.noContent().build();
    }



    private ProductDTO convertToDto(Product obj){
        return modelMapper.map(obj, ProductDTO.class);
    }

    private Product convertToEntity(ProductDTO dto){
        return modelMapper.map(dto, Product.class);
    }
    
}
