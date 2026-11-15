package com.transsion.socket;

public interface Action<T, P> {
    void accept(T t, P p);
}
