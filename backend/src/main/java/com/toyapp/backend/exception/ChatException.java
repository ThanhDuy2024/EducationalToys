package com.toyapp.backend.exception;

public class ChatException extends RuntimeException {
    public ChatException(String message) {
        super(message);
    }
}