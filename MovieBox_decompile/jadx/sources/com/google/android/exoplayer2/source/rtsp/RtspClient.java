package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.SocketFactory;

final class RtspClient implements Closeable {

    private final e f25605a;

    private final d f25606b;

    private final String f25607c;

    private final SocketFactory f25608d;

    private final boolean f25609e;

    private Uri f25613i;

    private y.a f25615k;

    private String f25616l;

    private KeepAliveMonitor f25617m;

    private l f25618n;

    private boolean f25620p;

    private boolean f25621q;

    private boolean f25622r;

    private final ArrayDeque f25610f = new ArrayDeque();

    private final SparseArray f25611g = new SparseArray();

    private final c f25612h = new c();

    private u f25614j = new u(new b());

    private long f25623s = C.TIME_UNSET;

    private int f25619o = -1;

    private final class KeepAliveMonitor implements Runnable, Closeable {
        private final long intervalMs;
        private boolean isStarted;
        private final Handler keepAliveHandler = p0.w();

        public KeepAliveMonitor(long j10) {
            this.intervalMs = j10;
        }

        @Override
        public void close() {
            this.isStarted = false;
            this.keepAliveHandler.removeCallbacks(this);
        }

        @Override
        public void run() {
            RtspClient.this.f25612h.e(RtspClient.this.f25613i, RtspClient.this.f25616l);
            this.keepAliveHandler.postDelayed(this, this.intervalMs);
        }

        public void start() {
            if (this.isStarted) {
                return;
            }
            this.isStarted = true;
            this.keepAliveHandler.postDelayed(this, this.intervalMs);
        }
    }

    final class b implements u.d {

        private final Handler f25624a = p0.w();

        public b() {
        }

        public void h(List list) {
            RtspClient.this.s0(list);
            if (y.e(list)) {
                g(list);
            } else {
                f(list);
            }
        }

        private void f(List list) {
            RtspClient.this.f25612h.d(Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(y.k(list).f25673c.d("CSeq"))));
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void g(List list) {
            ImmutableList immutableListOf;
            c0 c0VarL = y.l(list);
            int i10 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(c0VarL.f25676b.d("CSeq")));
            b0 b0Var = (b0) RtspClient.this.f25611g.get(i10);
            if (b0Var == null) {
                return;
            }
            RtspClient.this.f25611g.remove(i10);
            int i11 = b0Var.f25672b;
            try {
                int i12 = c0VarL.f25675a;
                if (i12 == 200) {
                    switch (i11) {
                        case 1:
                        case 3:
                        case 7:
                        case 8:
                        case 9:
                        case 11:
                        case 12:
                            return;
                        case 2:
                            i(new n(i12, h0.b(c0VarL.f25677c)));
                            return;
                        case 4:
                            j(new z(i12, y.j(c0VarL.f25676b.d("Public"))));
                            return;
                        case 5:
                            k();
                            return;
                        case 6:
                            String strD = c0VarL.f25676b.d("Range");
                            d0 d0VarD = strD == null ? d0.f25681c : d0.d(strD);
                            try {
                                String strD2 = c0VarL.f25676b.d("RTP-Info");
                                immutableListOf = strD2 == null ? ImmutableList.of() : f0.a(strD2, RtspClient.this.f25613i);
                            } catch (ParserException unused) {
                                immutableListOf = ImmutableList.of();
                            }
                            l(new a0(c0VarL.f25675a, d0VarD, immutableListOf));
                            return;
                        case 10:
                            String strD3 = c0VarL.f25676b.d("Session");
                            String strD4 = c0VarL.f25676b.d("Transport");
                            if (strD3 == null || strD4 == null) {
                                throw ParserException.createForMalformedManifest("Missing mandatory session or transport header", null);
                            }
                            m(new e0(c0VarL.f25675a, y.m(strD3), strD4));
                            return;
                        default:
                            throw new IllegalStateException();
                    }
                    RtspClient.this.o0(new RtspMediaSource.RtspPlaybackException(e));
                }
                if (i12 != 401) {
                    if (i12 == 301 || i12 == 302) {
                        if (RtspClient.this.f25619o != -1) {
                            RtspClient.this.f25619o = 0;
                        }
                        String strD5 = c0VarL.f25676b.d(HttpHeaders.LOCATION);
                        if (strD5 == null) {
                            RtspClient.this.f25605a.b("Redirection without new location.", null);
                            return;
                        }
                        Uri uri = Uri.parse(strD5);
                        RtspClient.this.f25613i = y.p(uri);
                        RtspClient.this.f25615k = y.n(uri);
                        RtspClient.this.f25612h.c(RtspClient.this.f25613i, RtspClient.this.f25616l);
                        return;
                    }
                } else if (RtspClient.this.f25615k != null && !RtspClient.this.f25621q) {
                    ImmutableList immutableListE = c0VarL.f25676b.e("WWW-Authenticate");
                    if (immutableListE.isEmpty()) {
                        throw ParserException.createForMalformedManifest("Missing WWW-Authenticate header in a 401 response.", null);
                    }
                    for (int i13 = 0; i13 < immutableListE.size(); i13++) {
                        RtspClient.this.f25618n = y.o((String) immutableListE.get(i13));
                        if (RtspClient.this.f25618n.f25778a == 2) {
                            break;
                        }
                    }
                    RtspClient.this.f25612h.b();
                    RtspClient.this.f25621q = true;
                    return;
                }
                RtspClient.this.o0(new RtspMediaSource.RtspPlaybackException(y.t(i11) + " " + c0VarL.f25675a));
            } catch (ParserException e10) {
                RtspClient.this.o0(new RtspMediaSource.RtspPlaybackException(e10));
            }
        }

