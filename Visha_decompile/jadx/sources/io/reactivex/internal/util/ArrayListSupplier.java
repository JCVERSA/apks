package io.reactivex.internal.util;

import defpackage.t74;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public enum ArrayListSupplier implements Callable<List<Object>>, t74 {
    INSTANCE;

    public static <T> Callable<List<T>> asCallable() {
        return INSTANCE;
    }

    public static <T, O> t74 asFunction() {
        return INSTANCE;
    }

    @Override
    public List<Object> apply(Object obj) throws Exception {
        return new ArrayList();
    }

    @Override
    public List<Object> call() throws Exception {
        return new ArrayList();
    }
}
