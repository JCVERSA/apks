package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.api.internal.e;
import com.google.android.gms.common.api.internal.g;
import com.google.android.gms.internal.location.zzba;
import com.google.android.gms.location.a;
import defpackage.a3f;
import defpackage.as8;
import defpackage.bme;
import defpackage.fke;
import defpackage.io5;
import defpackage.jea;
import defpackage.no5;
import defpackage.td;
import defpackage.xda;
import defpackage.yda;
import defpackage.zda;
import defpackage.zue;

public class a extends com.google.android.gms.common.api.b {
    public a(Context context) {
        super(context, no5.a, com.google.android.gms.common.api.a.d.w6, new td());
    }

    public final xda A(final com.google.android.gms.internal.location.zzba zzbaVar, final io5 io5Var, Looper looper, final fke fkeVar, int i) {
        final d dVarA = e.a(io5Var, a3f.a(looper), io5.class.getSimpleName());
        final b bVar = new b(this, dVarA);
        return h(g.a().b(new as8(this, bVar, io5Var, fkeVar, zzbaVar, dVarA) {
            public final a a;
            public final bme b;
            public final io5 c;
            public final fke d;
            public final zzba e;
            public final d f;

            {
                this.a = this;
                this.b = bVar;
                this.c = io5Var;
                this.d = fkeVar;
                this.e = zzbaVar;
                this.f = dVarA;
            }

            @Override
            public final void accept(Object obj, Object obj2) {
                this.a.y(this.b, this.c, this.d, this.e, this.f, (zue) obj, (zda) obj2);
            }
        }).d(bVar).e(dVarA).c(i).a());
    }

    public xda v() {
        return g(yda.a().b(new as8(this) {
            public final a a;

            {
                this.a = this;
            }

            @Override
            public final void accept(Object obj, Object obj2) {
                this.a.z((zue) obj, (zda) obj2);
            }
        }).e(2414).a());
    }

    public xda w(io5 io5Var) {
        return jea.c(i(e.b(io5Var, io5.class.getSimpleName())));
    }

    public xda x(LocationRequest locationRequest, io5 io5Var, Looper looper) {
        return A(com.google.android.gms.internal.location.zzba.zza(null, locationRequest), io5Var, looper, null, 2436);
    }

    public final void y(final bme bmeVar, final io5 io5Var, final fke fkeVar, com.google.android.gms.internal.location.zzba zzbaVar, d dVar, zue zueVar, zda zdaVar) {
        zzam zzamVar = new zzam(zdaVar, new fke(this, bmeVar, io5Var, fkeVar) {
            public final a a;
            public final bme b;
            public final io5 c;
            public final fke d;

            {
                this.a = this;
                this.b = bmeVar;
                this.c = io5Var;
                this.d = fkeVar;
            }

            @Override
            public final void zza() {
                a aVar = this.a;
                bme bmeVar2 = this.b;
                io5 io5Var2 = this.c;
                fke fkeVar2 = this.d;
                bmeVar2.b(false);
                aVar.w(io5Var2);
                if (fkeVar2 != null) {
                    fkeVar2.zza();
                }
            }
        });
        zzbaVar.zzc(o());
        zueVar.M(zzbaVar, dVar, zzamVar);
    }

    public final void z(zue zueVar, zda zdaVar) {
        zdaVar.c(zueVar.O(o()));
    }
}
