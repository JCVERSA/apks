package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzbki;
import com.google.android.gms.internal.ads.zzbwa;

public final class yng {
    public final zzbki a;

    public yng(zzbki zzbkiVar) {
        this.a = zzbkiVar;
    }

    public final void a() {
        s(new wng("initialize", null));
    }

    public final void b(long j) throws RemoteException {
        wng wngVar = new wng("interstitial", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onAdClicked";
        this.a.zzb(wng.a(wngVar));
    }

    public final void c(long j) throws RemoteException {
        wng wngVar = new wng("interstitial", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onAdClosed";
        s(wngVar);
    }

    public final void d(long j, int i) throws RemoteException {
        wng wngVar = new wng("interstitial", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onAdFailedToLoad";
        wngVar.d = Integer.valueOf(i);
        s(wngVar);
    }

    public final void e(long j) throws RemoteException {
        wng wngVar = new wng("interstitial", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onAdLoaded";
        s(wngVar);
    }

    public final void f(long j) {
        wng wngVar = new wng("interstitial", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onNativeAdObjectNotAvailable";
        s(wngVar);
    }

    public final void g(long j) throws RemoteException {
        wng wngVar = new wng("interstitial", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onAdOpened";
        s(wngVar);
    }

    public final void h(long j) {
        wng wngVar = new wng("creation", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "nativeObjectCreated";
        s(wngVar);
    }

    public final void i(long j) {
        wng wngVar = new wng("creation", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "nativeObjectNotCreated";
        s(wngVar);
    }

    public final void j(long j) throws RemoteException {
        wng wngVar = new wng("rewarded", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onAdClicked";
        s(wngVar);
    }

    public final void k(long j) throws RemoteException {
        wng wngVar = new wng("rewarded", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onRewardedAdClosed";
        s(wngVar);
    }

    public final void l(long j, zzbwa zzbwaVar) throws RemoteException {
        wng wngVar = new wng("rewarded", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onUserEarnedReward";
        wngVar.e = zzbwaVar.zzf();
        wngVar.f = Integer.valueOf(zzbwaVar.zze());
        s(wngVar);
    }

    public final void m(long j, int i) throws RemoteException {
        wng wngVar = new wng("rewarded", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onRewardedAdFailedToLoad";
        wngVar.d = Integer.valueOf(i);
        s(wngVar);
    }

    public final void n(long j, int i) throws RemoteException {
        wng wngVar = new wng("rewarded", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onRewardedAdFailedToShow";
        wngVar.d = Integer.valueOf(i);
        s(wngVar);
    }

    public final void o(long j) throws RemoteException {
        wng wngVar = new wng("rewarded", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onAdImpression";
        s(wngVar);
    }

    public final void p(long j) throws RemoteException {
        wng wngVar = new wng("rewarded", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onRewardedAdLoaded";
        s(wngVar);
    }

    public final void q(long j) {
        wng wngVar = new wng("rewarded", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onNativeAdObjectNotAvailable";
        s(wngVar);
    }

    public final void r(long j) throws RemoteException {
        wng wngVar = new wng("rewarded", null);
        wngVar.a = Long.valueOf(j);
        wngVar.c = "onRewardedAdOpened";
        s(wngVar);
    }

    public final void s(wng wngVar) throws RemoteException {
        String strA = wng.a(wngVar);
        String strConcat = "Dispatching AFMA event on publisher webview: ".concat(strA);
        int i = zze.zza;
        zzo.zzi(strConcat);
        this.a.zzb(strA);
    }
}
