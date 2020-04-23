package com.example.sweater.domain;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER,ADMIN,PRIME_USER;

    @Override
    public String getAuthority() {
        return name();
    }
}
