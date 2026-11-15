package defpackage;

import android.content.Context;
import android.view.View;
import androidx.collection.ArrayMap;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzebw;
import com.google.android.gms.internal.ads.zzebx;
import java.util.Iterator;

public final class fbg implements b1g, zzr, d0g {
    public final Context b;
    public final ejf c;
    public final hmh d;
    public final VersionInfoParcel e;
    public final axg f;
    public fxg g;

    public fbg(Context context, ejf ejfVar, hmh hmhVar, VersionInfoParcel versionInfoParcel, axg axgVar) {
        this.b = context;
        this.c = ejfVar;
        this.d = hmhVar;
        this.e = versionInfoParcel;
        this.f = axgVar;
    }

    private final boolean a() {
        return ((Boolean) zzbd.zzc().b(cye.p5)).booleanValue() && this.f.d();
    }

    @Override
    public final void zzdE() {
    }

    @Override
    public final void zzdi() {
    }

    @Override
    public final void zzdo() {
    }

    @Override
    public final void zzdp() {
        ejf ejfVar;
        if (((Boolean) zzbd.zzc().b(cye.s5)).booleanValue() || (ejfVar = this.c) == null) {
            return;
        }
        if (this.g != null || a()) {
            if (this.g != null) {
                ejfVar.zzd("onSdkImpression", new ArrayMap());
            } else {
                this.f.b();
            }
        }
    }

    @Override
    public final void zzdr() {
    }

    @Override
    public final void zzds(int i) {
        this.g = null;
    }

    @Override
    public final void zzs() {
        ejf ejfVar;
        if (a()) {
            this.f.b();
        } else {
            if (this.g == null || (ejfVar = this.c) == null) {
                return;
            }
            if (((Boolean) zzbd.zzc().b(cye.s5)).booleanValue()) {
                ejfVar.zzd("onSdkImpression", new ArrayMap());
            }
        }
    }

    @Override
    public final void zzt() {
        ejf ejfVar;
        zzebx zzebxVar;
        zzebw zzebwVar;
        hmh hmhVar = this.d;
        if (!hmhVar.T || (ejfVar = this.c) == null) {
            return;
        }
        if (zzv.zzB().a(this.b)) {
            if (a()) {
                this.f.c();
                return;
            }
            VersionInfoParcel versionInfoParcel = this.e;
            String str = versionInfoParcel.buddyApkVersion + Consts.DOT + versionInfoParcel.clientJarVersion;
            hnh hnhVar = hmhVar.V;
            String strA = hnhVar.a();
            if (hnhVar.c() == 1) {
                zzebwVar = zzebw.VIDEO;
                zzebxVar = zzebx.DEFINED_BY_JAVASCRIPT;
            } else {
                zzebxVar = hmhVar.Y == 2 ? zzebx.UNSPECIFIED : zzebx.BEGIN_TO_RENDER;
                zzebwVar = zzebw.HTML_DISPLAY;
            }
            fxg fxgVarD = zzv.zzB().d(str, ejfVar.zzG(), "", "javascript", strA, zzebxVar, zzebwVar, hmhVar.l0);
            this.g = fxgVarD;
            if (fxgVarD != null) {
                puh puhVarA = fxgVarD.a();
                if (((Boolean) zzbd.zzc().b(cye.o5)).booleanValue()) {
                    zzv.zzB().c(puhVarA, ejfVar.zzG());
                    Iterator it = ejfVar.zzV().iterator();
                    while (it.hasNext()) {
                        zzv.zzB().e(puhVarA, (View) it.next());
                    }
                } else {
                    zzv.zzB().c(puhVarA, ejfVar.zzF());
                }
                ejfVar.zzat(this.g);
                zzv.zzB().h(puhVarA);
                ejfVar.zzd("onSdkLoaded", new ArrayMap());
            }
        }
    }
}
