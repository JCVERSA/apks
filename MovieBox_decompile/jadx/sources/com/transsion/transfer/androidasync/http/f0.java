package com.transsion.transfer.androidasync.http;

import android.text.TextUtils;
import android.util.Base64;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.transsion.api.gateway.utils.EncoderUtil;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.ByteBufferList;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.LinkedList;
import java.util.UUID;
import okhttp3.internal.ws.WebSocketProtocol;

public class f0 implements b0 {

    private LinkedList f53265a;

    private com.transsion.transfer.androidasync.j f53266b;

    com.transsion.transfer.androidasync.n f53267c;

    String f53268d;

    HybiParser f53269e;

    st.a f53270f;

    private b0.c f53271g;

    private st.d f53272h;

    private b0.b f53273i;

    class a extends HybiParser {
        a(com.transsion.transfer.androidasync.p pVar) {
            super(pVar);
        }

        @Override
        protected void A(String str) {
            f0.m(f0.this);
        }

        @Override
        protected void B(String str) {
            if (f0.this.f53273i != null) {
                f0.this.f53273i.a(str);
            }
        }

        @Override
        protected void H(Exception exc) {
            st.a aVar = f0.this.f53270f;
            if (aVar != null) {
                aVar.g(exc);
            }
        }

        @Override
        protected void J(byte[] bArr) {
            f0.this.f53267c.n(new ByteBufferList(bArr));
        }

        @Override
        protected void x(int i10, String str) {
            f0.this.f53266b.close();
        }

        @Override
        protected void y(String str) {
            if (f0.this.f53271g != null) {
                f0.this.f53271g.a(str);
            }
        }

        @Override
        protected void z(byte[] bArr) {
            f0.this.C(new ByteBufferList(bArr));
        }
    }

    public f0(com.transsion.transfer.androidasync.http.server.b bVar, com.transsion.transfer.androidasync.http.server.d dVar) {
        this(bVar.getSocket());
        String strV = v(bVar.getHeaders().c("Sec-WebSocket-Key") + WebSocketProtocol.ACCEPT_MAGIC);
        bVar.getHeaders().c("Origin");
        dVar.c(101);
        dVar.getHeaders().f("Upgrade", "WebSocket");
        dVar.getHeaders().f("Connection", "Upgrade");
        dVar.getHeaders().f("Sec-WebSocket-Accept", strV);
        String strC = bVar.getHeaders().c("Sec-WebSocket-Protocol");
        if (!TextUtils.isEmpty(strC)) {
            dVar.getHeaders().f("Sec-WebSocket-Protocol", strC);
        }
        dVar.u();
        N(false, false);
    }

    public void C(ByteBufferList byteBufferList) {
        if (this.f53265a == null) {
            com.transsion.transfer.androidasync.a0.a(this, byteBufferList);
            if (byteBufferList.C() > 0) {
                LinkedList linkedList = new LinkedList();
                this.f53265a = linkedList;
                linkedList.add(byteBufferList);
                return;
            }
            return;
        }
        while (!isPaused()) {
            ByteBufferList byteBufferList2 = (ByteBufferList) this.f53265a.remove();
            com.transsion.transfer.androidasync.a0.a(this, byteBufferList2);
            if (byteBufferList2.C() > 0) {
                this.f53265a.add(0, byteBufferList2);
            }
        }
        if (this.f53265a.size() == 0) {
            this.f53265a = null;
        }
    }

    public static void E(j jVar, String... strArr) {
        Headers headersH = jVar.h();
        String strEncodeToString = Base64.encodeToString(O(UUID.randomUUID()), 2);
        headersH.f("Sec-WebSocket-Version", PrepareException.ERROR_WARMUP_DOWNLOAD_EXCEPTION);
        headersH.f("Sec-WebSocket-Key", strEncodeToString);
        headersH.f("Sec-WebSocket-Extensions", "x-webkit-deflate-frame");
        headersH.f("Connection", "Upgrade");
        headersH.f("Upgrade", "websocket");
        if (strArr != null) {
            for (String str : strArr) {
                headersH.a("Sec-WebSocket-Protocol", str);
            }
        }
        headersH.f("Pragma", "no-cache");
        headersH.f(HttpHeaders.CACHE_CONTROL, "no-cache");
        if (TextUtils.isEmpty(jVar.h().c("User-Agent"))) {
            jVar.h().f("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.15 Safari/537.36");
        }
    }

