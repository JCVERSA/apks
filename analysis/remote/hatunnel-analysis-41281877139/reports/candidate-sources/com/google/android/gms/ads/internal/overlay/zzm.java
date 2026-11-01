package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.Toolbar;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbif;
import com.google.android.gms.internal.ads.zzbix;
import com.google.android.gms.internal.ads.zzbjg;
import com.google.android.gms.internal.ads.zzbox;
import com.google.android.gms.internal.ads.zzboz;
import com.google.android.gms.internal.ads.zzbyy;
import com.google.android.gms.internal.ads.zzbzm;
import com.google.android.gms.internal.ads.zzbzs;
import com.google.android.gms.internal.ads.zzclm;
import com.google.android.gms.internal.ads.zzcmc;
import com.google.android.gms.internal.ads.zzcnk;
import com.google.android.gms.internal.ads.zzcnw;
import com.google.android.gms.internal.ads.zzdec;
import com.google.android.gms.internal.ads.zzdlw;
import com.google.android.gms.internal.ads.zzeai;
import com.google.android.gms.internal.ads.zzeaj;
import com.google.android.gms.internal.ads.zzelq;
import com.google.android.gms.internal.ads.zzelr;
import com.google.android.gms.internal.ads.zzemj;
import com.google.android.gms.internal.ads.zzeml;
import com.google.android.gms.internal.ads.zzgbp;
import com.google.android.gms.internal.ads.zzgvb;
import java.util.Collections;

public class zzm extends zzbzs implements zzah {
    static final int zza = Color.argb(0, 0, 0, 0);
    public static final int zzp = 0;
    protected final Activity zzb;
    AdOverlayInfoParcel zzc;
    zzclm zzd;
    zzj zze;
    zzu zzf;
    FrameLayout zzh;
    WebChromeClient.CustomViewCallback zzi;
    zzi zzl;
    private Runnable zzs;
    private boolean zzt;
    private boolean zzu;
    private Toolbar zzy;
    boolean zzg = false;
    boolean zzj = false;
    boolean zzk = false;
    boolean zzm = false;
    int zzo = 1;
    int zzn = 0;
    private final Object zzq = new Object();
    private final View.OnClickListener zzr = new zzd(this);
    private boolean zzv = false;
    private boolean zzw = false;
    private boolean zzx = true;

    public zzm(Activity activity) {
        this.zzb = activity;
    }

    private final void zzI(View view) {
        zzeml zzemlVarZzU;
        zzemj zzemjVarZzV;
        zzclm zzclmVar = this.zzd;
        if (zzclmVar == null) {
            return;
        }
        if (((Boolean) zzba.zzc().zzd(zzbjg.zzgt)).booleanValue() && (zzemjVarZzV = zzclmVar.zzV()) != null) {
            zzemjVarZzV.zzf(view);
        } else if (((Boolean) zzba.zzc().zzd(zzbjg.zzgs)).booleanValue() && (zzemlVarZzU = zzclmVar.zzU()) != null && zzemlVarZzU.zzb()) {
            com.google.android.gms.ads.internal.zzt.zzu().zzg(zzemlVarZzU.zza(), view);
        }
    }

    private static final void zzJ(zzeml zzemlVar, View view) {
        if (zzemlVar == null || view == null) {
            return;
        }
        if (((Boolean) zzba.zzc().zzd(zzbjg.zzgs)).booleanValue() && zzemlVar.zzb()) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzu().zzh(zzemlVar.zza(), view);
    }

