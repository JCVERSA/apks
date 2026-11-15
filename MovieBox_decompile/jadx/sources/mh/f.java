package mh;

import android.os.SystemClock;
import androidx.core.view.PointerIconCompat;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.TlsVersion;

public final class f extends EventListener implements i {

    private final EventListener f66437a;

    private final int f66438b;

    private final boolean f66439c;

    private final String f66440d;

    private final boolean f66441e;

    private final boolean f66442f;

    private long f66443g;

    private long f66444h;

    private long f66445i;

    private long f66446j;

    private long f66447k;

    private long f66448l;

    private long f66449m;

    private long f66450n;

    private final e f66451o;

    private boolean f66452p;

    private long f66453q;

    private int f66454r;

    private int f66455s;

    private String f66456t;

    private final int f66457u;

    public f(EventListener eventListener, int i10, boolean z10, String str, boolean z11, String str2, boolean z12, boolean z13) {
        this.f66437a = eventListener;
        this.f66438b = i10;
        this.f66439c = z10;
        this.f66440d = str2;
        this.f66441e = z12;
        this.f66442f = z13;
        this.f66451o = e.J.a(i10, str);
        this.f66452p = z10 || z11;
        this.f66454r = 480;
        this.f66455s = 480;
        this.f66456t = "Unknown";
        this.f66457u = RangesKt.p(new IntRange(1, 10), Random.INSTANCE);
    }

    private final boolean b() {
        k kVar = k.f66467a;
        return kVar.f() || SystemClock.uptimeMillis() - kVar.b() > 3000;
    }

    @Override
    public void a(Request request, int i10) {
        Intrinsics.h(request, "request");
        c.c("[onDowngrade]");
        if (!this.f66439c) {
            this.f66452p = false;
        }
        this.f66451o.d0(i10);
    }

