package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;

public final class wcg implements iue {
    public final String b;
    public final zcg c;

    public wcg(zcg zcgVar, String str) {
        this.b = str;
        this.c = zcgVar;
    }

    @Override
    public final void zzdn(hue hueVar) {
        if (!((Boolean) zzbd.zzc().b(cye.V1)).booleanValue()) {
            if (hueVar.j) {
                zcg zcgVar = this.c;
                if (zcgVar.u != null) {
                    zcgVar.E.put(this.b, Boolean.TRUE);
                    if (zcgVar.u == null) {
                        return;
                    }
                    zcgVar.j(zcgVar.u.zzf(), zcgVar.u.zzl(), zcgVar.u.zzm(), true);
                    return;
                }
                return;
            }
            return;
        }
        synchronized (this) {
            try {
                if (hueVar.j) {
                    zcg zcgVar2 = this.c;
                    if (zcgVar2.u != null) {
                        zcgVar2.E.put(this.b, Boolean.TRUE);
                        if (zcgVar2.u == null) {
                        } else {
                            zcgVar2.j(zcgVar2.u.zzf(), zcgVar2.u.zzl(), zcgVar2.u.zzm(), true);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
