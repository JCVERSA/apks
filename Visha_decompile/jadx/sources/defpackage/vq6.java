package defpackage;

import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import com.lzy.okgo.model.Progress;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.random.Random;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.TlsVersion;
import org.apache.commons.lang3.BooleanUtils;

public final class vq6 extends EventListener implements jz6 {
    public final EventListener a;
    public final int b;
    public final boolean c;
    public final String d;
    public final boolean e;
    public final boolean f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;
    public long m;
    public long n;
    public final uq6 o;
    public boolean p;
    public long q;
    public int r;
    public int s;
    public String t;
    public final int u;

    public vq6(EventListener eventListener, int i, boolean z, String str, boolean z2, String str2, boolean z3, boolean z4) {
        this.a = eventListener;
        this.b = i;
        this.c = z;
        this.d = str2;
        this.e = z3;
        this.f = z4;
        this.o = uq6.J.a(i, str);
        this.p = z || z2;
        this.r = 480;
        this.s = 480;
        this.t = "Unknown";
        this.u = wn8.n(new u15(1, 10), Random.Default);
    }

    @Override
    public void a(Request request, int i) {
        y45.j(request, Progress.REQUEST);
        dk3.c("[onDowngrade]");
        if (!this.c) {
            this.p = false;
        }
        this.o.d0(i);
    }

    public final boolean b() {
        uz6 uz6Var = uz6.a;
        return uz6Var.f() || SystemClock.uptimeMillis() - uz6Var.b() > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
    }

