package com.mgtv.task;

import androidx.annotation.UiThread;

public interface d<ResultType> {
    @UiThread
    void a(ResultType resulttype, Object obj, Throwable th);

    @UiThread
    void b(ResultType resulttype, Object obj, Throwable th);

    @UiThread
    void c();

    void c(ResultType resulttype);

    @UiThread
    boolean c(ResultType resulttype, Object obj, Throwable th);

    void d(ResultType resulttype, Object obj, Throwable th);

    @UiThread
    boolean d();
}
