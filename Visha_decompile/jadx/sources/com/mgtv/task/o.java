package com.mgtv.task;

import androidx.annotation.NonNull;

public class o<ResultType> implements d<ResultType> {
    private d<ResultType> a;

    public o(@NonNull d<ResultType> dVar) {
        this.a = dVar;
    }

    @Override
    public void a(ResultType resulttype, Object obj, Throwable th) {
        this.a.a(resulttype, obj, th);
    }

    @Override
    public void b(ResultType resulttype, Object obj, Throwable th) {
        this.a.b(resulttype, obj, th);
    }

    @Override
    public void c(ResultType resulttype) {
        this.a.c(resulttype);
    }

    @Override
    public boolean d() {
        return this.a.d();
    }

    @Override
    public void c() {
        this.a.c();
    }

    @Override
    public void d(ResultType resulttype, Object obj, Throwable th) {
        this.a.d(resulttype, obj, th);
    }

    @Override
    public boolean c(ResultType resulttype, Object obj, Throwable th) {
        return this.a.c(resulttype, obj, th);
    }
}