    @Override
    public void callEnd(Call call) {
        Intrinsics.h(call, "call");
        super.callEnd(call);
        c.c("[callEnd]");
        e eVar = this.f66451o;
        eVar.I(1);
        eVar.c0(c.e(this.f66443g));
        eVar.S(this.f66454r);
        if (eVar.m() != 304 && !this.f66452p) {
            c.g(eVar);
        }
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.callEnd(call);
        }
    }

    @Override
    public void callFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.callFailed(call, ioe);
        c.b("[callFailed]  " + ioe.getClass().getSimpleName() + " : " + ioe.getMessage());
        this.f66451o.I(2);
        if (b()) {
            k kVar = k.f66467a;
            if (!kVar.g()) {
                this.f66455s = PointerIconCompat.TYPE_GRAB;
                this.f66456t = "Network disconnect";
            } else if (kVar.e()) {
                this.f66455s = PointerIconCompat.TYPE_GRABBING;
                this.f66456t = "Fake Network";
            } else {
                this.f66455s = a.f66405a.a(this.f66454r, ioe);
            }
        } else {
            this.f66455s = a.f66405a.a(this.f66454r, ioe);
        }
        this.f66451o.S(this.f66455s);
        this.f66451o.T(Intrinsics.c(this.f66456t, "Unknown") ? c.f(ioe) : this.f66456t);
        if (!this.f66452p) {
            if ((this.f66442f && this.f66455s == 1020) ? false : (this.f66441e && this.f66455s == 1050) ? false : true) {
                c.g(this.f66451o);
            }
        }
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.callFailed(call, ioe);
        }
    }

    @Override
    public void callStart(Call call) {
        Intrinsics.h(call, "call");
        super.callStart(call);
        c.c("[callStart]");
        try {
            String str = call.request().headers().get("isDownload");
            if (str != null) {
                this.f66451o.l0((Intrinsics.c(str, "true") || Intrinsics.c(str, "T")) ? 1 : 0);
            }
            String str2 = call.request().headers().get("offlineAd");
            if (str2 != null) {
                this.f66451o.X(Integer.parseInt(str2));
            }
            String strHost = call.request().url().host();
            String strEncodedPath = call.request().url().encodedPath();
            e eVar = this.f66451o;
            String str3 = "";
            if (strEncodedPath == null) {
                strEncodedPath = "";
            }
            eVar.Y(strEncodedPath);
            e eVar2 = this.f66451o;
            if (strHost == null) {
                strHost = "";
            }
            eVar2.U(strHost);
            String url = call.request().url().getUrl();
            Intrinsics.g(url, "call.request().url().toString()");
            this.f66451o.P(this.f66457u <= 2 ? url : "");
            e eVar3 = this.f66451o;
            if (this.f66438b == 0 && StringsKt.c0(url, UrlUtils.QUESTION_MARK, false, 2, null)) {
                url = url.substring(0, StringsKt.o0(url, UrlUtils.QUESTION_MARK, 0, false, 6, null));
                Intrinsics.g(url, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            eVar3.g0(url);
            String str4 = call.request().headers().get("infoeyes-tag");
            e eVar4 = this.f66451o;
            if (str4 != null || (str4 = this.f66440d) != null) {
                str3 = str4;
            }
            eVar4.O(str3);
        } catch (Exception e10) {
            c.b("[get header exception] " + e10.getClass().getSimpleName() + " : " + e10.getMessage());
        }
        this.f66443g = c.d();
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.callStart(call);
        }
    }

    @Override
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        String strName;
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        super.connectEnd(call, inetSocketAddress, proxy, protocol);
        c.c("[connectEnd] inetSocketAddress " + inetSocketAddress);
        this.f66451o.j0(c.e(this.f66446j));
        e eVar = this.f66451o;
        if (protocol == null || (strName = protocol.name()) == null) {
            strName = "";
        }
        eVar.Z(strName);
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.connectEnd(call, inetSocketAddress, proxy, protocol);
        }
    }

    @Override
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        String strName;
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        Intrinsics.h(ioe, "ioe");
        super.connectFailed(call, inetSocketAddress, proxy, protocol, ioe);
        c.b("[connectFailed] " + ioe.getClass().getSimpleName() + " : " + ioe.getMessage());
        e eVar = this.f66451o;
        if (protocol == null || (strName = protocol.name()) == null) {
            strName = "";
        }
        eVar.Z(strName);
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.connectFailed(call, inetSocketAddress, proxy, protocol, ioe);
        }
    }

    @Override
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        Intrinsics.h(call, "call");
        Intrinsics.h(inetSocketAddress, "inetSocketAddress");
        Intrinsics.h(proxy, "proxy");
        super.connectStart(call, inetSocketAddress, proxy);
        this.f66446j = c.d();
        e eVar = this.f66451o;
        String hostAddress = inetSocketAddress.getAddress().getHostAddress();
        if (hostAddress == null) {
            hostAddress = "";
        }
        eVar.W(hostAddress);
        c.c("[connectStart] inetSocketAddress : " + inetSocketAddress + ", proxy : " + proxy);
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.connectStart(call, inetSocketAddress, proxy);
        }
    }

    @Override
    public void connectionAcquired(Call call, Connection connection) {
        String strName;
        TlsVersion tlsVersion;
        Intrinsics.h(call, "call");
        Intrinsics.h(connection, "connection");
        super.connectionAcquired(call, connection);
        c.c("[connectionAcquired] connection: " + connection);
        e eVar = this.f66451o;
        Handshake handshake = connection.getHandshake();
        if (handshake == null || (tlsVersion = handshake.tlsVersion()) == null || (strName = tlsVersion.name()) == null) {
            strName = "";
        }
        eVar.k0(strName);
        this.f66451o.Z(connection.protocol().name());
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.connectionAcquired(call, connection);
        }
    }

    @Override
    public void connectionReleased(Call call, Connection connection) {
        Intrinsics.h(call, "call");
        Intrinsics.h(connection, "connection");
        super.connectionReleased(call, connection);
        c.c("[connectionReleased]");
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.connectionReleased(call, connection);
        }
    }

    @Override
    public void dnsEnd(Call call, String domainName, List inetAddressList) {
        Intrinsics.h(call, "call");
        Intrinsics.h(domainName, "domainName");
        Intrinsics.h(inetAddressList, "inetAddressList");
        super.dnsEnd(call, domainName, inetAddressList);
        c.c("[dnsEnd] inetAddressList " + CollectionsKt.s0(inetAddressList, ",", "[", "]", 0, null, null, 56, null));
        this.f66451o.R(c.e(this.f66444h));
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.dnsEnd(call, domainName, inetAddressList);
        }
    }

    @Override
    public void dnsStart(Call call, String domainName) {
        Intrinsics.h(call, "call");
        Intrinsics.h(domainName, "domainName");
        super.dnsStart(call, domainName);
        c.c("[dnsStart] domainName: " + domainName);
        this.f66444h = c.d();
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.dnsStart(call, domainName);
        }
    }

    @Override
    public void requestBodyEnd(Call call, long j10) {
        Intrinsics.h(call, "call");
        super.requestBodyEnd(call, j10);
        c.c("[requestBodyEnd] byteCount: " + j10);
        this.f66449m = c.d();
        e eVar = this.f66451o;
        eVar.b0(j10);
        eVar.f0(this.f66449m - this.f66447k);
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.requestBodyEnd(call, j10);
        }
    }

    @Override
    public void requestBodyStart(Call call) {
        Intrinsics.h(call, "call");
        super.requestBodyStart(call);
        c.c("[requestBodyStart]");
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.requestBodyStart(call);
        }
    }

    @Override
    public void requestFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.requestFailed(call, ioe);
        c.b("[requestFailed] " + ioe.getClass().getSimpleName() + " : " + ioe.getMessage());
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.requestFailed(call, ioe);
        }
    }

    @Override
    public void requestHeadersEnd(Call call, Request request) {
        Intrinsics.h(call, "call");
        Intrinsics.h(request, "request");
        super.requestHeadersEnd(call, request);
        c.c("[requestHeadersEnd] request :" + request);
        long jD = c.d();
        this.f66448l = jD;
        this.f66451o.f0(jD - this.f66447k);
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.requestHeadersEnd(call, request);
        }
    }

    @Override
    public void requestHeadersStart(Call call) {
        Intrinsics.h(call, "call");
        super.requestHeadersStart(call);
        c.c("[requestHeadersStart]");
        this.f66447k = c.d();
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.requestHeadersStart(call);
        }
    }

    @Override
    public void responseBodyEnd(Call call, long j10) {
        Intrinsics.h(call, "call");
        super.responseBodyEnd(call, j10);
        c.c("[responseBodyEnd] byteCount: " + j10);
        e eVar = this.f66451o;
        eVar.e0(j10);
        eVar.a0(c.e(this.f66450n));
        eVar.J(c.e(this.f66453q));
        eVar.M(String.valueOf((j10 / 1024.0f) / (eVar.c() / 1000.0f)));
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.responseBodyEnd(call, j10);
        }
    }

    @Override
    public void responseBodyStart(Call call) {
        Intrinsics.h(call, "call");
        super.responseBodyStart(call);
        c.c("[responseBodyStart]");
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.responseBodyStart(call);
        }
    }

    @Override
    public void responseFailed(Call call, IOException ioe) {
        Intrinsics.h(call, "call");
        Intrinsics.h(ioe, "ioe");
        super.responseFailed(call, ioe);
        c.b("[responseFailed] " + ioe.getClass().getSimpleName() + " : " + ioe.getMessage());
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.responseFailed(call, ioe);
        }
    }

    @Override
    public void responseHeadersEnd(Call call, Response response) {
        Intrinsics.h(call, "call");
        Intrinsics.h(response, "response");
        super.responseHeadersEnd(call, response);
        c.c("[responseHeadersEnd] code : " + response.code());
        String str = response.headers().get("x-response-cdn");
        if (str == null) {
            str = "";
        }
        String str2 = response.headers().get("server-time");
        if (str2 == null) {
            str2 = "0";
        }
        long j10 = Long.parseLong(str2);
        c.c(str);
        this.f66451o.K(str);
        this.f66453q = c.d();
        this.f66451o.a0(c.e(this.f66450n));
        this.f66451o.L(c.e(this.f66443g));
        this.f66451o.h0(j10);
        this.f66454r = response.code();
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.responseHeadersEnd(call, response);
        }
    }

    @Override
    public void responseHeadersStart(Call call) {
        Intrinsics.h(call, "call");
        super.responseHeadersStart(call);
        c.c("[responseHeadersStart]");
        long jD = c.d();
        this.f66450n = jD;
        this.f66451o.m0(jD - Math.max(this.f66449m, this.f66448l));
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.responseHeadersStart(call);
        }
    }

    @Override
    public void secureConnectEnd(Call call, Handshake handshake) {
        String strName;
        TlsVersion tlsVersion;
        Intrinsics.h(call, "call");
        super.secureConnectEnd(call, handshake);
        c.c("[secureConnectEnd]");
        e eVar = this.f66451o;
        if (handshake == null || (tlsVersion = handshake.tlsVersion()) == null || (strName = tlsVersion.name()) == null) {
            strName = "";
        }
        eVar.k0(strName);
        this.f66451o.i0(c.e(this.f66445i));
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.secureConnectEnd(call, handshake);
        }
    }

    @Override
    public void secureConnectStart(Call call) {
        Intrinsics.h(call, "call");
        super.secureConnectStart(call);
        c.c("[secureConnectStart]");
        this.f66445i = c.d();
        EventListener eventListener = this.f66437a;
        if (eventListener != null) {
            eventListener.secureConnectStart(call);
        }
    }
}
