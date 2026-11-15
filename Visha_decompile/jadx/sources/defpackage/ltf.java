package defpackage;

import android.content.Context;
import android.view.View;
import androidx.collection.ArrayMap;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzebw;
import com.google.android.gms.internal.ads.zzebx;
import java.util.Iterator;

public final class ltf implements b1g, d0g {
    public final Context b;
    public final ejf c;
    public final hmh d;
    public final VersionInfoParcel e;
    public fxg f;
    public boolean g;
    public final axg h;

    public ltf(Context context, ejf ejfVar, hmh hmhVar, VersionInfoParcel versionInfoParcel, axg axgVar) {
        this.b = context;
        this.c = ejfVar;
        this.d = hmhVar;
        this.e = versionInfoParcel;
        this.h = axgVar;
    }

    private final synchronized void a() {
        ejf ejfVar;
        zzebx zzebxVar;
        zzebw zzebwVar;
        try {
            hmh hmhVar = this.d;
            if (hmhVar.T && (ejfVar = this.c) != null) {
                if (zzv.zzB().a(this.b)) {
                    VersionInfoParcel versionInfoParcel = this.e;
                    String str = versionInfoParcel.buddyApkVersion + Consts.DOT + versionInfoParcel.clientJarVersion;
                    hnh hnhVar = hmhVar.V;
                    String strA = hnhVar.a();
                    if (hnhVar.c() == 1) {
                        zzebwVar = zzebw.VIDEO;
                        zzebxVar = zzebx.DEFINED_BY_JAVASCRIPT;
                    } else {
                        int i = hmhVar.e;
                        zzebw zzebwVar2 = zzebw.HTML_DISPLAY;
                        zzebxVar = i == 1 ? zzebx.ONE_PIXEL : zzebx.BEGIN_TO_RENDER;
                        zzebwVar = zzebwVar2;
                    }
                    fxg fxgVarD = zzv.zzB().d(str, ejfVar.zzG(), "", "javascript", strA, zzebxVar, zzebwVar, hmhVar.l0);
                    this.f = fxgVarD;
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
                        ejfVar.zzat(this.f);
                        zzv.zzB().h(puhVarA);
                        this.g = true;
                        ejfVar.zzd("onSdkLoaded", new ArrayMap());
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean b() {
        return ((Boolean) zzbd.zzc().b(cye.p5)).booleanValue() && this.h.d();
    }

    @Override
    public final synchronized void zzs() {
        ejf ejfVar;
        if (b()) {
            this.h.b();
            return;
        }
        if (!this.g) {
            a();
        }
        if (!this.d.T || this.f == null || (ejfVar = this.c) == null) {
            return;
        }
        ejfVar.zzd("onSdkImpression", new ArrayMap());
    }

    @Override
    public final synchronized void zzt() {
        if (b()) {
            this.h.c();
        } else {
            if (this.g) {
                return;
            }
            a();
        }
    }
}
