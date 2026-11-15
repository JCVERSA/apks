package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.ConnectionPool;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.Sink;
import okio.Timeout;

public final class n {

    public final Address f39712a;

    private final ConnectionPool f39713b;

    private l f39714c;

    private hf.a f39715d;

    private boolean f39716e;

    private boolean f39717f;

    private HttpStream f39718g;

    public n(ConnectionPool connectionPool, Address address) {
        this.f39713b = connectionPool;
        this.f39712a = address;
    }

    private void e(IOException iOException) {
        synchronized (this.f39713b) {
            try {
                if (this.f39714c != null) {
                    hf.a aVar = this.f39715d;
                    if (aVar.f61343g == 0) {
                        this.f39714c.a(aVar.getRoute(), iOException);
                    } else {
                        this.f39714c = null;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        d();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x004e  */
    private void f(boolean z10, boolean z11, boolean z12) {
        hf.a aVar;
        hf.a aVar2;
        synchronized (this.f39713b) {
            aVar = null;
            if (z12) {
                try {
                    this.f39718g = null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (z11) {
                this.f39716e = true;
            }
            hf.a aVar3 = this.f39715d;
            if (aVar3 != null) {
                if (z10) {
                    aVar3.f61347k = true;
                }
                if (this.f39718g == null && (this.f39716e || aVar3.f61347k)) {
                    p(aVar3);
                    hf.a aVar4 = this.f39715d;
                    if (aVar4.f61343g > 0) {
                        this.f39714c = null;
                    }
                    if (aVar4.f61346j.isEmpty()) {
                        this.f39715d.f61348l = System.nanoTime();
                        if (com.squareup.okhttp.internal.c.instance.connectionBecameIdle(this.f39713b, this.f39715d)) {
                            aVar2 = this.f39715d;
                        } else {
                            aVar2 = null;
                        }
                    } else {
                        aVar2 = null;
                    }
                    this.f39715d = null;
                    aVar = aVar2;
                }
            }
        }
        if (aVar != null) {
            com.squareup.okhttp.internal.g.d(aVar.getSocket());
        }
    }

    private hf.a g(int i10, int i11, int i12, boolean z10) {
        synchronized (this.f39713b) {
            try {
                if (this.f39716e) {
                    throw new IllegalStateException("released");
                }
                if (this.f39718g != null) {
                    throw new IllegalStateException("stream != null");
                }
                if (this.f39717f) {
                    throw new IOException("Canceled");
                }
                hf.a aVar = this.f39715d;
                if (aVar != null && !aVar.f61347k) {
                    return aVar;
                }
                hf.a aVar2 = com.squareup.okhttp.internal.c.instance.get(this.f39713b, this.f39712a, this);
                if (aVar2 != null) {
                    this.f39715d = aVar2;
                    return aVar2;
                }
                if (this.f39714c == null) {
                    this.f39714c = new l(this.f39712a, q());
                }
                hf.a aVar3 = new hf.a(this.f39714c.g());
                a(aVar3);
                synchronized (this.f39713b) {
                    com.squareup.okhttp.internal.c.instance.put(this.f39713b, aVar3);
                    this.f39715d = aVar3;
                    if (this.f39717f) {
                        throw new IOException("Canceled");
                    }
                }
                aVar3.c(i10, i11, i12, this.f39712a.getConnectionSpecs(), z10);
                q().a(aVar3.getRoute());
                return aVar3;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private hf.a h(int i10, int i11, int i12, boolean z10, boolean z11) {
        while (true) {
            hf.a aVarG = g(i10, i11, i12, z10);
            synchronized (this.f39713b) {
                try {
                    if (aVarG.f61343g == 0) {
                        return aVarG;
                    }
                    if (aVarG.h(z11)) {
                        return aVarG;
                    }
                    d();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private boolean i(RouteException routeException) {
        IOException lastConnectException = routeException.getLastConnectException();
        if (lastConnectException instanceof ProtocolException) {
            return false;
        }
        if (lastConnectException instanceof InterruptedIOException) {
            return lastConnectException instanceof SocketTimeoutException;
        }
        return (((lastConnectException instanceof SSLHandshakeException) && (lastConnectException.getCause() instanceof CertificateException)) || (lastConnectException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private boolean j(IOException iOException) {
        return ((iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) ? false : true;
    }

    private void p(hf.a aVar) {
        int size = aVar.f61346j.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((Reference) aVar.f61346j.get(i10)).get() == this) {
                aVar.f61346j.remove(i10);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private com.squareup.okhttp.internal.f q() {
        return com.squareup.okhttp.internal.c.instance.routeDatabase(this.f39713b);
    }

    public void a(hf.a aVar) {
        aVar.f61346j.add(new WeakReference(this));
    }

    public void b() {
        HttpStream httpStream;
        hf.a aVar;
        synchronized (this.f39713b) {
            this.f39717f = true;
            httpStream = this.f39718g;
            aVar = this.f39715d;
        }
        if (httpStream != null) {
            httpStream.cancel();
        } else if (aVar != null) {
            aVar.b();
        }
    }

    public synchronized hf.a c() {
        return this.f39715d;
    }

    public void d() {
        f(true, false, true);
    }

    public HttpStream k(int i10, int i11, int i12, boolean z10, boolean z11) throws RouteException {
        HttpStream dVar;
        try {
            hf.a aVarH = h(i10, i11, i12, z10, z11);
            if (aVarH.f61342f != null) {
                dVar = new e(this, aVarH.f61342f);
            } else {
                aVarH.getSocket().setSoTimeout(i11);
                Timeout timeout = aVarH.f61344h.getTimeout();
                long j10 = i11;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                timeout.timeout(j10, timeUnit);
                aVarH.f61345i.getTimeout().timeout(i12, timeUnit);
                dVar = new d(this, aVarH.f61344h, aVarH.f61345i);
            }
            synchronized (this.f39713b) {
                aVarH.f61343g++;
                this.f39718g = dVar;
            }
            return dVar;
        } catch (IOException e10) {
            throw new RouteException(e10);
        }
    }

    public void l() {
        f(true, false, false);
    }

    public boolean m(RouteException routeException) {
        if (this.f39715d != null) {
            e(routeException.getLastConnectException());
        }
        l lVar = this.f39714c;
        return (lVar == null || lVar.c()) && i(routeException);
    }

    public boolean n(IOException iOException, Sink sink) {
        hf.a aVar = this.f39715d;
        if (aVar != null) {
            int i10 = aVar.f61343g;
            e(iOException);
            if (i10 == 1) {
                return false;
            }
        }
        boolean z10 = sink == null || (sink instanceof k);
        l lVar = this.f39714c;
        return (lVar == null || lVar.c()) && j(iOException) && z10;
    }

    public void o() {
        f(false, true, false);
    }

    public void r(HttpStream httpStream) {
        synchronized (this.f39713b) {
            if (httpStream != null) {
                if (httpStream == this.f39718g) {
                }
            }
            throw new IllegalStateException("expected " + this.f39718g + " but was " + httpStream);
        }
        f(false, false, true);
    }

    public String toString() {
        return this.f39712a.toString();
    }
}
