package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.io.IOException;

public interface sm {

    public static class a extends IOException {
        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }

        public a(Throwable th) {
            super(th);
        }
    }

    public interface b {
        void a(fn fnVar);

        void a(sm smVar, fn fnVar);

        void a(sm smVar, fn fnVar, fn fnVar2);
    }

    @WorkerThread
    File a(String str, long j, long j2) throws a;

    @WorkerThread
    void a(fn fnVar);

    @WorkerThread
    void a(File file, long j) throws a;

    @WorkerThread
    void a(String str);

    @WorkerThread
    void a(String str, es esVar) throws a;

    long b(String str, long j, long j2);

    nz b(String str);

    void b(fn fnVar);

    @Nullable
    @WorkerThread
    fn c(String str, long j, long j2) throws a;

    long d(String str, long j, long j2);

    @WorkerThread
    fn e(String str, long j, long j2) throws a, InterruptedException;
}
