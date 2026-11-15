package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.i;
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
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

public final class b {

    private final List<i> f37105a;

    private int f37106b = 0;

    private boolean f37107c;

    private boolean f37108d;

    public b(List<i> list) {
        this.f37105a = list;
    }

    private boolean b(SSLSocket sSLSocket) {
        for (int i10 = this.f37106b; i10 < this.f37105a.size(); i10++) {
            if (this.f37105a.get(i10).a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public i a(SSLSocket sSLSocket) throws IOException {
        i iVar;
        int i10 = this.f37106b;
        int size = this.f37105a.size();
        while (true) {
            if (i10 >= size) {
                iVar = null;
                break;
            }
            iVar = this.f37105a.get(i10);
            if (iVar.a(sSLSocket)) {
                this.f37106b = i10 + 1;
                break;
            }
            i10++;
        }
        if (iVar != null) {
            this.f37107c = b(sSLSocket);
            com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(iVar, sSLSocket, this.f37108d);
            return iVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f37108d + ", modes=" + this.f37105a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean a(IOException iOException) {
        this.f37108d = true;
        if (!this.f37107c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z10 = iOException instanceof SSLHandshakeException;
        if ((z10 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z10 || (iOException instanceof SSLProtocolException) || (iOException instanceof SSLException);
    }
}
