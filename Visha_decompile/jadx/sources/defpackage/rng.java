package defpackage;

import android.content.Context;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzbvk;
import com.google.android.gms.internal.ads.zzffn;
import java.util.Collections;
import java.util.List;

public final class rng implements AppEventListener, p2g, zza, kzf, d0g, e0g, b1g, nzf, mrh {
    public final List b;
    public final dng c;
    public long d;

    public rng(dng dngVar, lkf lkfVar) {
        this.c = dngVar;
        this.b = Collections.singletonList(lkfVar);
    }

    @Override
    public final void A(zze zzeVar) {
        s(nzf.class, "onAdFailedToLoad", Integer.valueOf(zzeVar.zza), zzeVar.zzb, zzeVar.zzc);
    }

    @Override
    public final void a(zzbvk zzbvkVar, String str, String str2) {
        s(kzf.class, "onRewarded", zzbvkVar, str, str2);
    }

    @Override
    public final void b(Context context) {
        s(e0g.class, "onDestroy", context);
    }

    @Override
    public final void g(zzbuy zzbuyVar) {
        this.d = zzv.zzC().elapsedRealtime();
        s(p2g.class, "onAdRequest", new Object[0]);
    }

    @Override
    public final void h(zzffn zzffnVar, String str) {
        s(frh.class, "onTaskStarted", str);
    }

    @Override
    public final void k(Context context) {
        s(e0g.class, "onPause", context);
    }

    @Override
    public final void n(Context context) {
        s(e0g.class, "onResume", context);
    }

    @Override
    public final void o(zzffn zzffnVar, String str, Throwable th) {
        s(frh.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override
    public final void onAdClicked() {
        s(zza.class, "onAdClicked", new Object[0]);
    }

    @Override
    public final void onAppEvent(String str, String str2) {
        s(AppEventListener.class, "onAppEvent", str, str2);
    }

    @Override
    public final void p(zzffn zzffnVar, String str) {
        s(frh.class, "onTaskCreated", str);
    }

    @Override
    public final void q(zzffn zzffnVar, String str) {
        s(frh.class, "onTaskSucceeded", str);
    }

    public final void s(Class cls, String str, Object... objArr) {
        this.c.a(this.b, "Event-".concat(cls.getSimpleName()), str, objArr);
    }

    @Override
    public final void w(vmh vmhVar) {
    }

    @Override
    public final void zza() {
        s(kzf.class, "onAdClosed", new Object[0]);
    }

    @Override
    public final void zzb() {
        s(kzf.class, "onAdLeftApplication", new Object[0]);
    }

    @Override
    public final void zzc() {
        s(kzf.class, "onAdOpened", new Object[0]);
    }

    @Override
    public final void zze() {
        s(kzf.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override
    public final void zzf() {
        s(kzf.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override
    public final void zzs() {
        s(d0g.class, "onAdImpression", new Object[0]);
    }

    @Override
    public final void zzt() {
        com.google.android.gms.ads.internal.util.zze.zza("Ad Request Latency : " + (zzv.zzC().elapsedRealtime() - this.d));
        s(b1g.class, "onAdLoaded", new Object[0]);
    }
}
