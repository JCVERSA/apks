package com.google.android.exoplayer2.upstream.cache;

import defpackage.yg1;
import defpackage.yp0;
import defpackage.zg1;
import java.io.File;
import java.io.IOException;

public interface Cache {

    public static class CacheException extends IOException {
        public CacheException(String str) {
            super(str);
        }

        public CacheException(Throwable th) {
            super(th);
        }

        public CacheException(String str, Throwable th) {
            super(str, th);
        }
    }

    public interface a {
        void a(Cache cache, yp0 yp0Var, yp0 yp0Var2);

        void c(Cache cache, yp0 yp0Var);

        void d(Cache cache, yp0 yp0Var);
    }

    void a(yp0 yp0Var);

    void b(yp0 yp0Var);

    void c(String str, zg1 zg1Var);

    void commitFile(File file, long j);

    yg1 getContentMetadata(String str);

    File startFile(String str, long j, long j2);

    yp0 startReadWrite(String str, long j, long j2);

    yp0 startReadWriteNonBlocking(String str, long j, long j2);
}
