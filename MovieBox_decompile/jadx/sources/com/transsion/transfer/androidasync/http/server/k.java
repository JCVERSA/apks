package com.transsion.transfer.androidasync.http.server;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.HttpUtil;
import com.transsion.transfer.androidasync.http.Protocol;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Locale;

public abstract class k implements d {

    private st.e f53391c;

    com.transsion.transfer.androidasync.j f53392d;

    c f53393e;

    com.transsion.transfer.androidasync.s f53395g;

    st.j f53396h;

    boolean f53397i;

    boolean f53398j;

    st.a f53401m;

    private Headers f53389a = new Headers();

    private long f53390b = -1;

    boolean f53394f = false;

    int f53399k = 200;

    String f53400l = "HTTP/1.1";

    k(com.transsion.transfer.androidasync.j jVar, c cVar) {
        this.f53392d = jVar;
        this.f53393e = cVar;
        if (HttpUtil.d(Protocol.HTTP_1_1, cVar.getHeaders())) {
            this.f53389a.f("Connection", "Keep-Alive");
        }
    }

    public void C(final InputStream inputStream) {
        a0.e(inputStream, this.f53390b, this, new st.a() {
            @Override
            public final void g(Exception exc) {
                this.f53387a.z(inputStream, exc);
            }
        }, this.f53391c);
    }

    public void s() {
        st.j jVarK = k();
        if (jVarK != null) {
            jVarK.a();
        }
    }

    public void v(boolean z10, Exception exc) {
        if (exc != null) {
            F(exc);
            return;
        }
        if (z10) {
            vt.a aVar = new vt.a(this.f53392d);
            aVar.o(0);
            this.f53395g = aVar;
        } else {
            this.f53395g = this.f53392d;
        }
        this.f53395g.i(this.f53401m);
        this.f53401m = null;
        this.f53395g.B(this.f53396h);
        this.f53396h = null;
        if (this.f53397i) {
            d();
        } else {
            a().D(new Runnable() {
                @Override
                public final void run() {
                    this.f53383a.s();
                }
            });
        }
    }

    public void w(Exception exc) {
        E();
    }

    public void y(ByteBufferList byteBufferList, String str) {
        long jC = byteBufferList.C();
        this.f53390b = jC;
        this.f53389a.f(HttpHeaders.CONTENT_LENGTH, Long.toString(jC));
        if (str != null) {
            this.f53389a.f(HttpHeaders.CONTENT_TYPE, str);
        }
        a0.g(this, byteBufferList, new st.a() {
            @Override
            public final void g(Exception exc) {
                this.f53384a.w(exc);
            }
        });
    }

    public void z(InputStream inputStream, Exception exc) {
        com.transsion.transfer.androidasync.util.d.a(inputStream);
        E();
    }

    @Override
    public String A() {
        return this.f53400l;
    }

    @Override
    public void B(st.j jVar) {
        com.transsion.transfer.androidasync.s sVar = this.f53395g;
        if (sVar != null) {
            sVar.B(jVar);
        } else {
            this.f53396h = jVar;
        }
    }

    protected void E() {
        this.f53398j = true;
    }

    protected void F(Exception exc) {
    }

    public void G(final String str, final ByteBufferList byteBufferList) {
        a().D(new Runnable() {
            @Override
            public final void run() {
                this.f53380a.y(byteBufferList, str);
            }
        });
    }

