package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

public final class xq1<T> {

    @Nullable
    public final T a;

    @Nullable
    public final tm.a b;

    @Nullable
    public final si2 c;
    public boolean d;

    public interface a {
        void a(si2 si2Var);
    }

    public interface b<T> {
        void a(T t);
    }

    private xq1(si2 si2Var) {
        this.d = false;
        this.a = null;
        this.b = null;
        this.c = si2Var;
    }

    public static <T> xq1<T> a(@Nullable T t, @Nullable tm.a aVar) {
        return new xq1<>(t, aVar);
    }

    public static <T> xq1<T> a(si2 si2Var) {
        return new xq1<>(si2Var);
    }

    private xq1(@Nullable T t, @Nullable tm.a aVar) {
        this.d = false;
        this.a = t;
        this.b = aVar;
        this.c = null;
    }
}
