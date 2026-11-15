package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;

public final class sr {
    private final List<rr> a;
    private int b;
    private boolean c;
    private boolean d;

    public sr(List<rr> list) {
        y45.j(list, "connectionSpecs");
        this.a = list;
    }

    public final rr a(SSLSocket sSLSocket) throws IOException {
        boolean z;
        rr rrVar;
        y45.j(sSLSocket, "sslSocket");
        int i = this.b;
        int size = this.a.size();
        while (true) {
            z = true;
            if (i >= size) {
                rrVar = null;
                break;
            }
            rrVar = this.a.get(i);
            if (rrVar.a(sSLSocket)) {
                this.b = i + 1;
                break;
            }
            i++;
        }
        if (rrVar != null) {
            int size2 = this.a.size();
            for (int i2 = this.b; i2 < size2; i2++) {
                if (this.a.get(i2).a(sSLSocket)) {
                    this.c = z;
                    rrVar.a(sSLSocket, this.d);
                    return rrVar;
                }
            }
            z = false;
            this.c = z;
            rrVar.a(sSLSocket, this.d);
            return rrVar;
        }
        boolean z2 = this.d;
        List<rr> list = this.a;
        String[] enabledProtocols = sSLSocket.getEnabledProtocols();
        y45.g(enabledProtocols);
        String string = Arrays.toString(enabledProtocols);
        y45.i(string, "toString(...)");
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + z2 + ", modes=" + list + ", supported protocols=" + string);
    }

    public final boolean a(IOException iOException) {
        y45.j(iOException, "e");
        this.d = true;
        return (!this.c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException) || ((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException) || !(iOException instanceof SSLException)) ? false : true;
    }
}