        private void i(n nVar) {
            d0 d0VarD = d0.f25681c;
            String str = (String) nVar.f25786b.f25734a.get("range");
            if (str != null) {
                try {
                    d0VarD = d0.d(str);
                } catch (ParserException e10) {
                    RtspClient.this.f25605a.b("SDP format error.", e10);
                    return;
                }
            }
            ImmutableList immutableListJ0 = RtspClient.j0(nVar.f25786b, RtspClient.this.f25613i);
            if (immutableListJ0.isEmpty()) {
                RtspClient.this.f25605a.b("No playable track.", null);
            } else {
                RtspClient.this.f25605a.f(d0VarD, immutableListJ0);
                RtspClient.this.f25620p = true;
            }
        }

        private void j(z zVar) {
            if (RtspClient.this.f25617m != null) {
                return;
            }
            if (RtspClient.y0(zVar.f25866b)) {
                RtspClient.this.f25612h.c(RtspClient.this.f25613i, RtspClient.this.f25616l);
            } else {
                RtspClient.this.f25605a.b("DESCRIBE not supported.", null);
            }
        }

        private void k() {
            com.google.android.exoplayer2.util.a.g(RtspClient.this.f25619o == 2);
            RtspClient.this.f25619o = 1;
            RtspClient.this.f25622r = false;
            if (RtspClient.this.f25623s != C.TIME_UNSET) {
                RtspClient rtspClient = RtspClient.this;
                rtspClient.D0(p0.e1(rtspClient.f25623s));
            }
        }

        private void l(a0 a0Var) {
            com.google.android.exoplayer2.util.a.g(RtspClient.this.f25619o == 1);
            RtspClient.this.f25619o = 2;
            if (RtspClient.this.f25617m == null) {
                RtspClient rtspClient = RtspClient.this;
                rtspClient.f25617m = rtspClient.new KeepAliveMonitor(30000L);
                RtspClient.this.f25617m.start();
            }
            RtspClient.this.f25623s = C.TIME_UNSET;
            RtspClient.this.f25606b.e(p0.B0(a0Var.f25669b.f25683a), a0Var.f25670c);
        }

        private void m(e0 e0Var) {
            com.google.android.exoplayer2.util.a.g(RtspClient.this.f25619o != -1);
            RtspClient.this.f25619o = 1;
            RtspClient.this.f25616l = e0Var.f25696b.f25863a;
            RtspClient.this.l0();
        }

        @Override
        public void a(Exception exc) {
            v.a(this, exc);
        }