    @Override
    public void callEnd(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        super.callEnd(call);
        dk3.c("[callEnd]");
        uq6 uq6Var = this.o;
        uq6Var.I(1);
        uq6Var.c0(dk3.e(this.g));
        uq6Var.S(this.r);
        if (uq6Var.m() != 304 && !this.p) {
            dk3.g(uq6Var);
        }
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.callEnd(call);
        }
    }

    @Override
    public void callFailed(Call call, IOException iOException) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(iOException, "ioe");
        super.callFailed(call, iOException);
        dk3.b("[callFailed]  " + iOException.getClass().getSimpleName() + " : " + iOException.getMessage());
        this.o.I(2);
        if (b()) {
            uz6 uz6Var = uz6.a;
            if (!uz6Var.g()) {
                this.s = 1020;
                this.t = "Network disconnect";
            } else if (uz6Var.e()) {
                this.s = 1021;
                this.t = "Fake Network";
            } else {
                this.s = z41.a.a(this.r, iOException);
            }
        } else {
            this.s = z41.a.a(this.r, iOException);
        }
        this.o.S(this.s);
        this.o.T(y45.e(this.t, "Unknown") ? dk3.f(iOException) : this.t);
        if (!this.p) {
            if ((this.f && this.s == 1020) ? false : (this.e && this.s == 1050) ? false : true) {
                dk3.g(this.o);
            }
        }
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.callFailed(call, iOException);
        }
    }

    @Override
    public void callStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        super.callStart(call);
        dk3.c("[callStart]");
        try {
            String str = call.request().headers().get("isDownload");
            if (str != null) {
                this.o.l0((y45.e(str, BooleanUtils.TRUE) || y45.e(str, "T")) ? 1 : 0);
            }
            String str2 = call.request().headers().get("offlineAd");
            if (str2 != null) {
                this.o.X(Integer.parseInt(str2));
            }
            String strHost = call.request().url().host();
            String strEncodedPath = call.request().url().encodedPath();
            uq6 uq6Var = this.o;
            String str3 = "";
            if (strEncodedPath == null) {
                strEncodedPath = "";
            }
            uq6Var.Y(strEncodedPath);
            uq6 uq6Var2 = this.o;
            if (strHost == null) {
                strHost = "";
            }
            uq6Var2.U(strHost);
            String url = call.request().url().getUrl();
            y45.i(url, "call.request().url().toString()");
            this.o.P(this.u <= 2 ? url : "");
            uq6 uq6Var3 = this.o;
            if (this.b == 0 && j1a.X(url, "?", false, 2, null)) {
                url = url.substring(0, j1a.m0(url, "?", 0, false, 6, null));
                y45.i(url, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            uq6Var3.g0(url);
            String str4 = call.request().headers().get("infoeyes-tag");
            uq6 uq6Var4 = this.o;
            if (str4 != null || (str4 = this.d) != null) {
                str3 = str4;
            }
            uq6Var4.O(str3);
        } catch (Exception e) {
            dk3.b("[get header exception] " + e.getClass().getSimpleName() + " : " + e.getMessage());
        }
        this.g = dk3.d();
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.callStart(call);
        }
    }

    @Override
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        String strName;
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(inetSocketAddress, "inetSocketAddress");
        y45.j(proxy, "proxy");
        super.connectEnd(call, inetSocketAddress, proxy, protocol);
        dk3.c("[connectEnd] inetSocketAddress " + inetSocketAddress);
        this.o.j0(dk3.e(this.j));
        uq6 uq6Var = this.o;
        if (protocol == null || (strName = protocol.name()) == null) {
            strName = "";
        }
        uq6Var.Z(strName);
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.connectEnd(call, inetSocketAddress, proxy, protocol);
        }
    }

    @Override
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
        String strName;
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(inetSocketAddress, "inetSocketAddress");
        y45.j(proxy, "proxy");
        y45.j(iOException, "ioe");
        super.connectFailed(call, inetSocketAddress, proxy, protocol, iOException);
        dk3.b("[connectFailed] " + iOException.getClass().getSimpleName() + " : " + iOException.getMessage());
        uq6 uq6Var = this.o;
        if (protocol == null || (strName = protocol.name()) == null) {
            strName = "";
        }
        uq6Var.Z(strName);
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.connectFailed(call, inetSocketAddress, proxy, protocol, iOException);
        }
    }

    @Override
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(inetSocketAddress, "inetSocketAddress");
        y45.j(proxy, "proxy");
        super.connectStart(call, inetSocketAddress, proxy);
        this.j = dk3.d();
        uq6 uq6Var = this.o;
        String hostAddress = inetSocketAddress.getAddress().getHostAddress();
        if (hostAddress == null) {
            hostAddress = "";
        }
        uq6Var.W(hostAddress);
        dk3.c("[connectStart] inetSocketAddress : " + inetSocketAddress + ", proxy : " + proxy);
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.connectStart(call, inetSocketAddress, proxy);
        }
    }

    @Override
    public void connectionAcquired(Call call, Connection connection) {
        String strName;
        TlsVersion tlsVersion;
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(connection, "connection");
        super.connectionAcquired(call, connection);
        dk3.c("[connectionAcquired] connection: " + connection);
        uq6 uq6Var = this.o;
        Handshake handshake = connection.getHandshake();
        if (handshake == null || (tlsVersion = handshake.tlsVersion()) == null || (strName = tlsVersion.name()) == null) {
            strName = "";
        }
        uq6Var.k0(strName);
        this.o.Z(connection.protocol().name());
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.connectionAcquired(call, connection);
        }
    }

    @Override
    public void connectionReleased(Call call, Connection connection) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(connection, "connection");
        super.connectionReleased(call, connection);
        dk3.c("[connectionReleased]");
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.connectionReleased(call, connection);
        }
    }

    @Override
    public void dnsEnd(Call call, String str, List list) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(str, "domainName");
        y45.j(list, "inetAddressList");
        super.dnsEnd(call, str, list);
        dk3.c("[dnsEnd] inetAddressList " + i81.y0(list, StringUtils.COMMA, "[", "]", 0, null, null, 56, null));
        this.o.R(dk3.e(this.h));
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.dnsEnd(call, str, list);
        }
    }

    @Override
    public void dnsStart(Call call, String str) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(str, "domainName");
        super.dnsStart(call, str);
        dk3.c("[dnsStart] domainName: " + str);
        this.h = dk3.d();
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.dnsStart(call, str);
        }
    }

    @Override
    public void requestBodyEnd(Call call, long j) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        super.requestBodyEnd(call, j);
        dk3.c("[requestBodyEnd] byteCount: " + j);
        this.m = dk3.d();
        uq6 uq6Var = this.o;
        uq6Var.b0(j);
        uq6Var.f0(this.m - this.k);
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.requestBodyEnd(call, j);
        }
    }

    @Override
    public void requestBodyStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        super.requestBodyStart(call);
        dk3.c("[requestBodyStart]");
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.requestBodyStart(call);
        }
    }

    @Override
    public void requestFailed(Call call, IOException iOException) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(iOException, "ioe");
        super.requestFailed(call, iOException);
        dk3.b("[requestFailed] " + iOException.getClass().getSimpleName() + " : " + iOException.getMessage());
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.requestFailed(call, iOException);
        }
    }

    @Override
    public void requestHeadersEnd(Call call, Request request) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(request, Progress.REQUEST);
        super.requestHeadersEnd(call, request);
        dk3.c("[requestHeadersEnd] request :" + request);
        long jD = dk3.d();
        this.l = jD;
        this.o.f0(jD - this.k);
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.requestHeadersEnd(call, request);
        }
    }

    @Override
    public void requestHeadersStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        super.requestHeadersStart(call);
        dk3.c("[requestHeadersStart]");
        this.k = dk3.d();
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.requestHeadersStart(call);
        }
    }

    @Override
    public void responseBodyEnd(Call call, long j) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        super.responseBodyEnd(call, j);
        dk3.c("[responseBodyEnd] byteCount: " + j);
        uq6 uq6Var = this.o;
        uq6Var.e0(j);
        uq6Var.a0(dk3.e(this.n));
        uq6Var.J(dk3.e(this.q));
        uq6Var.M(String.valueOf((j / 1024.0f) / (uq6Var.c() / 1000.0f)));
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.responseBodyEnd(call, j);
        }
    }

    @Override
    public void responseBodyStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        super.responseBodyStart(call);
        dk3.c("[responseBodyStart]");
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.responseBodyStart(call);
        }
    }

    @Override
    public void responseFailed(Call call, IOException iOException) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(iOException, "ioe");
        super.responseFailed(call, iOException);
        dk3.b("[responseFailed] " + iOException.getClass().getSimpleName() + " : " + iOException.getMessage());
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.responseFailed(call, iOException);
        }
    }

    @Override
    public void responseHeadersEnd(Call call, Response response) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(response, "response");
        super.responseHeadersEnd(call, response);
        dk3.c("[responseHeadersEnd] code : " + response.code());
        String str = response.headers().get("x-response-cdn");
        if (str == null) {
            str = "";
        }
        String str2 = response.headers().get("server-time");
        if (str2 == null) {
            str2 = "0";
        }
        long j = Long.parseLong(str2);
        dk3.c(str);
        this.o.K(str);
        this.q = dk3.d();
        this.o.a0(dk3.e(this.n));
        this.o.L(dk3.e(this.g));
        this.o.h0(j);
        this.r = response.code();
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.responseHeadersEnd(call, response);
        }
    }

    @Override
    public void responseHeadersStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        super.responseHeadersStart(call);
        dk3.c("[responseHeadersStart]");
        long jD = dk3.d();
        this.n = jD;
        this.o.m0(jD - Long.max(this.m, this.l));
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.responseHeadersStart(call);
        }
    }

    @Override
    public void secureConnectEnd(Call call, Handshake handshake) {
        String strName;
        TlsVersion tlsVersion;
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        super.secureConnectEnd(call, handshake);
        dk3.c("[secureConnectEnd]");
        uq6 uq6Var = this.o;
        if (handshake == null || (tlsVersion = handshake.tlsVersion()) == null || (strName = tlsVersion.name()) == null) {
            strName = "";
        }
        uq6Var.k0(strName);
        this.o.i0(dk3.e(this.i));
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.secureConnectEnd(call, handshake);
        }
    }

    @Override
    public void secureConnectStart(Call call) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        super.secureConnectStart(call);
        dk3.c("[secureConnectStart]");
        this.i = dk3.d();
        EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.secureConnectStart(call);
        }
    }
}