    final void zzA() {
        zzclm zzclmVar;
        zzr zzrVar;
        if (this.zzw) {
            return;
        }
        this.zzw = true;
        zzclm zzclmVar2 = this.zzd;
        if (zzclmVar2 != null) {
            this.zzl.removeView(zzclmVar2.zzE());
            zzj zzjVar = this.zze;
            if (zzjVar != null) {
                this.zzd.zzai(zzjVar.zzd);
                this.zzd.zzag(false);
                if (((Boolean) zzba.zzc().zzd(zzbjg.zzor)).booleanValue() && this.zzd.getParent() != null) {
                    ((ViewGroup) this.zzd.getParent()).removeView(this.zzd.zzE());
                }
                ViewGroup viewGroup = this.zze.zzc;
                View viewZzE = this.zzd.zzE();
                zzj zzjVar2 = this.zze;
                viewGroup.addView(viewZzE, zzjVar2.zza, zzjVar2.zzb);
                this.zze = null;
            } else {
                Activity activity = this.zzb;
                if (activity.getApplicationContext() != null) {
                    this.zzd.zzai(activity.getApplicationContext());
                }
            }
            this.zzd = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdW(this.zzo);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
        if (adOverlayInfoParcel2 == null || (zzclmVar = adOverlayInfoParcel2.zzd) == null) {
            return;
        }
        zzJ(zzclmVar.zzU(), this.zzc.zzd.zzE());
    }

    public final void zzB() {
        if (this.zzm) {
            this.zzm = false;
            zzC();
        }
    }

    protected final void zzC() {
        this.zzd.zzI();
    }

    public final void zzD() {
        this.zzl.zzb = true;
    }

    public final void zzE() {
        synchronized (this.zzq) {
            this.zzt = true;
            if (this.zzs != null) {
                zzgbp zzgbpVar = com.google.android.gms.ads.internal.util.zzs.zza;
                zzgbpVar.removeCallbacks(this.zzs);
                zzgbpVar.post(this.zzs);
            }
        }
    }

    public final void zzF(zzelr zzelrVar) throws RemoteException, zzh {
        zzbzm zzbzmVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzbzmVar = adOverlayInfoParcel.zzv) == null) {
            throw new zzh(ProtectedFastSSH.s("㦂"));
        }
        zzbzmVar.zzh(ObjectWrapper.wrap(zzelrVar));
    }

    @Override
    public final void zzG(int i, String[] strArr, int[] iArr) {
        if (i == 12345) {
            Activity activity = this.zzb;
            zzelq zzelqVarZze = zzelr.zze();
            zzelqVarZze.zza(activity);
            zzelqVarZze.zzb(this.zzc.zzk == 5 ? this : null);
            try {
                this.zzc.zzv.zzi(strArr, iArr, ObjectWrapper.wrap(zzelqVarZze.zze()));
            } catch (RemoteException unused) {
            }
        }
    }

    public final void zza() {
        this.zzo = 3;
        Activity activity = this.zzb;
        activity.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.zzk != 5) {
            return;
        }
        activity.overridePendingTransition(0, 0);
        zzclm zzclmVar = this.zzd;
        if (zzclmVar != null) {
            zzclmVar.zzae(null);
        }
    }

    public final void zzb() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && this.zzg) {
            zzv(adOverlayInfoParcel.zzj);
        }
        if (this.zzh != null) {
            this.zzb.setContentView(this.zzl);
            this.zzu = true;
            this.zzh.removeAllViews();
            this.zzh = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.zzi;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.zzi = null;
        }
        this.zzg = false;
    }

    @Override
    public final void zzc() {
        this.zzo = 2;
        this.zzb.finish();
    }

    @Override
    public final void zzd() {
        this.zzo = 1;
    }

    @Override
    public final void zze() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzrVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        zzrVar.zzdv();
    }

    @Override
    public final boolean zzf() {
        this.zzo = 1;
        if (this.zzd == null) {
            return true;
        }
        if (((Boolean) zzba.zzc().zzd(zzbjg.zzkv)).booleanValue() && this.zzd.canGoBack()) {
            this.zzd.goBack();
            return false;
        }
        boolean zZzZ = this.zzd.zzZ();
        if (!zZzZ) {
            this.zzd.zze(ProtectedFastSSH.s("㦃"), Collections.EMPTY_MAP);
        }
        return zZzZ;
    }

    @Override
    public void zzg(Bundle bundle) {
        zzr zzrVar;
        if (!this.zzu) {
            this.zzb.requestWindowFeature(1);
        }
        this.zzj = bundle != null && bundle.getBoolean(ProtectedFastSSH.s("㦄"), false);
        try {
            Activity activity = this.zzb;
            AdOverlayInfoParcel adOverlayInfoParcelZza = AdOverlayInfoParcel.zza(activity.getIntent());
            this.zzc = adOverlayInfoParcelZza;
            if (adOverlayInfoParcelZza == null) {
                throw new zzh(ProtectedFastSSH.s("㦇"));
            }
            if (adOverlayInfoParcelZza.zzw) {
                if (Build.VERSION.SDK_INT >= 28) {
                    zzy$$ExternalSyntheticApiModelOutline0.m(activity, true);
                } else {
                    activity.getWindow().addFlags(524288);
                }
            }
            if (this.zzc.zzm.clientJarVersion > 7500000) {
                this.zzo = 4;
            }
            if (activity.getIntent() != null) {
                this.zzx = activity.getIntent().getBooleanExtra(ProtectedFastSSH.s("㦅"), true);
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
            com.google.android.gms.ads.internal.zzl zzlVar = adOverlayInfoParcel.zzo;
            if (zzlVar != null) {
                boolean z = zzlVar.zza;
                this.zzk = z;
                this.zzn = (int) zzlVar.zze;
                if (z) {
                    if (adOverlayInfoParcel.zzk != 5 && zzlVar.zzf != -1) {
                        new zzl(this, null).zzb();
                    }
                }
            } else if (adOverlayInfoParcel.zzk == 5) {
                this.zzk = true;
                if (adOverlayInfoParcel.zzk != 5) {
                    new zzl(this, null).zzb();
                }
            } else {
                this.zzk = false;
            }
            if (bundle == null) {
                if (this.zzx) {
                    zzdec zzdecVar = this.zzc.zzt;
                    if (zzdecVar != null) {
                        zzdecVar.zza();
                    }
                    zzr zzrVar2 = this.zzc.zzc;
                    if (zzrVar2 != null) {
                        zzrVar2.zzh();
                    }
                }
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
                if (adOverlayInfoParcel2.zzk != 1) {
                    com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel2.zzb;
                    if (zzaVar != null) {
                        zzaVar.onAdClicked();
                    }
                    zzdlw zzdlwVar = this.zzc.zzu;
                    if (zzdlwVar != null) {
                        zzdlwVar.zzdu();
                    }
                }
            }
            AdOverlayInfoParcel adOverlayInfoParcel3 = this.zzc;
            if (adOverlayInfoParcel3 != null && (zzrVar = adOverlayInfoParcel3.zzc) != null) {
                zzrVar.zzdo();
            }
            AdOverlayInfoParcel adOverlayInfoParcel4 = this.zzc;
            zzi zziVar = new zzi(activity, adOverlayInfoParcel4.zzn, adOverlayInfoParcel4.zzm.afmaVersion, adOverlayInfoParcel4.zzs);
            this.zzl = zziVar;
            zziVar.setId(1000);
            com.google.android.gms.ads.internal.zzt.zzf().zzh(activity);
            AdOverlayInfoParcel adOverlayInfoParcel5 = this.zzc;
            int i = adOverlayInfoParcel5.zzk;
            if (i == 1) {
                zzx(false);
                return;
            }
            if (i == 2) {
                this.zze = new zzj(adOverlayInfoParcel5.zzd);
                zzx(false);
            } else if (i == 3) {
                zzx(true);
            } else {
                if (i != 5) {
                    throw new zzh(ProtectedFastSSH.s("㦆"));
                }
                zzx(false);
            }
        } catch (zzh e) {
            String message = e.getMessage();
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(message);
            this.zzo = 4;
            this.zzb.finish();
        }
    }

    @Override
    public final void zzh() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzrVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        zzrVar.zzdq();
    }

    @Override
    public final void zzi() {
        zzr zzrVar;
        if (((Boolean) zzba.zzc().zzd(zzbjg.zzgh)).booleanValue()) {
            zzclm zzclmVar = this.zzd;
            if (zzclmVar == null || zzclmVar.zzX()) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("㦈"));
            } else {
                this.zzd.onResume();
            }
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzrVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        zzrVar.zzdp();
    }

    @Override
    public final void zzj() {
        com.google.android.gms.ads.internal.zzl zzlVar;
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdx();
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
        boolean z = (adOverlayInfoParcel2 == null || (zzlVar = adOverlayInfoParcel2.zzo) == null || !zzlVar.zzg) ? false : true;
        Window window = this.zzb.getWindow();
        if (((Boolean) zzba.zzc().zzd(zzbjg.zzbV)).booleanValue()) {
            window.getDecorView().setSystemUiVisibility(true != z ? 5380 : 5894);
        } else {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (z) {
                window.getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
            }
        }
        if (((Boolean) zzba.zzc().zzd(zzbjg.zzpk)).booleanValue() && Build.VERSION.SDK_INT <= 34 && Build.VERSION.SDK_INT >= 28) {
            zzy$$ExternalSyntheticApiModelOutline0.m(window.getAttributes(), 1);
            WindowCompat.setDecorFitsSystemWindows(window, false);
        }
        if (((Boolean) zzba.zzc().zzd(zzbjg.zzgh)).booleanValue()) {
            return;
        }
        zzclm zzclmVar = this.zzd;
        if (zzclmVar != null && !zzclmVar.zzX()) {
            this.zzd.onResume();
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("㦈"));
        }
    }

    @Override
    public final void zzk() {
        zzr zzrVar;
        zzb();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdw();
        }
        if (!((Boolean) zzba.zzc().zzd(zzbjg.zzgh)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzz();
    }

    @Override
    public final void zzl(int i, int i2, Intent intent) {
        zzeaj zzeajVarZzI;
        AdOverlayInfoParcel adOverlayInfoParcel;
        if (i == 236) {
            zzbix zzbixVar = zzbjg.zzoV;
            if (((Boolean) zzba.zzc().zzd(zzbixVar)).booleanValue()) {
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 66);
                sb.append(ProtectedFastSSH.s("㦉"));
                sb.append(i2);
                com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
                zzclm zzclmVar = this.zzd;
                if (zzclmVar == null || zzclmVar.zzP() == null || (zzeajVarZzI = zzclmVar.zzP().zzI()) == null || (adOverlayInfoParcel = this.zzc) == null || !((Boolean) zzba.zzc().zzd(zzbixVar)).booleanValue()) {
                    return;
                }
                zzeai zzeaiVarZza = zzeajVarZzI.zza();
                zzeaiVarZza.zzc(ProtectedFastSSH.s("㦊"), ProtectedFastSSH.s("㦋"));
                zzeaiVarZza.zzc(ProtectedFastSSH.s("㦌"), zzgvb.zza(adOverlayInfoParcel.zzq));
                StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length());
                sb2.append(i2);
                zzeaiVarZza.zzc(ProtectedFastSSH.s("㦍"), sb2.toString());
                if (i2 == -1 && intent != null) {
                    String stringExtra = intent.getStringExtra(ProtectedFastSSH.s("㦎"));
                    String stringExtra2 = intent.getStringExtra(ProtectedFastSSH.s("㦏"));
                    if (stringExtra != null) {
                        zzeaiVarZza.zzc(ProtectedFastSSH.s("㦐"), stringExtra);
                    }
                    if (stringExtra2 != null) {
                        zzeaiVarZza.zzc(ProtectedFastSSH.s("㦑"), stringExtra2);
                    }
                }
                zzeaiVarZza.zzf();
            }
        }
    }

    @Override
    public final void zzm(IObjectWrapper iObjectWrapper) {
    }

    @Override
    public final void zzn(Bundle bundle) {
        bundle.putBoolean(ProtectedFastSSH.s("㦄"), this.zzj);
    }

    @Override
    public final void zzo() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdy();
        }
        if (((Boolean) zzba.zzc().zzd(zzbjg.zzgh)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzz();
    }

    @Override
    public final void zzp() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdz();
        }
        zzclm zzclmVar = this.zzd;
        if (zzclmVar != null) {
            try {
                this.zzl.removeView(zzclmVar.zzE());
            } catch (NullPointerException unused) {
            }
        }
        zzz();
    }

    public final void zzq(boolean z) {
        if (this.zzc.zzw) {
            return;
        }
        int iIntValue = ((Integer) zzba.zzc().zzd(zzbjg.zzgj)).intValue();
        boolean z2 = ((Boolean) zzba.zzc().zzd(zzbjg.zzbR)).booleanValue() || z;
        zzt zztVar = new zzt();
        zztVar.zzd = 50;
        zztVar.zza = true != z2 ? 0 : iIntValue;
        zztVar.zzb = true != z2 ? iIntValue : 0;
        zztVar.zzc = iIntValue;
        this.zzf = new zzu(this.zzb, zztVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(true != z2 ? 9 : 11);
        zzs(z, this.zzc.zzg);
        this.zzl.addView(this.zzf, layoutParams);
        zzI(this.zzf);
    }

    @Override
    public final void zzr() {
        this.zzu = true;
    }

    public final void zzs(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzl zzlVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzl zzlVar2;
        boolean z3 = true;
        boolean z4 = ((Boolean) zzba.zzc().zzd(zzbjg.zzbP)).booleanValue() && (adOverlayInfoParcel2 = this.zzc) != null && (zzlVar2 = adOverlayInfoParcel2.zzo) != null && zzlVar2.zzh;
        boolean z5 = ((Boolean) zzba.zzc().zzd(zzbjg.zzbQ)).booleanValue() && (adOverlayInfoParcel = this.zzc) != null && (zzlVar = adOverlayInfoParcel.zzo) != null && zzlVar.zzi;
        if (z && z2 && z4 && !z5) {
            new zzbyy(this.zzd, ProtectedFastSSH.s("㦒")).zzg(ProtectedFastSSH.s("㦓"));
        }
        zzu zzuVar = this.zzf;
        if (zzuVar != null) {
            if (!z5 && (!z2 || z4)) {
                z3 = false;
            }
            zzuVar.zza(z3);
        }
    }

    public final void zzt(boolean z, int i) {
        if (!z) {
            this.zzl.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            return;
        }
        this.zzl.setBackgroundColor(0);
        this.zzn = i;
        Window window = this.zzb.getWindow();
        if (!((Boolean) zzba.zzc().zzd(zzbjg.zzbz)).booleanValue() || Build.VERSION.SDK_INT < 31 || window == null) {
            return;
        }
        zzy$$ExternalSyntheticApiModelOutline0.m(window, i);
    }

    public final void zzu() {
        this.zzl.removeView(this.zzf);
        zzq(true);
    }

    public final void zzv(int i) {
        Activity activity = this.zzb;
        if (activity.getApplicationInfo().targetSdkVersion >= ((Integer) zzba.zzc().zzd(zzbjg.zzhb)).intValue()) {
            if (activity.getApplicationInfo().targetSdkVersion <= ((Integer) zzba.zzc().zzd(zzbjg.zzhc)).intValue()) {
                if (Build.VERSION.SDK_INT >= ((Integer) zzba.zzc().zzd(zzbjg.zzhd)).intValue()) {
                    if (Build.VERSION.SDK_INT <= ((Integer) zzba.zzc().zzd(zzbjg.zzhe)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            activity.setRequestedOrientation(i);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzh().zzi(th, ProtectedFastSSH.s("㦔"));
        }
    }

    public final void zzw(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        Activity activity = this.zzb;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.zzh = frameLayout;
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.zzh.addView(view, -1, -1);
        activity.setContentView(this.zzh);
        this.zzu = true;
        this.zzi = customViewCallback;
        this.zzg = true;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v9, types: [boolean, int] */
    protected final void zzx(boolean z) throws zzh {
        boolean z2;
        ?? r2;
        if (!this.zzu) {
            this.zzb.requestWindowFeature(1);
        }
        Activity activity = this.zzb;
        Window window = activity.getWindow();
        if (window == null) {
            throw new zzh(ProtectedFastSSH.s("㦝"));
        }
        zzclm zzclmVar = this.zzc.zzd;
        zzcnk zzcnkVarZzP = zzclmVar != null ? zzclmVar.zzP() : null;
        boolean z3 = zzcnkVarZzP != null && zzcnkVarZzP.zzk();
        this.zzm = false;
        if (z3) {
            int i = this.zzc.zzj;
            if (i == 6) {
                z2 = activity.getResources().getConfiguration().orientation == 1;
                this.zzm = z2;
            } else if (i == 7) {
                z2 = activity.getResources().getConfiguration().orientation == 2;
                this.zzm = z2;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(z2).length() + 41);
        sb.append(ProtectedFastSSH.s("㦕"));
        sb.append(z2);
        String string = sb.toString();
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd(string);
        zzv(this.zzc.zzj);
        window.setFlags(16777216, 16777216);
        com.google.android.gms.ads.internal.util.client.zzo.zzd(ProtectedFastSSH.s("㦖"));
        activity.setContentView(this.zzl);
        this.zzu = true;
        if (this.zzk) {
            this.zzl.setBackgroundColor(zza);
            if (((Boolean) zzba.zzc().zzd(zzbjg.zzbz)).booleanValue() && Build.VERSION.SDK_INT >= 31) {
                zzy$$ExternalSyntheticApiModelOutline0.m(window, this.zzn);
            }
        } else {
            this.zzl.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        if (z) {
            try {
                com.google.android.gms.ads.internal.zzt.zzd();
                zzclm zzclmVar2 = this.zzc.zzd;
                zzcnw zzcnwVarZzN = zzclmVar2 != null ? zzclmVar2.zzN() : null;
                zzclm zzclmVar3 = this.zzc.zzd;
                String strZzO = zzclmVar3 != null ? zzclmVar3.zzO() : null;
                AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
                VersionInfoParcel versionInfoParcel = adOverlayInfoParcel.zzm;
                zzclm zzclmVar4 = adOverlayInfoParcel.zzd;
                boolean z4 = false;
                zzclm zzclmVarZza = zzcmc.zza(activity, zzcnwVarZzN, strZzO, true, z3, null, null, versionInfoParcel, null, null, zzclmVar4 != null ? zzclmVar4.zzk() : null, zzbif.zza(), null, null, null, null, null);
                this.zzd = zzclmVarZza;
                zzcnk zzcnkVarZzP2 = zzclmVarZza.zzP();
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
                zzbox zzboxVar = adOverlayInfoParcel2.zzp;
                zzboz zzbozVar = adOverlayInfoParcel2.zze;
                zzad zzadVar = adOverlayInfoParcel2.zzi;
                zzclm zzclmVar5 = adOverlayInfoParcel2.zzd;
                zzcnkVarZzP2.zzab(null, zzboxVar, null, zzbozVar, zzadVar, true, null, zzclmVar5 != null ? zzclmVar5.zzP().zzh() : null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
                this.zzd.zzP().zzG(new zzg(this));
                AdOverlayInfoParcel adOverlayInfoParcel3 = this.zzc;
                String str = adOverlayInfoParcel3.zzl;
                if (str != null) {
                    this.zzd.loadUrl(str);
                } else {
                    String str2 = adOverlayInfoParcel3.zzh;
                    if (str2 == null) {
                        throw new zzh(ProtectedFastSSH.s("㦙"));
                    }
                    this.zzd.loadDataWithBaseURL(adOverlayInfoParcel3.zzf, str2, ProtectedFastSSH.s("㦘"), ProtectedFastSSH.s("㦗"), null);
                }
                zzclm zzclmVar6 = this.zzc.zzd;
                r2 = z4;
                if (zzclmVar6 != null) {
                    zzclmVar6.zzan(this);
                    r2 = z4;
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("㦚"), e);
                throw new zzh(ProtectedFastSSH.s("㦛"), e);
            }
        } else {
            r2 = 0;
            zzclm zzclmVar7 = this.zzc.zzd;
            this.zzd = zzclmVar7;
            zzclmVar7.zzai(this.zzb);
        }
        if (this.zzc.zzw) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this.zzd.zzD(), r2);
            if (((Boolean) zzba.zzc().zzd(zzbjg.zzbG)).booleanValue() && Build.VERSION.SDK_INT >= 27) {
                zzy$$ExternalSyntheticApiModelOutline0.m(this.zzd.zzD(), zzy$$ExternalSyntheticApiModelOutline0.m496m());
            }
            if (((Boolean) zzba.zzc().zzd(zzbjg.zzbH)).booleanValue()) {
                this.zzd.zzD().setDownloadListener(zze.zza);
            }
        }
        this.zzd.zzae(this);
        zzclm zzclmVar8 = this.zzc.zzd;
        if (zzclmVar8 != null) {
            zzJ(zzclmVar8.zzU(), this.zzl);
        }
        if (this.zzc.zzk != 5) {
            ViewParent parent = this.zzd.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.zzd.zzE());
            }
            if (this.zzk) {
                this.zzd.zzat();
                if (((Boolean) zzba.zzc().zzd(zzbjg.zzbz)).booleanValue() && Build.VERSION.SDK_INT >= 31) {
                    zzy$$ExternalSyntheticApiModelOutline0.m(window, this.zzn);
                }
            }
            if (!this.zzc.zzw || Build.VERSION.SDK_INT < 24) {
                this.zzl.addView(this.zzd.zzE(), -1, -1);
            } else {
                Toolbar toolbar = new Toolbar(this.zzb);
                this.zzy = toolbar;
                toolbar.setId(View.generateViewId());
                this.zzd.zzE().setId(View.generateViewId());
                this.zzy.setBackgroundColor(-12303292);
                this.zzy.setVisibility(r2);
                try {
                    this.zzy.setNavigationIcon(com.google.android.gms.ads.internal.zzt.zzh().zzg().getDrawable(R.drawable.admob_close_button_white_cross, null));
                } catch (Resources.NotFoundException | NullPointerException e2) {
                    com.google.android.gms.ads.internal.util.zze.zzb(ProtectedFastSSH.s("㦜"), e2);
                }
                this.zzy.setNavigationOnClickListener(this.zzr);
                zzy$$ExternalSyntheticApiModelOutline0.m(this.zzy, (int) r2);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.addRule(10);
                this.zzl.addView(this.zzy, layoutParams);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams2.addRule(3, this.zzy.getId());
                layoutParams2.addRule(12);
                this.zzl.addView(this.zzd.zzE(), layoutParams2);
                zzI(this.zzy);
            }
        }
        if (!z && !this.zzm) {
            zzC();
        }
        if (this.zzc.zzk != 5) {
            zzq(z3);
            if (this.zzd.zzR()) {
                zzs(z3, true);
                return;
            }
            return;
        }
        Activity activity2 = this.zzb;
        zzelq zzelqVarZze = zzelr.zze();
        zzelqVarZze.zza(activity2);
        zzelqVarZze.zzb(this);
        zzelqVarZze.zzc(this.zzc.zzq);
        zzelqVarZze.zzd(this.zzc.zzr);
        try {
            zzF(zzelqVarZze.zze());
        } catch (RemoteException | zzh e3) {
            throw new zzh(e3.getMessage(), e3);
        }
    }

    public final void zzy(String str) {
        Toolbar toolbar = this.zzy;
        if (toolbar != null) {
            toolbar.setSubtitle(str);
        }
    }

    protected final void zzz() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzr zzrVar;
        if (!this.zzb.isFinishing() || this.zzv) {
            return;
        }
        this.zzv = true;
        zzclm zzclmVar = this.zzd;
        if (zzclmVar != null) {
            zzclmVar.zzH(this.zzo - 1);
            synchronized (this.zzq) {
                if (!this.zzt && this.zzd.zzaa()) {
                    if (((Boolean) zzba.zzc().zzd(zzbjg.zzgg)).booleanValue() && !this.zzw && (adOverlayInfoParcel = this.zzc) != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                        zzrVar.zzdV();
                    }
                    this.zzs = new zzf(this);
                    com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(this.zzs, ((Long) zzba.zzc().zzd(zzbjg.zzbO)).longValue());
                    return;
                }
            }
        }
        zzA();
    }
}
