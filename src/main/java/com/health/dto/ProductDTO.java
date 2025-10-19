package com.health.dto;

import java.time.LocalDate;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDTO {
    private Integer idProduct;
    
    @NotNull
    private Integer idCategory;

    @NotNull
    private Integer idFamily;

    @NotNull
    private Integer idLaboratory;


    @NotNull
    @Size(max = 100)
    private String productName;

    @Size(max = 200)
    private String productDescription;

    @Size(max = 200)
    private String productPresentation;

    @NotNull
    @Min(1)
    private Double productUnitPrice;

    @NotNull
    @Min(0)
    private Integer productStock;

    @NotNull
    private LocalDate productExpired;


}