        @Override
        public void b(List list, Exception exc) {
            v.b(this, list, exc);
        }

        @Override
        public void c(final List list) {
            this.f25624a.post(new Runnable() {
                @Override
                public final void run() {
                    this.f25783a.h(list);
                }
            });
        }
    }

    private final class c {

        private int f25626a;

        private b0 f25627b;

        private c() {
        }

        private b0 a(int i10, String str, Map map, Uri uri) {
            String str2 = RtspClient.this.f25607c;
            int i11 = this.f25626a;
            this.f25626a = i11 + 1;
            o.b bVar = new o.b(str2, str, i11);
            if (RtspClient.this.f25618n != null) {
                com.google.android.exoplayer2.util.a.i(RtspClient.this.f25615k);
                try {
                    bVar.b(HttpHeaders.AUTHORIZATION, RtspClient.this.f25618n.a(RtspClient.this.f25615k, uri, i10));
                } catch (ParserException e10) {
                    RtspClient.this.o0(new RtspMediaSource.RtspPlaybackException(e10));
                }
            }
            bVar.d(map);
            return new b0(uri, i10, bVar.e(), "");
        }

        private void h(b0 b0Var) {
            int i10 = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(b0Var.f25673c.d("CSeq")));
            com.google.android.exoplayer2.util.a.g(RtspClient.this.f25611g.get(i10) == null);
            RtspClient.this.f25611g.append(i10, b0Var);
            ImmutableList immutableListQ = y.q(b0Var);
            RtspClient.this.s0(immutableListQ);
            RtspClient.this.f25614j.k(immutableListQ);
            this.f25627b = b0Var;
        }

        private void i(c0 c0Var) {
            ImmutableList immutableListR = y.r(c0Var);
            RtspClient.this.s0(immutableListR);
            RtspClient.this.f25614j.k(immutableListR);
        }

        public void b() {
            com.google.android.exoplayer2.util.a.i(this.f25627b);
            ImmutableListMultimap immutableListMultimapB = this.f25627b.f25673c.b();
            HashMap map = new HashMap();
            for (String str : immutableListMultimapB.keySet()) {
                if (!str.equals("CSeq") && !str.equals("User-Agent") && !str.equals("Session") && !str.equals(HttpHeaders.AUTHORIZATION)) {
                    map.put(str, (String) g3.g(immutableListMultimapB.get((Object) str)));
                }
            }
            h(a(this.f25627b.f25672b, RtspClient.this.f25616l, map, this.f25627b.f25671a));
        }

        public void c(Uri uri, String str) {
            h(a(2, str, ImmutableMap.of(), uri));
        }

        public void d(int i10) {
            i(new c0(TTAdConstant.DEEPLINK_FALLBACK_TYPE_CODE, new o.b(RtspClient.this.f25607c, RtspClient.this.f25616l, i10).e()));
            this.f25626a = Math.max(this.f25626a, i10 + 1);
        }

        public void e(Uri uri, String str) {
            h(a(4, str, ImmutableMap.of(), uri));
        }

        public void f(Uri uri, String str) {
            com.google.android.exoplayer2.util.a.g(RtspClient.this.f25619o == 2);
            h(a(5, str, ImmutableMap.of(), uri));
            RtspClient.this.f25622r = true;
        }

        public void g(Uri uri, long j10, String str) {
            boolean z10 = true;
            if (RtspClient.this.f25619o != 1 && RtspClient.this.f25619o != 2) {
                z10 = false;
            }
            com.google.android.exoplayer2.util.a.g(z10);
            h(a(6, str, ImmutableMap.of("Range", d0.b(j10)), uri));
        }

        public void j(Uri uri, String str, String str2) {
            RtspClient.this.f25619o = 0;
            h(a(10, str2, ImmutableMap.of("Transport", str), uri));
        }

        public void k(Uri uri, String str) {
            if (RtspClient.this.f25619o == -1 || RtspClient.this.f25619o == 0) {
                return;
            }
            RtspClient.this.f25619o = 0;
            h(a(12, str, ImmutableMap.of(), uri));
        }
    }

    public interface d {
        void c(RtspMediaSource.RtspPlaybackException rtspPlaybackException);

        void d();

        void e(long j10, ImmutableList immutableList);
    }

    public interface e {
        void b(String str, Throwable th2);

        void f(d0 d0Var, ImmutableList immutableList);
    }

    public RtspClient(e eVar, d dVar, String str, Uri uri, SocketFactory socketFactory, boolean z10) {
        this.f25605a = eVar;
        this.f25606b = dVar;
        this.f25607c = str;
        this.f25608d = socketFactory;
        this.f25609e = z10;
        this.f25613i = y.p(uri);
        this.f25615k = y.n(uri);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ImmutableList j0(g0 g0Var, Uri uri) {
        ImmutableList.a aVar = new ImmutableList.a();
        for (int i10 = 0; i10 < g0Var.f25735b.size(); i10++) {
            com.google.android.exoplayer2.source.rtsp.a aVar2 = (com.google.android.exoplayer2.source.rtsp.a) g0Var.f25735b.get(i10);
            if (j.c(aVar2)) {
                aVar.a(new t(aVar2, uri));
            }
        }
        return aVar.e();
    }

    public void l0() {
        p.d dVar = (p.d) this.f25610f.pollFirst();
        if (dVar == null) {
            this.f25606b.d();
        } else {
            this.f25612h.j(dVar.c(), dVar.d(), this.f25616l);
        }
    }

    public void o0(Throwable th2) {
        RtspMediaSource.RtspPlaybackException rtspPlaybackException = th2 instanceof RtspMediaSource.RtspPlaybackException ? (RtspMediaSource.RtspPlaybackException) th2 : new RtspMediaSource.RtspPlaybackException(th2);
        if (this.f25620p) {
            this.f25606b.c(rtspPlaybackException);
        } else {
            this.f25605a.b(com.google.common.base.p.e(th2.getMessage()), th2);
        }
    }

    private Socket p0(Uri uri) {
        com.google.android.exoplayer2.util.a.a(uri.getHost() != null);
        return this.f25608d.createSocket((String) com.google.android.exoplayer2.util.a.e(uri.getHost()), uri.getPort() > 0 ? uri.getPort() : 554);
    }

    public void s0(List list) {
        if (this.f25609e) {
            com.google.android.exoplayer2.util.s.b("RtspClient", com.google.common.base.g.h("\n").d(list));
        }
    }

    public static boolean y0(List list) {
        return list.isEmpty() || list.contains(2);
    }

    public void A0(List list) {
        this.f25610f.addAll(list);
        l0();
    }

    public void B0() throws IOException {
        try {
            this.f25614j.h(p0(this.f25613i));
            this.f25612h.e(this.f25613i, this.f25616l);
        } catch (IOException e10) {
            p0.n(this.f25614j);
            throw e10;
        }
    }

    public void D0(long j10) {
        this.f25612h.g(this.f25613i, j10, (String) com.google.android.exoplayer2.util.a.e(this.f25616l));
    }

    @Override
    public void close() {
        KeepAliveMonitor keepAliveMonitor = this.f25617m;
        if (keepAliveMonitor != null) {
            keepAliveMonitor.close();
            this.f25617m = null;
            this.f25612h.k(this.f25613i, (String) com.google.android.exoplayer2.util.a.e(this.f25616l));
        }
        this.f25614j.close();
    }

    public int r0() {
        return this.f25619o;
    }

    public void t0(int i10, u.b bVar) {
        this.f25614j.j(i10, bVar);
    }

    public void u0() {
        try {
            close();
            u uVar = new u(new b());
            this.f25614j = uVar;
            uVar.h(p0(this.f25613i));
            this.f25616l = null;
            this.f25621q = false;
            this.f25618n = null;
        } catch (IOException e10) {
            this.f25606b.c(new RtspMediaSource.RtspPlaybackException(e10));
        }
    }

    public void x0(long j10) {
        if (this.f25619o == 2 && !this.f25622r) {
            this.f25612h.f(this.f25613i, (String) com.google.android.exoplayer2.util.a.e(this.f25616l));
        }
        this.f25623s = j10;
    }
}
