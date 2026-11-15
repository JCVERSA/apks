package com.cloud.hisavana.net.impl;

import okhttp3.Headers;

public interface IHttpCallback {
    void a();

    void b();

    void c(int i10, byte[] bArr);

    void d(int i10, byte[] bArr, Throwable th2);

    void e(int i10, byte[] bArr, String str);

    void f(int i10, byte[] bArr, Headers headers);
}
