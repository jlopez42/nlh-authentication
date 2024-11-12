package com.nlh.authentication.service;

import com.nlh.authentication.payload.request.LogInRequest;
import com.nlh.authentication.payload.request.SignUpRequest;
import com.nlh.authentication.payload.response.JwtAuthenticationResponse;

public interface AuthenticationService {
    JwtAuthenticationResponse signUp(SignUpRequest request);
    JwtAuthenticationResponse signIn(LogInRequest request);
}
