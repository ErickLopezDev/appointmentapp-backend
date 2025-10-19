package com.health.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LaboratoryDTO {
    private Integer idLaboratory;

    @NotBlank
    @Size(min = 3, max = 70)
    private String name;

    @Size(max = 200)
    private String address;

    @Size(max = 20)
    @Pattern(regexp = "[0-9+\\-() ]*", message = "invalid phone")
    private String phone;

    @Email
    @Size(max = 100)
    private String email;
}
