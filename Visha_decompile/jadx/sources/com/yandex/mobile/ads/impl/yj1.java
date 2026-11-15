package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class yj1 extends SSLSocketFactory {
    public static final int b = 0;
    private final SSLSocketFactory a;

    public static final class a {
        private a() {
        }

        public static final String[] a(SSLSocketFactory sSLSocketFactory) {
            int i = yj1.b;
            String[] defaultCipherSuites = sSLSocketFactory.getDefaultCipherSuites();
            ArrayList arrayList = new ArrayList(Arrays.asList(Arrays.copyOf(defaultCipherSuites, defaultCipherSuites.length)));
            arrayList.remove("TLS_RSA_WITH_AES_128_CBC_SHA");
            arrayList.add(0, "TLS_RSA_WITH_AES_128_CBC_SHA");
            return (String[]) arrayList.toArray(new String[0]);
        }

        public static final String[] b(SSLSocketFactory sSLSocketFactory) {
            int i = yj1.b;
            String[] supportedCipherSuites = sSLSocketFactory.getSupportedCipherSuites();
            ArrayList arrayList = new ArrayList(Arrays.asList(Arrays.copyOf(supportedCipherSuites, supportedCipherSuites.length)));
            arrayList.remove("TLS_RSA_WITH_AES_128_CBC_SHA");
            arrayList.add(0, "TLS_RSA_WITH_AES_128_CBC_SHA");
            return (String[]) arrayList.toArray(new String[0]);
        }

        public a(int i) {
            this();
        }
    }

    public yj1(SSLSocketFactory sSLSocketFactory) {
        y45.j(sSLSocketFactory, "delegate");
        this.a = sSLSocketFactory;
    }

    @Override
    public final Socket createSocket(String str, int i) throws IOException {
        y45.j(str, "arg0");
        Socket socketCreateSocket = this.a.createSocket(str, i);
        String[] strArrA = a.a(this.a);
        y45.h(socketCreateSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
        ((SSLSocket) socketCreateSocket).setEnabledCipherSuites(strArrA);
        return socketCreateSocket;
    }

    @Override
    public final String[] getDefaultCipherSuites() {
        return a.a(this.a);
    }

    @Override
    public final String[] getSupportedCipherSuites() {
        return a.b(this.a);
    }

    @Override
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        y45.j(str, "arg0");
        y45.j(inetAddress, "arg2");
        Socket socketCreateSocket = this.a.createSocket(str, i, inetAddress, i2);
        String[] strArrA = a.a(this.a);
        y45.h(socketCreateSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
        ((SSLSocket) socketCreateSocket).setEnabledCipherSuites(strArrA);
        return socketCreateSocket;
    }

    @Override
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        y45.j(inetAddress, "arg0");
        Socket socketCreateSocket = this.a.createSocket(inetAddress, i);
        String[] strArrA = a.a(this.a);
        y45.h(socketCreateSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
        ((SSLSocket) socketCreateSocket).setEnabledCipherSuites(strArrA);
        return socketCreateSocket;
    }

    @Override
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        y45.j(inetAddress, "arg0");
        y45.j(inetAddress2, "arg2");
        Socket socketCreateSocket = this.a.createSocket(inetAddress, i, inetAddress2, i2);
        String[] strArrA = a.a(this.a);
        y45.h(socketCreateSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
        ((SSLSocket) socketCreateSocket).setEnabledCipherSuites(strArrA);
        return socketCreateSocket;
    }

    @Override
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        y45.j(socket, "arg0");
        y45.j(str, "arg1");
        Socket socketCreateSocket = this.a.createSocket(socket, str, i, z);
        String[] strArrA = a.a(this.a);
        y45.h(socketCreateSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
        ((SSLSocket) socketCreateSocket).setEnabledCipherSuites(strArrA);
        return socketCreateSocket;
    }
}
