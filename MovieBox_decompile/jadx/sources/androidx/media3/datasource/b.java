package androidx.media3.datasource;

import android.content.Context;
import android.net.Uri;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import w1.h;
import w1.n;

public final class b implements androidx.media3.datasource.a {

    private final Context f10406a;

    private final List f10407b = new ArrayList();

    private final androidx.media3.datasource.a f10408c;

    private androidx.media3.datasource.a f10409d;

    private androidx.media3.datasource.a f10410e;

    private androidx.media3.datasource.a f10411f;

    private androidx.media3.datasource.a f10412g;

    private androidx.media3.datasource.a f10413h;

    private androidx.media3.datasource.a f10414i;

    private androidx.media3.datasource.a f10415j;

    private androidx.media3.datasource.a f10416k;

    public static final class a implements androidx.media3.datasource.a.InterfaceC0085a {

        private final Context f10417a;

        private final androidx.media3.datasource.a.InterfaceC0085a f10418b;

        private n f10419c;

        public a(Context context) {
            this(context, new c.b());
        }

        @Override
        public b createDataSource() {
            b bVar = new b(this.f10417a, this.f10418b.createDataSource());
            n nVar = this.f10419c;
            if (nVar != null) {
                bVar.c(nVar);
            }
            return bVar;
        }

        public a(Context context, androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
            this.f10417a = context.getApplicationContext();
            this.f10418b = (androidx.media3.datasource.a.InterfaceC0085a) androidx.media3.common.util.a.e(interfaceC0085a);
        }
    }

    public b(Context context, androidx.media3.datasource.a aVar) {
        this.f10406a = context.getApplicationContext();
        this.f10408c = (androidx.media3.datasource.a) androidx.media3.common.util.a.e(aVar);
    }

    private void d(androidx.media3.datasource.a aVar) {
        for (int i10 = 0; i10 < this.f10407b.size(); i10++) {
            aVar.c((n) this.f10407b.get(i10));
        }
    }

    private androidx.media3.datasource.a e() {
        if (this.f10410e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f10406a);
            this.f10410e = assetDataSource;
            d(assetDataSource);
        }
        return this.f10410e;
    }

    private androidx.media3.datasource.a f() {
        if (this.f10411f == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f10406a);
            this.f10411f = contentDataSource;
            d(contentDataSource);
        }
        return this.f10411f;
    }

    private androidx.media3.datasource.a g() {
        if (this.f10414i == null) {
            w1.c cVar = new w1.c();
            this.f10414i = cVar;
            d(cVar);
        }
        return this.f10414i;
    }

    private androidx.media3.datasource.a h() {
        if (this.f10409d == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f10409d = fileDataSource;
            d(fileDataSource);
        }
        return this.f10409d;
    }

    private androidx.media3.datasource.a i() {
        if (this.f10415j == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f10406a);
            this.f10415j = rawResourceDataSource;
            d(rawResourceDataSource);
        }
        return this.f10415j;
    }

    private androidx.media3.datasource.a j() {
        if (this.f10412g == null) {
            try {
                androidx.media3.datasource.a aVar = (androidx.media3.datasource.a) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                this.f10412g = aVar;
                d(aVar);
            } catch (ClassNotFoundException unused) {
                u.h("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating RTMP extension", e10);
            }
            if (this.f10412g == null) {
                this.f10412g = this.f10408c;
            }
        }
        return this.f10412g;
    }

    private androidx.media3.datasource.a k() {
        if (this.f10413h == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.f10413h = udpDataSource;
            d(udpDataSource);
        }
        return this.f10413h;
    }

    private void l(androidx.media3.datasource.a aVar, n nVar) {
        if (aVar != null) {
            aVar.c(nVar);
        }
    }

    @Override
    public long a(h hVar) {
        androidx.media3.common.util.a.g(this.f10416k == null);
        String scheme = hVar.f74097a.getScheme();
        if (a1.J0(hVar.f74097a)) {
            String path = hVar.f74097a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                this.f10416k = h();
            } else {
                this.f10416k = e();
            }
        } else if ("asset".equals(scheme)) {
            this.f10416k = e();
        } else if ("content".equals(scheme)) {
            this.f10416k = f();
        } else if ("rtmp".equals(scheme)) {
            this.f10416k = j();
        } else if ("udp".equals(scheme)) {
            this.f10416k = k();
        } else if ("data".equals(scheme)) {
            this.f10416k = g();
        } else if (com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) || "android.resource".equals(scheme)) {
            this.f10416k = i();
        } else {
            this.f10416k = this.f10408c;
        }
        return this.f10416k.a(hVar);
    }

    @Override
    public void c(n nVar) {
        androidx.media3.common.util.a.e(nVar);
        this.f10408c.c(nVar);
        this.f10407b.add(nVar);
        l(this.f10409d, nVar);
        l(this.f10410e, nVar);
        l(this.f10411f, nVar);
        l(this.f10412g, nVar);
        l(this.f10413h, nVar);
        l(this.f10414i, nVar);
        l(this.f10415j, nVar);
    }

    @Override
    public void close() {
        androidx.media3.datasource.a aVar = this.f10416k;
        if (aVar != null) {
            try {
                aVar.close();
            } finally {
                this.f10416k = null;
            }
        }
    }

    @Override
    public Map getResponseHeaders() {
        androidx.media3.datasource.a aVar = this.f10416k;
        return aVar == null ? Collections.emptyMap() : aVar.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        androidx.media3.datasource.a aVar = this.f10416k;
        if (aVar == null) {
            return null;
        }
        return aVar.getUri();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        return ((androidx.media3.datasource.a) androidx.media3.common.util.a.e(this.f10416k)).read(bArr, i10, i11);
    }
}
