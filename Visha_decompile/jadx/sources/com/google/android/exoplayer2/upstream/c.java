package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import com.transsion.livecaption.constant.ICode;
import defpackage.blb;
import defpackage.op5;
import defpackage.qs1;
import defpackage.u5b;
import defpackage.zi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class c implements com.google.android.exoplayer2.upstream.a {
    public final Context a;
    public final List b = new ArrayList();
    public final com.google.android.exoplayer2.upstream.a c;
    public com.google.android.exoplayer2.upstream.a d;
    public com.google.android.exoplayer2.upstream.a e;
    public com.google.android.exoplayer2.upstream.a f;
    public com.google.android.exoplayer2.upstream.a g;
    public com.google.android.exoplayer2.upstream.a h;
    public com.google.android.exoplayer2.upstream.a i;
    public com.google.android.exoplayer2.upstream.a j;
    public com.google.android.exoplayer2.upstream.a k;

    public static final class a implements com.google.android.exoplayer2.upstream.a.InterfaceC0084a {
        public final Context a;
        public final com.google.android.exoplayer2.upstream.a.InterfaceC0084a b;
        public u5b c;

        public a(Context context) {
            this(context, new d.b());
        }

        @Override
        public c createDataSource() {
            c cVar = new c(this.a, this.b.createDataSource());
            u5b u5bVar = this.c;
            if (u5bVar != null) {
                cVar.b(u5bVar);
            }
            return cVar;
        }

        public a(Context context, com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084a) {
            this.a = context.getApplicationContext();
            this.b = interfaceC0084a;
        }
    }

    public c(Context context, com.google.android.exoplayer2.upstream.a aVar) {
        this.a = context.getApplicationContext();
        this.c = (com.google.android.exoplayer2.upstream.a) zi.e(aVar);
    }

    @Override
    public long a(b bVar) {
        zi.g(this.k == null);
        String scheme = bVar.a.getScheme();
        if (blb.o0(bVar.a)) {
            String path = bVar.a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                this.k = g();
            } else {
                this.k = d();
            }
        } else if ("asset".equals(scheme)) {
            this.k = d();
        } else if (ICode.CALL.CALL_KEY_CONTENT.equals(scheme)) {
            this.k = e();
        } else if ("rtmp".equals(scheme)) {
            this.k = i();
        } else if ("udp".equals(scheme)) {
            this.k = j();
        } else if ("data".equals(scheme)) {
            this.k = f();
        } else if (androidx.media3.datasource.RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) || "android.resource".equals(scheme)) {
            this.k = h();
        } else {
            this.k = this.c;
        }
        return this.k.a(bVar);
    }

    @Override
    public void b(u5b u5bVar) {
        zi.e(u5bVar);
        this.c.b(u5bVar);
        this.b.add(u5bVar);
        k(this.d, u5bVar);
        k(this.e, u5bVar);
        k(this.f, u5bVar);
        k(this.g, u5bVar);
        k(this.h, u5bVar);
        k(this.i, u5bVar);
        k(this.j, u5bVar);
    }

    public final void c(com.google.android.exoplayer2.upstream.a aVar) {
        for (int i = 0; i < this.b.size(); i++) {
            aVar.b((u5b) this.b.get(i));
        }
    }

    @Override
    public void close() {
        com.google.android.exoplayer2.upstream.a aVar = this.k;
        if (aVar != null) {
            try {
                aVar.close();
            } finally {
                this.k = null;
            }
        }
    }

    public final com.google.android.exoplayer2.upstream.a d() {
        if (this.e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.a);
            this.e = assetDataSource;
            c(assetDataSource);
        }
        return this.e;
    }

    public final com.google.android.exoplayer2.upstream.a e() {
        if (this.f == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.a);
            this.f = contentDataSource;
            c(contentDataSource);
        }
        return this.f;
    }

    public final com.google.android.exoplayer2.upstream.a f() {
        if (this.i == null) {
            qs1 qs1Var = new qs1();
            this.i = qs1Var;
            c(qs1Var);
        }
        return this.i;
    }

    public final com.google.android.exoplayer2.upstream.a g() {
        if (this.d == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.d = fileDataSource;
            c(fileDataSource);
        }
        return this.d;
    }

    @Override
    public Map getResponseHeaders() {
        com.google.android.exoplayer2.upstream.a aVar = this.k;
        return aVar == null ? Collections.emptyMap() : aVar.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        com.google.android.exoplayer2.upstream.a aVar = this.k;
        if (aVar == null) {
            return null;
        }
        return aVar.getUri();
    }

    public final com.google.android.exoplayer2.upstream.a h() {
        if (this.j == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.a);
            this.j = rawResourceDataSource;
            c(rawResourceDataSource);
        }
        return this.j;
    }

    public final com.google.android.exoplayer2.upstream.a i() {
        if (this.g == null) {
            try {
                com.google.android.exoplayer2.upstream.a aVar = (com.google.android.exoplayer2.upstream.a) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                this.g = aVar;
                c(aVar);
            } catch (ClassNotFoundException unused) {
                op5.i("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e) {
                throw new RuntimeException("Error instantiating RTMP extension", e);
            }
            if (this.g == null) {
                this.g = this.c;
            }
        }
        return this.g;
    }

    public final com.google.android.exoplayer2.upstream.a j() {
        if (this.h == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.h = udpDataSource;
            c(udpDataSource);
        }
        return this.h;
    }

    public final void k(com.google.android.exoplayer2.upstream.a aVar, u5b u5bVar) {
        if (aVar != null) {
            aVar.b(u5bVar);
        }
    }

    @Override
    public int read(byte[] bArr, int i, int i2) {
        return ((com.google.android.exoplayer2.upstream.a) zi.e(this.k)).read(bArr, i, i2);
    }
}