    public static b0 H(Headers headers, k kVar) {
        String strC;
        String strC2;
        if (kVar == null || kVar.b() != 101 || !"websocket".equalsIgnoreCase(kVar.e().c("Upgrade")) || (strC = kVar.e().c("Sec-WebSocket-Accept")) == null || (strC2 = headers.c("Sec-WebSocket-Key")) == null) {
            return null;
        }
        if (!strC.equalsIgnoreCase(v(strC2 + WebSocketProtocol.ACCEPT_MAGIC).trim())) {
            return null;
        }
        String strC3 = headers.c("Sec-WebSocket-Extensions");
        boolean z10 = strC3 != null && strC3.equals("x-webkit-deflate-frame");
        f0 f0Var = new f0(kVar.w());
        f0Var.f53268d = kVar.e().c("Sec-WebSocket-Protocol");
        f0Var.N(true, z10);
        return f0Var;
    }

    public void J(String str) {
        this.f53267c.n(new ByteBufferList(ByteBuffer.wrap(this.f53269e.G(str))));
    }

    public void K(byte[] bArr) {
        this.f53267c.n(new ByteBufferList(this.f53269e.t(bArr)));
    }

    public void L(String str) {
        this.f53267c.n(new ByteBufferList(this.f53269e.s(str)));
    }

    private void N(boolean z10, boolean z11) {
        a aVar = new a(this.f53266b);
        this.f53269e = aVar;
        aVar.L(z10);
        this.f53269e.K(z11);
        if (this.f53266b.isPaused()) {
            this.f53266b.resume();
        }
    }

    private static byte[] O(UUID uuid) {
        byte[] bArr = new byte[16];
        ByteBuffer.wrap(bArr).asLongBuffer().put(new long[]{uuid.getMostSignificantBits(), uuid.getLeastSignificantBits()});
        return bArr;
    }

    static b0.a m(f0 f0Var) {
        f0Var.getClass();
        return null;
    }

    private static String v(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_1);
            messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
            return Base64.encodeToString(messageDigest.digest(), 2);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public void B(st.j jVar) {
        this.f53267c.B(jVar);
    }

    @Override
    public void D(b0.b bVar) {
        this.f53273i = bVar;
    }

    @Override
    public void F(st.d dVar) {
        this.f53272h = dVar;
    }

    @Override
    public st.d G() {
        return this.f53272h;
    }

    @Override
    public void I(b0.c cVar) {
        this.f53271g = cVar;
    }

    public void M(final byte[] bArr) {
        a().D(new Runnable() {
            @Override
            public final void run() {
                this.f53256a.K(bArr);
            }
        });
    }

    @Override
    public AsyncServer a() {
        return this.f53266b.a();
    }

    @Override
    public void close() {
        this.f53266b.close();
    }

    @Override
    public void d() {
        this.f53266b.d();
    }

    @Override
    public void h(st.a aVar) {
        this.f53270f = aVar;
    }

    @Override
    public void i(st.a aVar) {
        this.f53266b.i(aVar);
    }

    @Override
    public boolean isOpen() {
        return this.f53266b.isOpen();
    }

    @Override
    public boolean isPaused() {
        return this.f53266b.isPaused();
    }

    @Override
    public st.j k() {
        return this.f53267c.k();
    }

    @Override
    public void n(ByteBufferList byteBufferList) {
        M(byteBufferList.l());
    }

    @Override
    public void pause() {
        this.f53266b.pause();
    }

    @Override
    public void resume() {
        this.f53266b.resume();
    }

    @Override
    public String s() {
        return null;
    }

    @Override
    public void send(final String str) {
        a().D(new Runnable() {
            @Override
            public final void run() {
                this.f53263a.L(str);
            }
        });
    }

    @Override
    public void x(final String str) {
        a().D(new Runnable() {
            @Override
            public final void run() {
                this.f53249a.J(str);
            }
        });
    }

    public f0(com.transsion.transfer.androidasync.j jVar) {
        this.f53266b = jVar;
        this.f53267c = new com.transsion.transfer.androidasync.n(jVar);
    }
}
