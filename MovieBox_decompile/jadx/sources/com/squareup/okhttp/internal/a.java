package com.squareup.okhttp.internal;

import com.squareup.okhttp.ConnectionSpec;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

public final class a {

    private final List f39452a;

    private int f39453b = 0;

    private boolean f39454c;

    private boolean f39455d;

    public a(List list) {
        this.f39452a = list;
    }

    private boolean c(SSLSocket sSLSocket) {
        for (int i10 = this.f39453b; i10 < this.f39452a.size(); i10++) {
            if (((ConnectionSpec) this.f39452a.get(i10)).isCompatible(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public ConnectionSpec a(SSLSocket sSLSocket) throws UnknownServiceException {
        ConnectionSpec connectionSpec;
        int i10 = this.f39453b;
        int size = this.f39452a.size();
        while (true) {
            if (i10 >= size) {
                connectionSpec = null;
                break;
            }
            connectionSpec = (ConnectionSpec) this.f39452a.get(i10);
            if (connectionSpec.isCompatible(sSLSocket)) {
                this.f39453b = i10 + 1;
                break;
            }
            i10++;
        }
        if (connectionSpec != null) {
            this.f39454c = c(sSLSocket);
            c.instance.apply(connectionSpec, sSLSocket, this.f39455d);
            return connectionSpec;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f39455d + ", modes=" + this.f39452a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean b(IOException iOException) {
        this.f39455d = true;
        if (!this.f39454c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z10 = iOException instanceof SSLHandshakeException;
        if ((z10 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z10 || (iOException instanceof SSLProtocolException);
    }
}
