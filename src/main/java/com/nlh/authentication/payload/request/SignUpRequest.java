package com.nlh.authentication.payload.request;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Builder;
import lombok.Data;

import java.util.Set;

@Data
@Builder
public class SignUpRequest {

    @NotBlank
    @Size(min = 8, max = 12)
    private String username;
    private String firstName;
    private String lastName;
    @NotBlank
    @Size(max = 100)
    @Email
    private String email;

    @NotBlank
    @Size(min = 8, max = 15)
    private String password;
    private Set<String> role;
}
