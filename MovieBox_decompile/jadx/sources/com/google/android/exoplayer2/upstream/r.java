package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class r implements k {

    private final Context f26721a;

    private final List f26722b = new ArrayList();

    private final k f26723c;

    private k f26724d;

    private k f26725e;

    private k f26726f;

    private k f26727g;

    private k f26728h;

    private k f26729i;

    private k f26730j;

    private k f26731k;

    public static final class a implements k.a {

        private final Context f26732a;

        private final k.a f26733b;

        private k0 f26734c;

        public a(Context context) {
            this(context, new s.b());
        }

        @Override
        public r createDataSource() {
            r rVar = new r(this.f26732a, this.f26733b.createDataSource());
            k0 k0Var = this.f26734c;
            if (k0Var != null) {
                rVar.e(k0Var);
            }
            return rVar;
        }

        public a(Context context, k.a aVar) {
            this.f26732a = context.getApplicationContext();
            this.f26733b = aVar;
        }
    }

    public r(Context context, k kVar) {
        this.f26721a = context.getApplicationContext();
        this.f26723c = (k) com.google.android.exoplayer2.util.a.e(kVar);
    }

    private void f(k kVar) {
        for (int i10 = 0; i10 < this.f26722b.size(); i10++) {
            kVar.e((k0) this.f26722b.get(i10));
        }
    }

    private k h() {
        if (this.f26725e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f26721a);
            this.f26725e = assetDataSource;
            f(assetDataSource);
        }
        return this.f26725e;
    }

    private k i() {
        if (this.f26726f == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f26721a);
            this.f26726f = contentDataSource;
            f(contentDataSource);
        }
        return this.f26726f;
    }

    private k j() {
        if (this.f26729i == null) {
            h hVar = new h();
            this.f26729i = hVar;
            f(hVar);
        }
        return this.f26729i;
    }

    private k k() {
        if (this.f26724d == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f26724d = fileDataSource;
            f(fileDataSource);
        }
        return this.f26724d;
    }

    private k l() {
        if (this.f26730j == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f26721a);
            this.f26730j = rawResourceDataSource;
            f(rawResourceDataSource);
        }
        return this.f26730j;
    }

    private k m() {
        if (this.f26727g == null) {
            try {
                k kVar = (k) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                this.f26727g = kVar;
                f(kVar);
            } catch (ClassNotFoundException unused) {
                com.google.android.exoplayer2.util.s.i("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating RTMP extension", e10);
            }
            if (this.f26727g == null) {
                this.f26727g = this.f26723c;
            }
        }
        return this.f26727g;
    }

    private k n() {
        if (this.f26728h == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.f26728h = udpDataSource;
            f(udpDataSource);
        }
        return this.f26728h;
    }

    private void o(k kVar, k0 k0Var) {
        if (kVar != null) {
            kVar.e(k0Var);
        }
    }

    @Override
    public long a(n nVar) {
        com.google.android.exoplayer2.util.a.g(this.f26731k == null);
        String scheme = nVar.f26665a.getScheme();
        if (p0.w0(nVar.f26665a)) {
            String path = nVar.f26665a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                this.f26731k = k();
            } else {
                this.f26731k = h();
            }
        } else if ("asset".equals(scheme)) {
            this.f26731k = h();
        } else if ("content".equals(scheme)) {
            this.f26731k = i();
        } else if ("rtmp".equals(scheme)) {
            this.f26731k = m();
        } else if ("udp".equals(scheme)) {
            this.f26731k = n();
        } else if ("data".equals(scheme)) {
            this.f26731k = j();
        } else if (com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) || "android.resource".equals(scheme)) {
            this.f26731k = l();
        } else {
            this.f26731k = this.f26723c;
        }
        return this.f26731k.a(nVar);
    }

    @Override
    public void close() {
        k kVar = this.f26731k;
        if (kVar != null) {
            try {
                kVar.close();
            } finally {
                this.f26731k = null;
            }
        }
    }

    @Override
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f26723c.e(k0Var);
        this.f26722b.add(k0Var);
        o(this.f26724d, k0Var);
        o(this.f26725e, k0Var);
        o(this.f26726f, k0Var);
        o(this.f26727g, k0Var);
        o(this.f26728h, k0Var);
        o(this.f26729i, k0Var);
        o(this.f26730j, k0Var);
    }

    @Override
    public Map getResponseHeaders() {
        k kVar = this.f26731k;
        return kVar == null ? Collections.emptyMap() : kVar.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        k kVar = this.f26731k;
        if (kVar == null) {
            return null;
        }
        return kVar.getUri();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        return ((k) com.google.android.exoplayer2.util.a.e(this.f26731k)).read(bArr, i10, i11);
    }
}
