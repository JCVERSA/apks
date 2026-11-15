package com.mbridge.msdk.thrid.okhttp.internal.platform;

import com.mbridge.msdk.thrid.okhttp.u;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

final class d extends g {

    final Method f37401c;

    final Method f37402d;

    d(Method method, Method method2) {
        this.f37401c = method;
        this.f37402d = method2;
    }

    public static d h() {
        try {
            return new d(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", null));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override
    public void a(SSLSocket sSLSocket, String str, List<u> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listA = g.a(list);
            this.f37401c.invoke(sSLParameters, listA.toArray(new String[listA.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to set ssl parameters", (Exception) e10);
        }
    }

    @Override
    public String b(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f37402d.invoke(sSLSocket, null);
            if (str == null || str.equals("")) {
                return null;
            }
            return str;
        } catch (IllegalAccessException e10) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("failed to get ALPN selected protocol", (Exception) e10);
        } catch (InvocationTargetException e11) {
            if (e11.getCause() instanceof UnsupportedOperationException) {
                return null;
            }
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("failed to get ALPN selected protocol", (Exception) e11);
        }
    }
}
