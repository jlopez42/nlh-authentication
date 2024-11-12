package com.nlh.authentication.service.impl;

import com.nlh.authentication.payload.request.LogInRequest;
import com.nlh.authentication.payload.request.SignUpRequest;
import com.nlh.authentication.payload.response.JwtAuthenticationResponse;
import com.nlh.authentication.service.AuthenticationService;
import org.springframework.stereotype.Service;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Override
    public JwtAuthenticationResponse signUp(SignUpRequest request) {
        return null;
    }

    @Override
    public JwtAuthenticationResponse signIn(LogInRequest request) {
        return null;
    }
}
