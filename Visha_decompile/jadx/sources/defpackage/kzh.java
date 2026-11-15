package defpackage;

import java.net.HttpURLConnection;

public final class kzh extends azh {
    public k3i b;
    public k3i c;
    public gzh d;
    public HttpURLConnection e;

    public kzh(k3i k3iVar, k3i k3iVar2, gzh gzhVar) {
        this.b = k3iVar;
        this.c = k3iVar2;
        this.d = gzhVar;
    }

    public static Integer d() {
        return -1;
    }

    public static Integer e() {
        return -1;
    }

    public static void o(HttpURLConnection httpURLConnection) {
        bzh.a();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override
    public void close() {
        o(this.e);
    }

    public HttpURLConnection k() {
        bzh.b(((Integer) this.b.zza()).intValue(), ((Integer) this.c.zza()).intValue());
        gzh gzhVar = this.d;
        gzhVar.getClass();
        HttpURLConnection httpURLConnection = (HttpURLConnection) gzhVar.zza();
        this.e = httpURLConnection;
        return httpURLConnection;
    }

    public HttpURLConnection n(gzh gzhVar, final int i, final int i2) {
        this.b = new k3i() {
            @Override
            public final Object zza() {
                return Integer.valueOf(i);
            }
        };
        this.c = new k3i() {
            @Override
            public final Object zza() {
                return Integer.valueOf(i2);
            }
        };
        this.d = gzhVar;
        return k();
    }

    public kzh() {
        this(new k3i() {
            @Override
            public final Object zza() {
                return kzh.d();
            }
        }, new k3i() {
            @Override
            public final Object zza() {
                return kzh.e();
            }
        }, null);
    }
}
