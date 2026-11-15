package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class av1 extends yz {
    private final SSLSocketFactory s;

    public av1(String str, uh0 uh0Var, SSLSocketFactory sSLSocketFactory) {
        super(str, 8000, 8000, uh0Var);
        this.s = sSLSocketFactory;
    }

    @Override
    public final HttpURLConnection a(URL url) {
        y45.j(url, "url");
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        SSLSocketFactory sSLSocketFactory = this.s;
        if (sSLSocketFactory != null && (httpURLConnection instanceof HttpsURLConnection)) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        y45.g(httpURLConnection);
        return httpURLConnection;
    }
}
