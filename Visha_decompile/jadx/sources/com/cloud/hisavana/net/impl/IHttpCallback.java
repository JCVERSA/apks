package com.cloud.hisavana.net.impl;

import okhttp3.Headers;

public interface IHttpCallback {
    void a(int i, byte[] bArr, String str);

    void b(int i, byte[] bArr);

    void c();

    void d();

    void e(int i, byte[] bArr, Throwable th);

    void f(int i, byte[] bArr, Headers headers);
}
