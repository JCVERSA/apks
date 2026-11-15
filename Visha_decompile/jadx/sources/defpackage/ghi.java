package defpackage;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.datasource.RawResourceDataSource;
import androidx.media3.datasource.rtmp.RtmpDataSource;
import com.transsion.livecaption.constant.ICode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class ghi implements v9i {
    public final Context a;
    public final List b = new ArrayList();
    public final v9i c;
    public v9i d;
    public v9i e;
    public v9i f;
    public v9i g;
    public v9i h;
    public v9i i;
    public v9i j;
    public v9i k;

    public ghi(Context context, v9i v9iVar) {
        this.a = context.getApplicationContext();
        this.c = v9iVar;
    }

    public static final void m(v9i v9iVar, ixi ixiVar) {
        if (v9iVar != null) {
            v9iVar.c(ixiVar);
        }
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) {
        v9i v9iVar = this.k;
        v9iVar.getClass();
        return v9iVar.b(bArr, i, i2);
    }

    @Override
    public final void c(ixi ixiVar) {
        ixiVar.getClass();
        this.c.c(ixiVar);
        this.b.add(ixiVar);
        m(this.d, ixiVar);
        m(this.e, ixiVar);
        m(this.f, ixiVar);
        m(this.g, ixiVar);
        m(this.h, ixiVar);
        m(this.i, ixiVar);
        m(this.j, ixiVar);
    }

    @Override
    public final long j(cfi cfiVar) {
        v9i v9iVar;
        n7g.f(this.k == null);
        Uri uri = cfiVar.a;
        String scheme = uri.getScheme();
        int i = kfh.a;
        String scheme2 = uri.getScheme();
        if (TextUtils.isEmpty(scheme2) || "file".equals(scheme2)) {
            String path = uri.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.d == null) {
                    voi voiVar = new voi();
                    this.d = voiVar;
                    l(voiVar);
                }
                this.k = this.d;
            } else {
                this.k = k();
            }
        } else if ("asset".equals(scheme)) {
            this.k = k();
        } else if (ICode.CALL.CALL_KEY_CONTENT.equals(scheme)) {
            if (this.f == null) {
                m7i m7iVar = new m7i(this.a);
                this.f = m7iVar;
                l(m7iVar);
            }
            this.k = this.f;
        } else if ("rtmp".equals(scheme)) {
            if (this.g == null) {
                try {
                    int i2 = RtmpDataSource.a;
                    v9i v9iVar2 = (v9i) RtmpDataSource.class.getConstructor(null).newInstance(null);
                    this.g = v9iVar2;
                    l(v9iVar2);
                } catch (ClassNotFoundException unused) {
                    zrg.f("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating RTMP extension", e);
                }
                if (this.g == null) {
                    this.g = this.c;
                }
            }
            this.k = this.g;
        } else if ("udp".equals(scheme)) {
            if (this.h == null) {
                azi aziVar = new azi(2000);
                this.h = aziVar;
                l(aziVar);
            }
            this.k = this.h;
        } else if ("data".equals(scheme)) {
            if (this.i == null) {
                d8i d8iVar = new d8i();
                this.i = d8iVar;
                l(d8iVar);
            }
            this.k = this.i;
        } else {
            if (RawResourceDataSource.RAW_RESOURCE_SCHEME.equals(scheme) || "android.resource".equals(scheme)) {
                if (this.j == null) {
                    vvi vviVar = new vvi(this.a);
                    this.j = vviVar;
                    l(vviVar);
                }
                v9iVar = this.j;
            } else {
                v9iVar = this.c;
            }
            this.k = v9iVar;
        }
        return this.k.j(cfiVar);
    }

    public final v9i k() {
        if (this.e == null) {
            z3i z3iVar = new z3i(this.a);
            this.e = z3iVar;
            l(z3iVar);
        }
        return this.e;
    }

    public final void l(v9i v9iVar) {
        int i = 0;
        while (true) {
            List list = this.b;
            if (i >= list.size()) {
                return;
            }
            v9iVar.c((ixi) list.get(i));
            i++;
        }
    }

    @Override
    public final Uri zzc() {
        v9i v9iVar = this.k;
        if (v9iVar == null) {
            return null;
        }
        return v9iVar.zzc();
    }

    @Override
    public final void zzd() {
        v9i v9iVar = this.k;
        if (v9iVar != null) {
            try {
                v9iVar.zzd();
            } finally {
                this.k = null;
            }
        }
    }

    @Override
    public final Map zze() {
        v9i v9iVar = this.k;
        return v9iVar == null ? Collections.emptyMap() : v9iVar.zze();
    }
}
