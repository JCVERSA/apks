package defpackage;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzdqm;
import java.util.Map;
import java.util.concurrent.Executor;

public final class tjg {
    public final izf a;
    public final r8g b;
    public final u0g c;
    public final h1g d;
    public final w1g e;
    public final r4g f;
    public final Executor g;
    public final k8g h;
    public final oqf i;
    public final zzb j;
    public final ddf k;
    public final fre l;
    public final i4g m;
    public final dwg n;
    public final wth o;
    public final smg p;
    public final wpf q;
    public final yjg r;

    public tjg(izf izfVar, u0g u0gVar, h1g h1gVar, w1g w1gVar, r4g r4gVar, Executor executor, k8g k8gVar, oqf oqfVar, zzb zzbVar, ddf ddfVar, fre freVar, i4g i4gVar, dwg dwgVar, wth wthVar, smg smgVar, r8g r8gVar, wpf wpfVar, yjg yjgVar) {
        this.a = izfVar;
        this.c = u0gVar;
        this.d = h1gVar;
        this.e = w1gVar;
        this.f = r4gVar;
        this.g = executor;
        this.h = k8gVar;
        this.i = oqfVar;
        this.j = zzbVar;
        this.k = ddfVar;
        this.l = freVar;
        this.m = i4gVar;
        this.n = dwgVar;
        this.o = wthVar;
        this.p = smgVar;
        this.b = r8gVar;
        this.q = wpfVar;
        this.r = yjgVar;
    }

    public static boolean h(tjg tjgVar, View view, MotionEvent motionEvent) {
        if (((Boolean) zzbd.zzc().b(cye.ga)).booleanValue() && motionEvent != null && motionEvent.getAction() == 0) {
            tjgVar.r.b(motionEvent);
        }
        tjgVar.j.zza();
        if (view == null) {
            return false;
        }
        view.performClick();
        return false;
    }

    public static final im5 j(ejf ejfVar, String str, String str2, final Bundle bundle) {
        if (((Boolean) zzbd.zzc().b(cye.s2)).booleanValue()) {
            bundle.putLong(zzdqm.RENDERING_WEBVIEW_LOAD_HTML_START.zza(), zzv.zzC().currentTimeMillis());
        }
        final eff effVar = new eff();
        ejfVar.zzN().v(new gkf() {
            @Override
            public final void zza(boolean z, int i, String str3, String str4) {
                eff effVar2 = effVar;
                if (z) {
                    if (((Boolean) zzbd.zzc().b(cye.s2)).booleanValue()) {
                        bundle.putLong(zzdqm.RENDERING_WEBVIEW_LOAD_HTML_END.zza(), zzv.zzC().currentTimeMillis());
                    }
                    effVar2.c(null);
                    return;
                }
                effVar2.d(new Exception("Ad Web View failed to load. Error code: " + i + ", Description: " + str3 + ", Failing URL: " + str4));
            }
        });
        ejfVar.zzae(str, str2, null);
        return effVar;
    }

    public final void i(final ejf ejfVar, boolean z, q3f q3fVar, Bundle bundle) {
        are areVarC;
        qxe qxeVar = cye.s2;
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            bundle.putLong(zzdqm.RENDERING_CONFIGURE_WEBVIEW_START.zza(), zzv.zzC().currentTimeMillis());
        }
        ejfVar.zzN().d(new zza() {
            @Override
            public final void onAdClicked() {
                this.b.a.onAdClicked();
            }
        }, this.d, this.e, new z1f() {
            @Override
            public final void zzb(String str, String str2) {
                this.b.f.zzb(str, str2);
            }
        }, new zzac() {
            @Override
            public final void zzg() {
                this.b.c.zzb();
            }
        }, z, q3fVar, this.j, new sjg(this), this.k, this.n, this.o, this.p, null, this.b, null, null, null, this.q);
        ejfVar.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                tjg.h(this.b, view, motionEvent);
                return false;
            }
        });
        ejfVar.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.j.zza();
            }
        });
        if (((Boolean) zzbd.zzc().b(cye.Q2)).booleanValue() && (areVarC = this.l.c()) != null) {
            areVarC.zzo(ejfVar.zzF());
        }
        k8g k8gVar = this.h;
        Executor executor = this.g;
        k8gVar.C(ejfVar, executor);
        k8gVar.C(new iue() {
            @Override
            public final void zzdn(hue hueVar) {
                ikf ikfVarZzN = ejfVar.zzN();
                Rect rect = hueVar.d;
                ikfVarZzN.e(rect.left, rect.top, false);
            }
        }, executor);
        k8gVar.F(ejfVar.zzF());
        ejfVar.zzag("/trackActiveViewUnit", new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                this.a.i.c(ejfVar);
            }
        });
        this.i.d(ejfVar);
        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
            bundle.putLong(zzdqm.RENDERING_CONFIGURE_WEBVIEW_END.zza(), zzv.zzC().currentTimeMillis());
        }
    }
}
