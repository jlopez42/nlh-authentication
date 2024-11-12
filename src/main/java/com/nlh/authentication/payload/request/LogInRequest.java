package com.nlh.authentication.payload.request;

import jakarta.validation.constraints.NotBlank;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class LogInRequest {

    @NotBlank
    private String username;

    @NotBlank
    private String password;
}
