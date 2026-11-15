package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.net.ssl.SSLSockets;
import defpackage.y45;
import java.io.IOException;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

@SuppressLint({"NewApi"})
public final class pd implements l12 {

    public static final class a {
        public static pd a() {
            if (b()) {
                return new pd();
            }
            return null;
        }

        public static boolean b() {
            int i = rh1.c;
            return y45.e("Dalvik", System.getProperty("java.vm.name"));
        }
    }

    @Override
    @SuppressLint({"NewApi"})
    public final void a(SSLSocket sSLSocket, String str, List<? extends mm1> list) throws IOException {
        y45.j(sSLSocket, "sslSocket");
        y45.j(list, "protocols");
        try {
            SSLSockets.setUseSessionTickets(sSLSocket, true);
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            int i = rh1.c;
            sSLParameters.setApplicationProtocols((String[]) rh1.a.a(list).toArray(new String[0]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalArgumentException e) {
            throw new IOException("Android internal error", e);
        }
    }

    @Override
    @SuppressLint({"NewApi"})
    public final String b(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        String applicationProtocol = sSLSocket.getApplicationProtocol();
        if (applicationProtocol == null || y45.e(applicationProtocol, "")) {
            return null;
        }
        return applicationProtocol;
    }

    @Override
    public final boolean a(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        return SSLSockets.isSupportedSocket(sSLSocket);
    }

    @Override
    public final boolean a() {
        return a.b();
    }
}
