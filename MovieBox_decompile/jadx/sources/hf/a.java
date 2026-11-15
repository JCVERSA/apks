package hf;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionSpec;
import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.e;
import com.squareup.okhttp.internal.framed.FramedConnection;
import com.squareup.okhttp.internal.g;
import com.squareup.okhttp.internal.h;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.internal.http.d;
import java.io.IOException;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
import p008if.b;

public final class a implements Connection {

    private final Route f61337a;

    private Socket f61338b;

    public Socket f61339c;

    private Handshake f61340d;

    private Protocol f61341e;

    public volatile FramedConnection f61342f;

    public int f61343g;

    public BufferedSource f61344h;

    public BufferedSink f61345i;

    public boolean f61347k;

    public final List f61346j = new ArrayList();

    public long f61348l = Long.MAX_VALUE;

    public a(Route route) {
        this.f61337a = route;
    }

    private void d(int i10, int i11, int i12, com.squareup.okhttp.internal.a aVar) throws Throwable {
        this.f61338b.setSoTimeout(i11);
        try {
            e.f().d(this.f61338b, this.f61337a.getSocketAddress(), i10);
            this.f61344h = Okio.buffer(Okio.source(this.f61338b));
            this.f61345i = Okio.buffer(Okio.sink(this.f61338b));
            if (this.f61337a.getAddress().getSslSocketFactory() != null) {
                e(i11, i12, aVar);
            } else {
                this.f61341e = Protocol.HTTP_1_1;
                this.f61339c = this.f61338b;
            }
            Protocol protocol = this.f61341e;
            if (protocol == Protocol.SPDY_3 || protocol == Protocol.HTTP_2) {
                this.f61339c.setSoTimeout(0);
                FramedConnection framedConnectionI = new FramedConnection.a(true).k(this.f61339c, this.f61337a.getAddress().url().host(), this.f61344h, this.f61345i).j(this.f61341e).i();
                framedConnectionI.u0();
                this.f61342f = framedConnectionI;
            }
        } catch (ConnectException unused) {
            throw new ConnectException("Failed to connect to " + this.f61337a.getSocketAddress());
        }
    }

