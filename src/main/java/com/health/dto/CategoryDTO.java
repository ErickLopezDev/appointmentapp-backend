package com.health.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoryDTO {
    private Integer idCategory;

    @NotBlank
    @Size(min = 3, max = 70)
    private String name;

    @Size(max = 200)
    private String description;
}