    public void H(String str, String str2) {
        try {
            J(str, str2.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    public void J(String str, byte[] bArr) {
        G(str, new ByteBufferList(bArr));
    }

    public void K(final InputStream inputStream, long j10) {
        long j11;
        long j12 = j10 - 1;
        String strC = this.f53393e.getHeaders().c("Range");
        if (strC != null) {
            String[] strArrSplit = strC.split(UrlUtils.EQUAL_MARK);
            if (strArrSplit.length != 2 || !"bytes".equals(strArrSplit[0])) {
                c(TTAdConstant.PACKAGE_NAME_CODE);
                d();
                return;
            }
            String[] strArrSplit2 = strArrSplit[1].split("-");
            try {
                if (strArrSplit2.length > 2) {
                    throw new MalformedRangeException();
                }
                long j13 = !TextUtils.isEmpty(strArrSplit2[0]) ? Long.parseLong(strArrSplit2[0]) : 0L;
                if (strArrSplit2.length == 2 && !TextUtils.isEmpty(strArrSplit2[1])) {
                    j12 = Long.parseLong(strArrSplit2[1]);
                }
                c(Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE);
                getHeaders().f("Content-Range", String.format(Locale.ENGLISH, "bytes %d-%d/%d", Long.valueOf(j13), Long.valueOf(j12), Long.valueOf(j10)));
                j11 = j13;
            } catch (Exception unused) {
                c(TTAdConstant.PACKAGE_NAME_CODE);
                d();
                return;
            }
        } else {
            j11 = 0;
        }
        try {
            if (j11 != inputStream.skip(j11)) {
                throw new StreamSkipException("skip failed to skip requested amount");
            }
            long j14 = (j12 - j11) + 1;
            this.f53390b = j14;
            this.f53389a.f(HttpHeaders.CONTENT_LENGTH, String.valueOf(j14));
            this.f53389a.f("Accept-Ranges", "bytes");
            if (this.f53393e.y().equals("HEAD")) {
                u();
                E();
            } else {
                if (this.f53390b != 0) {
                    a().D(new Runnable() {
                        @Override
                        public final void run() {
                            this.f53385a.C(inputStream);
                        }
                    });
                    return;
                }
                u();
                com.transsion.transfer.androidasync.util.d.a(inputStream);
                E();
            }
        } catch (Exception unused2) {
            c(500);
            d();
        }
    }

    @Override
    public AsyncServer a() {
        return this.f53392d.a();
    }

    @Override
    public int b() {
        return this.f53399k;
    }

    @Override
    public d c(int i10) {
        this.f53399k = i10;
        return this;
    }

    @Override
    public void d() {
        if (this.f53397i) {
            return;
        }
        this.f53397i = true;
        boolean z10 = this.f53394f;
        if (z10 && this.f53395g == null) {
            return;
        }
        if (!z10) {
            this.f53389a.d("Transfer-Encoding");
        }
        com.transsion.transfer.androidasync.s sVar = this.f53395g;
        if (sVar instanceof vt.a) {
            sVar.d();
            return;
        }
        if (this.f53394f) {
            E();
        } else if (!this.f53393e.y().equalsIgnoreCase("HEAD")) {
            H("text/html", "");
        } else {
            u();
            E();
        }
    }

    @Override
    public void g(Exception exc) {
        d();
    }

    @Override
    public Headers getHeaders() {
        return this.f53389a;
    }

    @Override
    public void i(st.a aVar) {
        com.transsion.transfer.androidasync.s sVar = this.f53395g;
        if (sVar != null) {
            sVar.i(aVar);
        } else {
            this.f53401m = aVar;
        }
    }

    @Override
    public st.j k() {
        com.transsion.transfer.androidasync.s sVar = this.f53395g;
        return sVar != null ? sVar.k() : this.f53396h;
    }

    @Override
    public void n(ByteBufferList byteBufferList) {
        com.transsion.transfer.androidasync.s sVar;
        if (!this.f53394f) {
            r();
        }
        if (byteBufferList.C() == 0 || (sVar = this.f53395g) == null) {
            return;
        }
        sVar.n(byteBufferList);
    }

    public b o() {
        return this.f53393e;
    }

    @Override
    public void q(File file, st.e eVar) {
        try {
            this.f53391c = eVar;
            if (this.f53389a.c(HttpHeaders.CONTENT_TYPE) == null) {
                this.f53389a.f(HttpHeaders.CONTENT_TYPE, n.g(file.getAbsolutePath()));
            }
            K(new BufferedInputStream(new FileInputStream(file), RecorderConstants.RECORD_ENCODING_BITRATE_64000), file.length());
        } catch (FileNotFoundException unused) {
            c(TTAdConstant.DEEPLINK_FALLBACK_CODE);
            d();
        }
    }

    void r() {
        final boolean z10;
        if (this.f53394f) {
            return;
        }
        this.f53394f = true;
        String strC = this.f53389a.c("Transfer-Encoding");
        if ("".equals(strC)) {
            this.f53389a.e("Transfer-Encoding");
        }
        boolean z11 = ("Chunked".equalsIgnoreCase(strC) || strC == null) && !"close".equalsIgnoreCase(this.f53389a.c("Connection"));
        if (this.f53390b < 0) {
            String strC2 = this.f53389a.c(HttpHeaders.CONTENT_LENGTH);
            if (!TextUtils.isEmpty(strC2)) {
                this.f53390b = Long.valueOf(strC2).longValue();
            }
        }
        if (this.f53390b >= 0 || !z11) {
            z10 = false;
        } else {
            this.f53389a.f("Transfer-Encoding", "Chunked");
            z10 = true;
        }
        a0.h(this.f53392d, this.f53389a.g(String.format(Locale.ENGLISH, "%s %s %s", this.f53400l, Integer.valueOf(this.f53399k), AsyncHttpServer.l(this.f53399k))).getBytes(), new st.a() {
            @Override
            public final void g(Exception exc) {
                this.f53378a.v(z10, exc);
            }
        });
    }

    @Override
    public void send(String str) {
        String strC = this.f53389a.c(HttpHeaders.CONTENT_TYPE);
        if (strC == null) {
            strC = "text/html; charset=utf-8";
        }
        H(strC, str);
    }

    public String toString() {
        return this.f53389a == null ? super.toString() : this.f53389a.g(String.format(Locale.ENGLISH, "%s %s %s", this.f53400l, Integer.valueOf(this.f53399k), AsyncHttpServer.l(this.f53399k)));
    }

    @Override
    public void u() {
        r();
    }
}
