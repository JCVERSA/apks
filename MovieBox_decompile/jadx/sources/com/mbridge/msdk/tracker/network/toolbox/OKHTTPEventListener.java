package com.mbridge.msdk.tracker.network.toolbox;

import com.mbridge.msdk.system.NoProGuard;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.tracker.network.p;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;

public class OKHTTPEventListener extends com.mbridge.msdk.thrid.okhttp.n implements NoProGuard {
    private static String TAG = "OKHTTPEventListener";
    private final p monitor;

    public OKHTTPEventListener(p pVar) {
        this.monitor = pVar;
    }

    @Override
    public void callEnd(com.mbridge.msdk.thrid.okhttp.d dVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.a((IOException) null);
    }

    @Override
    public void callFailed(com.mbridge.msdk.thrid.okhttp.d dVar, IOException iOException) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.a(iOException);
    }

    @Override
    public void callStart(com.mbridge.msdk.thrid.okhttp.d dVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.a(dVar);
    }

    @Override
    public void connectEnd(com.mbridge.msdk.thrid.okhttp.d dVar, InetSocketAddress inetSocketAddress, Proxy proxy, u uVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("connection_end");
        this.monitor.a(uVar, (IOException) null);
    }

    @Override
    public void connectFailed(com.mbridge.msdk.thrid.okhttp.d dVar, InetSocketAddress inetSocketAddress, Proxy proxy, u uVar, IOException iOException) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.a(uVar, iOException);
    }

    @Override
    public void connectStart(com.mbridge.msdk.thrid.okhttp.d dVar, InetSocketAddress inetSocketAddress, Proxy proxy) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("connection_start");
        this.monitor.a(inetSocketAddress, proxy);
    }

    @Override
    public void connectionAcquired(com.mbridge.msdk.thrid.okhttp.d dVar, com.mbridge.msdk.thrid.okhttp.g gVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.a(gVar);
    }

    @Override
    public void connectionReleased(com.mbridge.msdk.thrid.okhttp.d dVar, com.mbridge.msdk.thrid.okhttp.g gVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.b(gVar);
    }

    @Override
    public void dnsEnd(com.mbridge.msdk.thrid.okhttp.d dVar, String str, List<InetAddress> list) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("dns_end");
        this.monitor.a(list);
    }

    @Override
    public void dnsStart(com.mbridge.msdk.thrid.okhttp.d dVar, String str) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("dns_start");
        this.monitor.a();
    }

    @Override
    public void requestBodyEnd(com.mbridge.msdk.thrid.okhttp.d dVar, long j10) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("request_body_end");
        this.monitor.b(j10);
        this.monitor.d("transmission_start");
    }

    @Override
    public void requestBodyStart(com.mbridge.msdk.thrid.okhttp.d dVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("request_body_start");
        this.monitor.R();
    }

    @Override
    public void requestHeadersEnd(com.mbridge.msdk.thrid.okhttp.d dVar, w wVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("request_header_end");
        this.monitor.a(wVar);
    }

    @Override
    public void requestHeadersStart(com.mbridge.msdk.thrid.okhttp.d dVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("request_header_start");
        this.monitor.S();
    }

    @Override
    public void responseBodyEnd(com.mbridge.msdk.thrid.okhttp.d dVar, long j10) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("response_body_end");
        this.monitor.h(j10);
        this.monitor.d(j10);
    }

    @Override
    public void responseBodyStart(com.mbridge.msdk.thrid.okhttp.d dVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("response_body_start");
        this.monitor.U();
    }

    @Override
    public void responseHeadersEnd(com.mbridge.msdk.thrid.okhttp.d dVar, y yVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("response_header_end");
        this.monitor.a(yVar);
    }

    @Override
    public void responseHeadersStart(com.mbridge.msdk.thrid.okhttp.d dVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("response_header_start");
        this.monitor.V();
        this.monitor.d("transmission_end");
    }

    @Override
    public void secureConnectEnd(com.mbridge.msdk.thrid.okhttp.d dVar, com.mbridge.msdk.thrid.okhttp.o oVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("secure_connect_end");
        this.monitor.a(oVar);
    }

    @Override
    public void secureConnectStart(com.mbridge.msdk.thrid.okhttp.d dVar) {
        p pVar = this.monitor;
        if (pVar == null) {
            return;
        }
        pVar.d("secure_connect_start");
        this.monitor.W();
    }
}
