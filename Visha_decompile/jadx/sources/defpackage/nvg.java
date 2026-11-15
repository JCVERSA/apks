package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.a5;
import com.google.android.gms.internal.ads.x4;
import com.google.android.gms.internal.ads.y0;
import com.google.android.gms.internal.ads.z0;
import com.google.android.gms.internal.ads.zzffn;

public final class nvg implements mrh {
    public final pug b;
    public final x4 c;

    public nvg(pug pugVar, x4 x4Var) {
        this.b = pugVar;
        this.c = x4Var;
    }

    @Override
    public final void h(zzffn zzffnVar, String str) {
        if (((Boolean) zzbd.zzc().b(cye.i6)).booleanValue()) {
            if (zzffn.RENDERER == zzffnVar) {
                this.b.g(zzv.zzC().elapsedRealtime());
                return;
            }
            if (zzffn.PRELOADED_LOADER == zzffnVar || zzffn.SERVER_TRANSACTION == zzffnVar) {
                pug pugVar = this.b;
                pugVar.h(zzv.zzC().elapsedRealtime());
                final x4 x4Var = this.c;
                final long jD = pugVar.d();
                x4Var.b.a(new pqh() {
                    @Override
                    public final Object zza(Object obj) {
                        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                        if (x4Var.a()) {
                            return null;
                        }
                        long j = jD;
                        z0 z0VarE0 = y0.E0();
                        z0VarE0.G(j);
                        byte[] bArrL = ((y0) z0VarE0.q()).l();
                        a5.f(sQLiteDatabase, false, false);
                        a5.c(sQLiteDatabase, j, bArrL);
                        return null;
                    }
                });
            }
        }
    }

    @Override
    public final void o(zzffn zzffnVar, String str, Throwable th) {
        if (((Boolean) zzbd.zzc().b(cye.i6)).booleanValue() && zzffn.RENDERER == zzffnVar) {
            pug pugVar = this.b;
            if (pugVar.c() != 0) {
                pugVar.f(zzv.zzC().elapsedRealtime() - pugVar.c());
            }
        }
    }

    @Override
    public final void p(zzffn zzffnVar, String str) {
    }

    @Override
    public final void q(zzffn zzffnVar, String str) {
        if (((Boolean) zzbd.zzc().b(cye.i6)).booleanValue() && zzffn.RENDERER == zzffnVar) {
            pug pugVar = this.b;
            if (pugVar.c() != 0) {
                pugVar.f(zzv.zzC().elapsedRealtime() - pugVar.c());
            }
        }
    }
}
