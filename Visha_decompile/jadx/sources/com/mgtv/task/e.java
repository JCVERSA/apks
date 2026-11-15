package com.mgtv.task;

public abstract class e<ResultType> implements d<ResultType> {
    private boolean a;

    @Override
    public void a(ResultType resulttype, Object obj, Throwable th) {
    }

    @Override
    public void b(ResultType resulttype, Object obj, Throwable th) {
    }

    @Override
    public void c() {
    }

    @Override
    public boolean d() {
        return this.a;
    }

    @Override
    public void c(ResultType resulttype) {
    }

    @Override
    public boolean c(ResultType resulttype, Object obj, Throwable th) {
        return th != null;
    }
}
