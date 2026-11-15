package com.trello.rxlifecycle3;

public class OutsideLifecycleException extends IllegalStateException {
    public OutsideLifecycleException(String str) {
        super(str);
    }
}