    private void e(int i10, int i11, com.squareup.okhttp.internal.a aVar) throws Throwable {
        if (this.f61337a.requiresTunnel()) {
            f(i10, i11);
        }
        Address address = this.f61337a.getAddress();
        SSLSocket sSLSocket = null;
        try {
            try {
                SSLSocket sSLSocket2 = (SSLSocket) address.getSslSocketFactory().createSocket(this.f61338b, address.getUriHost(), address.getUriPort(), true);
                try {
                    ConnectionSpec connectionSpecA = aVar.a(sSLSocket2);
                    if (connectionSpecA.supportsTlsExtensions()) {
                        e.f().c(sSLSocket2, address.getUriHost(), address.getProtocols());
                    }
                    sSLSocket2.startHandshake();
                    Handshake handshake = Handshake.get(sSLSocket2.getSession());
                    if (address.getHostnameVerifier().verify(address.getUriHost(), sSLSocket2.getSession())) {
                        address.getCertificatePinner().check(address.getUriHost(), handshake.peerCertificates());
                        String strH = connectionSpecA.supportsTlsExtensions() ? e.f().h(sSLSocket2) : null;
                        this.f61339c = sSLSocket2;
                        this.f61344h = Okio.buffer(Okio.source(sSLSocket2));
                        this.f61345i = Okio.buffer(Okio.sink(this.f61339c));
                        this.f61340d = handshake;
                        this.f61341e = strH != null ? Protocol.get(strH) : Protocol.HTTP_1_1;
                        e.f().a(sSLSocket2);
                        return;
                    }
                    X509Certificate x509Certificate = (X509Certificate) handshake.peerCertificates().get(0);
                    throw new SSLPeerUnverifiedException("Hostname " + address.getUriHost() + " not verified:\n    certificate: " + CertificatePinner.pin(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + b.a(x509Certificate));
                } catch (AssertionError e10) {
                    e = e10;
                    if (!g.o(e)) {
                        throw e;
                    }
                    throw new IOException(e);
                } catch (Throwable th2) {
                    th = th2;
                    sSLSocket = sSLSocket2;
                    if (sSLSocket != null) {
                        e.f().a(sSLSocket);
                    }
                    g.d(sSLSocket);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (AssertionError e11) {
            e = e11;
        }
    }

    private void f(int i10, int i11) throws IOException {
        Request requestG = g();
        HttpUrl httpUrl = requestG.httpUrl();
        String str = "CONNECT " + httpUrl.host() + ":" + httpUrl.port() + " HTTP/1.1";
        do {
            d dVar = new d(null, this.f61344h, this.f61345i);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f61344h.getTimeout().timeout(i10, timeUnit);
            this.f61345i.getTimeout().timeout(i11, timeUnit);
            dVar.p(requestG.headers(), str);
            dVar.finishRequest();
            Response responseBuild = dVar.o().request(requestG).build();
            long jE = OkHeaders.e(responseBuild);
            if (jE == -1) {
                jE = 0;
            }
            Source sourceL = dVar.l(jE);
            g.r(sourceL, Integer.MAX_VALUE, timeUnit);
            sourceL.close();
            int iCode = responseBuild.code();
            if (iCode == 200) {
                if (!this.f61344h.getBufferField().exhausted() || !this.f61345i.getBufferField().exhausted()) {
                    throw new IOException("TLS tunnel buffered too many bytes!");
                }
                return;
            } else {
                if (iCode != 407) {
                    throw new IOException("Unexpected response code for CONNECT: " + responseBuild.code());
                }
                requestG = OkHeaders.j(this.f61337a.getAddress().getAuthenticator(), responseBuild, this.f61337a.getProxy());
            }
        } while (requestG != null);
        throw new IOException("Failed to authenticate with proxy");
    }

    private Request g() {
        return new Request.Builder().url(this.f61337a.getAddress().url()).header(HttpHeaders.HOST, g.i(this.f61337a.getAddress().url())).header("Proxy-Connection", "Keep-Alive").header("User-Agent", h.a()).build();
    }

    public int a() {
        FramedConnection framedConnection = this.f61342f;
        if (framedConnection != null) {
            return framedConnection.f0();
        }
        return 1;
    }

    public void b() {
        g.d(this.f61338b);
    }

    public void c(int i10, int i11, int i12, List list, boolean z10) {
        if (this.f61341e != null) {
            throw new IllegalStateException("already connected");
        }
        com.squareup.okhttp.internal.a aVar = new com.squareup.okhttp.internal.a(list);
        Proxy proxy = this.f61337a.getProxy();
        Address address = this.f61337a.getAddress();
        if (this.f61337a.getAddress().getSslSocketFactory() == null && !list.contains(ConnectionSpec.CLEARTEXT)) {
            throw new RouteException(new UnknownServiceException("CLEARTEXT communication not supported: " + list));
        }
        RouteException routeException = null;
        while (this.f61341e == null) {
            try {
                this.f61338b = (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) ? address.getSocketFactory().createSocket() : new Socket(proxy);
                d(i10, i11, i12, aVar);
            } catch (IOException e10) {
                g.d(this.f61339c);
                g.d(this.f61338b);
                this.f61339c = null;
                this.f61338b = null;
                this.f61344h = null;
                this.f61345i = null;
                this.f61340d = null;
                this.f61341e = null;
                if (routeException == null) {
                    routeException = new RouteException(e10);
                } else {
                    routeException.addConnectException(e10);
                }
                if (!z10) {
                    throw routeException;
                }
                if (!aVar.b(e10)) {
                    throw routeException;
                }
            }
        }
    }

    @Override
    public Handshake getHandshake() {
        return this.f61340d;
    }

    @Override
    public Protocol getProtocol() {
        Protocol protocol = this.f61341e;
        return protocol != null ? protocol : Protocol.HTTP_1_1;
    }

    @Override
    public Route getRoute() {
        return this.f61337a;
    }

    @Override
    public Socket getSocket() {
        return this.f61339c;
    }

    public boolean h(boolean z10) {
        if (this.f61339c.isClosed() || this.f61339c.isInputShutdown() || this.f61339c.isOutputShutdown()) {
            return false;
        }
        if (this.f61342f == null && z10) {
            try {
                int soTimeout = this.f61339c.getSoTimeout();
                try {
                    this.f61339c.setSoTimeout(1);
                    if (this.f61344h.exhausted()) {
                        this.f61339c.setSoTimeout(soTimeout);
                        return false;
                    }
                    this.f61339c.setSoTimeout(soTimeout);
                    return true;
                } catch (Throwable th2) {
                    this.f61339c.setSoTimeout(soTimeout);
                    throw th2;
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    public boolean i() {
        return this.f61342f != null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connection{");
        sb2.append(this.f61337a.getAddress().url().host());
        sb2.append(":");
        sb2.append(this.f61337a.getAddress().url().port());
        sb2.append(", proxy=");
        sb2.append(this.f61337a.getProxy());
        sb2.append(" hostAddress=");
        sb2.append(this.f61337a.getSocketAddress());
        sb2.append(" cipherSuite=");
        Handshake handshake = this.f61340d;
        sb2.append(handshake != null ? handshake.cipherSuite() : "none");
        sb2.append(" protocol=");
        sb2.append(this.f61341e);
        sb2.append('}');
        return sb2.toString();
    }
}
