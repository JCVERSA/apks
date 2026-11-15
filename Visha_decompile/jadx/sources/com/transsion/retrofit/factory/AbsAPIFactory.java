package com.transsion.retrofit.factory;

public abstract class AbsAPIFactory {
    public abstract <T> T makeApiClient(Class<T> cls);
}
