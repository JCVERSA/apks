package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
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
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.InputDeviceCompat;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzbsr;
import com.google.android.gms.internal.ads.zzbsx;
import defpackage.aaf;
import defpackage.axg;
import defpackage.cye;
import defpackage.ejf;
import defpackage.fxg;
import defpackage.gkf;
import defpackage.ikf;
import defpackage.j3i;
import defpackage.jui;
import defpackage.kkf;
import defpackage.mjf;
import defpackage.pwg;
import defpackage.pzh;
import defpackage.qwg;
import defpackage.qxe;
import defpackage.r1f;
import defpackage.rmg;
import defpackage.smg;
import defpackage.t8g;
import defpackage.wzf;
import defpackage.z1f;
import java.util.Collections;

public class zzm extends zzbsx implements zzag {

    @VisibleForTesting
    static final int zza = Color.argb(0, 0, 0, 0);
    protected final Activity zzb;

    @Nullable
    @VisibleForTesting
    AdOverlayInfoParcel zzc;

    @VisibleForTesting
    ejf zzd;

    @VisibleForTesting
    zzi zze;

    @VisibleForTesting
    zzu zzf;

    @VisibleForTesting
    FrameLayout zzh;

    @VisibleForTesting
    WebChromeClient.CustomViewCallback zzi;

    @VisibleForTesting
    jui zzl;
    private Runnable zzq;
    private boolean zzr;
    private boolean zzs;
    private Toolbar zzw;

    @VisibleForTesting
    boolean zzg = false;

    @VisibleForTesting
    boolean zzj = false;

    @VisibleForTesting
    boolean zzk = false;

    @VisibleForTesting
    boolean zzm = false;

    @VisibleForTesting
    int zzn = 1;
    private final Object zzo = new Object();
    private final View.OnClickListener zzp = new a(this);
    private boolean zzt = false;
    private boolean zzu = false;
    private boolean zzv = true;

    public zzm(Activity activity) {
        this.zzb = activity;
    }

    private final void zzJ(View view) {
        fxg fxgVarZzQ;
        axg axgVarZzP;
        ejf ejfVar = this.zzd;
        if (ejfVar == null) {
            return;
        }
        if (((Boolean) zzbd.zzc().b(cye.p5)).booleanValue() && (axgVarZzP = ejfVar.zzP()) != null) {
            axgVarZzP.a(view);
        } else if (((Boolean) zzbd.zzc().b(cye.o5)).booleanValue() && (fxgVarZzQ = ejfVar.zzQ()) != null && fxgVarZzQ.b()) {
            com.google.android.gms.ads.internal.zzv.zzB().e(fxgVarZzQ.a(), view);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    /* JADX WARN: Code duplicated, block: B:17:0x0036 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0038  */
    private final void zzK(Configuration configuration) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzl zzlVar;
        int i;
        com.google.android.gms.ads.internal.zzl zzlVar2;
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = (adOverlayInfoParcel2 == null || (zzlVar2 = adOverlayInfoParcel2.zzo) == null || !zzlVar2.zzb) ? false : true;
        Activity activity = this.zzb;
        boolean zZzd = com.google.android.gms.ads.internal.zzv.zzr().zzd(activity, configuration);
        if (!this.zzk || z3) {
            if (zZzd) {
                if (((Boolean) zzbd.zzc().b(cye.T0)).booleanValue()) {
                    z = false;
                }
            }
            adOverlayInfoParcel = this.zzc;
            if (adOverlayInfoParcel != null && (zzlVar = adOverlayInfoParcel.zzo) != null && zzlVar.zzg) {
                z2 = true;
            }
        } else if (((Boolean) zzbd.zzc().b(cye.U0)).booleanValue()) {
            if (zZzd) {
                if (((Boolean) zzbd.zzc().b(cye.T0)).booleanValue()) {
                    z = false;
                }
            }
            adOverlayInfoParcel = this.zzc;
            if (adOverlayInfoParcel != null) {
                z2 = true;
            }
        } else {
            z = false;
        }
        Window window = activity.getWindow();
        if (((Boolean) zzbd.zzc().b(cye.r1)).booleanValue()) {
            View decorView = window.getDecorView();
            if (z) {
                i = z2 ? 5894 : 5380;
            } else {
                i = 256;
            }
            decorView.setSystemUiVisibility(i);
            return;
        }
        if (!z) {
            window.addFlags(2048);
            window.clearFlags(1024);
            return;
        }
        window.addFlags(1024);
        window.clearFlags(2048);
        if (z2) {
            window.getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
        }
    }

    private static final void zzL(@Nullable fxg fxgVar, @Nullable View view) {
        if (fxgVar == null || view == null) {
            return;
        }
        if (((Boolean) zzbd.zzc().b(cye.o5)).booleanValue() && fxgVar.b()) {
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzB().c(fxgVar.a(), view);
    }

    public final void zzA(int i) {
        Activity activity = this.zzb;
        if (activity.getApplicationInfo().targetSdkVersion >= ((Integer) zzbd.zzc().b(cye.X5)).intValue()) {
            if (activity.getApplicationInfo().targetSdkVersion <= ((Integer) zzbd.zzc().b(cye.Y5)).intValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= ((Integer) zzbd.zzc().b(cye.Z5)).intValue()) {
                    if (i2 <= ((Integer) zzbd.zzc().b(cye.a6)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            activity.setRequestedOrientation(i);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzv.zzp().w(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zzB(boolean z) {
        jui juiVar = this.zzl;
        if (z) {
            juiVar.setBackgroundColor(0);
        } else {
            juiVar.setBackgroundColor(-16777216);
        }
    }

    public final void zzC(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        Activity activity = this.zzb;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.zzh = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.zzh.addView(view, -1, -1);
        activity.setContentView(this.zzh);
        this.zzs = true;
        this.zzi = customViewCallback;
        this.zzg = true;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    public final void zzD(boolean z) throws zzg {
        boolean z2;
        boolean z3;
        Resources.Theme theme;
        int i;
        if (!this.zzs) {
            this.zzb.requestWindowFeature(1);
        }
        Activity activity = this.zzb;
        Window window = activity.getWindow();
        if (window == null) {
            throw new zzg("Invalid activity, no window available.");
        }
        ejf ejfVar = this.zzc.zzd;
        ikf ikfVarZzN = ejfVar != null ? ejfVar.zzN() : null;
        boolean z4 = ikfVarZzN != null && ikfVarZzN.zzT();
        this.zzm = false;
        if (z4) {
            int i2 = this.zzc.zzj;
            if (i2 == 6) {
                z2 = activity.getResources().getConfiguration().orientation == 1;
                this.zzm = z2;
            } else if (i2 == 7) {
                z2 = activity.getResources().getConfiguration().orientation == 2;
                this.zzm = z2;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zze("Delay onShow to next orientation change: " + z2);
        zzA(this.zzc.zzj);
        window.setFlags(16777216, 16777216);
        com.google.android.gms.ads.internal.util.client.zzo.zze("Hardware acceleration on the AdActivity window enabled.");
        if (this.zzk) {
            this.zzl.setBackgroundColor(zza);
        } else {
            this.zzl.setBackgroundColor(-16777216);
        }
        activity.setContentView(this.zzl);
        this.zzs = true;
        if (z) {
            try {
                com.google.android.gms.ads.internal.zzv.zzA();
                ejf ejfVar2 = this.zzc.zzd;
                kkf kkfVarZzO = ejfVar2 != null ? ejfVar2.zzO() : null;
                ejf ejfVar3 = this.zzc.zzd;
                String strZzU = ejfVar3 != null ? ejfVar3.zzU() : null;
                AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
                VersionInfoParcel versionInfoParcel = adOverlayInfoParcel.zzm;
                ejf ejfVar4 = adOverlayInfoParcel.zzd;
                z3 = z4;
                com.google.android.gms.ads.internal.zza zzaVarZzj = ejfVar4 != null ? ejfVar4.zzj() : null;
                theme = null;
                ejf ejfVarA = mjf.a(activity, kkfVarZzO, strZzU, true, z4, null, null, versionInfoParcel, null, null, zzaVarZzj, o0.a(), null, null, null, null, null);
                this.zzd = ejfVarA;
                ikf ikfVarZzN2 = ejfVarA.zzN();
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
                r1f r1fVar = adOverlayInfoParcel2.zzp;
                z1f z1fVar = adOverlayInfoParcel2.zze;
                zzac zzacVar = adOverlayInfoParcel2.zzi;
                ejf ejfVar5 = adOverlayInfoParcel2.zzd;
                ikfVarZzN2.d(null, r1fVar, null, z1fVar, zzacVar, true, null, ejfVar5 != null ? ejfVar5.zzN().zzd() : null, null, null, null, null, null, null, null, null, null, null, null);
                this.zzd.zzN().v(new gkf() {
                    @Override
                    public final void zza(boolean z5, int i4, String str, String str2) {
                        ejf ejfVar6 = this.zza.zzd;
                        if (ejfVar6 != null) {
                            ejfVar6.zzaa();
                        }
                    }
                });
                AdOverlayInfoParcel adOverlayInfoParcel3 = this.zzc;
                String str = adOverlayInfoParcel3.zzl;
                if (str != null) {
                    this.zzd.loadUrl(str);
                } else {
                    String str2 = adOverlayInfoParcel3.zzh;
                    if (str2 == null) {
                        throw new zzg("No URL or HTML to display in ad overlay.");
                    }
                    this.zzd.loadDataWithBaseURL(adOverlayInfoParcel3.zzf, str2, "text/html", "UTF-8", null);
                }
                ejf ejfVar6 = this.zzc.zzd;
                if (ejfVar6 != null) {
                    ejfVar6.zzaw(this);
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Error obtaining webview.", e);
                throw new zzg("Could not obtain webview for the overlay.", e);
            }
        } else {
            z3 = z4;
            theme = null;
            ejf ejfVar7 = this.zzc.zzd;
            this.zzd = ejfVar7;
            ejfVar7.zzan(this.zzb);
        }
        if (this.zzc.zzw) {
            i = 0;
            CookieManager.getInstance().setAcceptThirdPartyCookies(this.zzd.zzG(), false);
        } else {
            i = 0;
        }
        this.zzd.zzai(this);
        ejf ejfVar8 = this.zzc.zzd;
        if (ejfVar8 != null) {
            zzL(ejfVar8.zzQ(), this.zzl);
        }
        if (this.zzc.zzk != 5) {
            ViewParent parent = this.zzd.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(this.zzd.zzF());
            }
            if (this.zzk) {
                this.zzd.zzam();
            }
            if (this.zzc.zzw) {
                Toolbar toolbar = new Toolbar(this.zzb);
                this.zzw = toolbar;
                toolbar.setId(View.generateViewId());
                this.zzd.zzF().setId(View.generateViewId());
                this.zzw.setBackgroundColor(-12303292);
                this.zzw.setVisibility(i);
                try {
                    this.zzw.setNavigationIcon(com.google.android.gms.ads.internal.zzv.zzp().f().getDrawable(R.drawable.admob_close_button_white_cross, theme));
                } catch (Resources.NotFoundException | NullPointerException e2) {
                    com.google.android.gms.ads.internal.util.zze.zzb("Error obtaining close icon.", e2);
                }
                this.zzw.setNavigationOnClickListener(this.zzp);
                this.zzw.setTitleMarginStart(i);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.addRule(10);
                this.zzl.addView(this.zzw, layoutParams);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams2.addRule(3, this.zzw.getId());
                layoutParams2.addRule(12);
                this.zzl.addView(this.zzd.zzF(), layoutParams2);
                zzJ(this.zzw);
            } else {
                this.zzl.addView(this.zzd.zzF(), -1, -1);
            }
        }
        if (!z && !this.zzm) {
            zze();
        }
        if (this.zzc.zzk != 5) {
            zzw(z3);
            if (this.zzd.zzaB()) {
                zzy(z3, true);
                return;
            }
            return;
        }
        Activity activity2 = this.zzb;
        pwg pwgVarE = qwg.e();
        pwgVarE.a(activity2);
        pwgVarE.b(this);
        pwgVarE.c(this.zzc.zzq);
        pwgVarE.d(this.zzc.zzr);
        try {
            zzf(pwgVarE.e());
        } catch (RemoteException | zzg e3) {
            throw new zzg(e3.getMessage(), e3);
        }
    }

    public final void zzE() {
        synchronized (this.zzo) {
            try {
                this.zzr = true;
                Runnable runnable = this.zzq;
                if (runnable != null) {
                    pzh pzhVar = zzs.zza;
                    pzhVar.removeCallbacks(runnable);
                    pzhVar.post(this.zzq);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzF() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzr zzrVar;
        if (!this.zzb.isFinishing() || this.zzt) {
            return;
        }
        this.zzt = true;
        ejf ejfVar = this.zzd;
        if (ejfVar != null) {
            ejfVar.zzZ(this.zzn - 1);
            synchronized (this.zzo) {
                try {
                    if (!this.zzr && this.zzd.zzaC()) {
                        if (((Boolean) zzbd.zzc().b(cye.a5)).booleanValue() && !this.zzu && (adOverlayInfoParcel = this.zzc) != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                            zzrVar.zzdo();
                        }
                        Runnable runnable = new Runnable() {
                            @Override
                            public final void run() {
                                this.zza.zzc();
                            }
                        };
                        this.zzq = runnable;
                        zzs.zza.postDelayed(runnable, ((Long) zzbd.zzc().b(cye.k1)).longValue());
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        zzc();
    }

    public final void zzG(String str) {
        Toolbar toolbar = this.zzw;
        if (toolbar != null) {
            toolbar.setSubtitle(str);
        }
    }

    @Override
    public final boolean zzH() {
        this.zzn = 1;
        if (this.zzd == null) {
            return true;
        }
        if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue() && this.zzd.canGoBack()) {
            this.zzd.goBack();
            return false;
        }
        boolean zZzaH = this.zzd.zzaH();
        if (!zZzaH) {
            this.zzd.zzd("onbackblocked", Collections.emptyMap());
        }
        return zZzaH;
    }

    public final void zzb() {
        this.zzn = 3;
        Activity activity = this.zzb;
        activity.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.zzk != 5) {
            return;
        }
        activity.overridePendingTransition(0, 0);
        ejf ejfVar = this.zzd;
        if (ejfVar != null) {
            ejfVar.zzai(null);
        }
    }

    @VisibleForTesting
    public final void zzc() {
        ejf ejfVar;
        zzr zzrVar;
        if (this.zzu) {
            return;
        }
        this.zzu = true;
        ejf ejfVar2 = this.zzd;
        if (ejfVar2 != null) {
            this.zzl.removeView(ejfVar2.zzF());
            zzi zziVar = this.zze;
            if (zziVar != null) {
                this.zzd.zzan(zziVar.zzd);
                this.zzd.zzaq(false);
                if (((Boolean) zzbd.zzc().b(cye.Lc)).booleanValue() && this.zzd.getParent() != null) {
                    ((ViewGroup) this.zzd.getParent()).removeView(this.zzd.zzF());
                }
                ViewGroup viewGroup = this.zze.zzc;
                View viewZzF = this.zzd.zzF();
                zzi zziVar2 = this.zze;
                viewGroup.addView(viewZzF, zziVar2.zza, zziVar2.zzb);
                this.zze = null;
            } else {
                Activity activity = this.zzb;
                if (activity.getApplicationContext() != null) {
                    this.zzd.zzan(activity.getApplicationContext());
                }
            }
            this.zzd = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzds(this.zzn);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
        if (adOverlayInfoParcel2 == null || (ejfVar = adOverlayInfoParcel2.zzd) == null) {
            return;
        }
        zzL(ejfVar.zzQ(), this.zzc.zzd.zzF());
    }

    public final void zzd() {
        this.zzl.c = true;
    }

    public final void zze() {
        this.zzd.zzaa();
    }

    public final void zzf(qwg qwgVar) throws RemoteException, zzg {
        zzbsr zzbsrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzbsrVar = adOverlayInfoParcel.zzv) == null) {
            throw new zzg("noioou");
        }
        zzbsrVar.zzg(ObjectWrapper.wrap(qwgVar));
    }

    public final void zzg() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && this.zzg) {
            zzA(adOverlayInfoParcel.zzj);
        }
        if (this.zzh != null) {
            this.zzb.setContentView(this.zzl);
            this.zzs = true;
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
    public final void zzh(int i, int i2, Intent intent) {
        smg smgVarZze;
        AdOverlayInfoParcel adOverlayInfoParcel;
        if (i == 236) {
            qxe qxeVar = cye.gd;
            if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
                com.google.android.gms.ads.internal.util.zze.zza("Callback from intent launch with requestCode: 236 and resultCode: " + i2);
                ejf ejfVar = this.zzd;
                if (ejfVar == null || ejfVar.zzN() == null || (smgVarZze = ejfVar.zzN().zze()) == null || (adOverlayInfoParcel = this.zzc) == null || !((Boolean) zzbd.zzc().b(qxeVar)).booleanValue()) {
                    return;
                }
                rmg rmgVarA = smgVarZze.a();
                rmgVarA.b("action", "hilca");
                rmgVarA.b("gqi", j3i.c(adOverlayInfoParcel.zzq));
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                rmgVarA.b("hilr", sb.toString());
                if (i2 == -1 && intent != null) {
                    String stringExtra = intent.getStringExtra("callerPackage");
                    String stringExtra2 = intent.getStringExtra("loadingStage");
                    if (stringExtra != null) {
                        rmgVarA.b("hilcp", stringExtra);
                    }
                    if (stringExtra2 != null) {
                        rmgVarA.b("hills", stringExtra2);
                    }
                }
                rmgVarA.i();
            }
        }
    }

    @Override
    public final void zzi() {
        this.zzn = 1;
    }

    @Override
    public final void zzj() {
        this.zzn = 2;
        this.zzb.finish();
    }

    @Override
    public final void zzk(IObjectWrapper iObjectWrapper) {
        zzK((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override
    public void zzl(Bundle bundle) {
        if (!this.zzs) {
            this.zzb.requestWindowFeature(1);
        }
        this.zzj = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            Activity activity = this.zzb;
            AdOverlayInfoParcel adOverlayInfoParcelZza = AdOverlayInfoParcel.zza(activity.getIntent());
            this.zzc = adOverlayInfoParcelZza;
            if (adOverlayInfoParcelZza == null) {
                throw new zzg("Could not get info for ad overlay.");
            }
            if (adOverlayInfoParcelZza.zzw) {
                activity.setShowWhenLocked(true);
            }
            if (this.zzc.zzm.clientJarVersion > 7500000) {
                this.zzn = 4;
            }
            if (activity.getIntent() != null) {
                this.zzv = activity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
            com.google.android.gms.ads.internal.zzl zzlVar = adOverlayInfoParcel.zzo;
            if (zzlVar != null) {
                boolean z = zzlVar.zza;
                this.zzk = z;
                if (z) {
                    if (adOverlayInfoParcel.zzk != 5 && zzlVar.zzf != -1) {
                        new b(this, null).zzb();
                    }
                }
            } else if (adOverlayInfoParcel.zzk == 5) {
                this.zzk = true;
                if (adOverlayInfoParcel.zzk != 5) {
                    new b(this, null).zzb();
                }
            } else {
                this.zzk = false;
            }
            if (bundle == null) {
                if (this.zzv) {
                    wzf wzfVar = this.zzc.zzt;
                    if (wzfVar != null) {
                        wzfVar.zze();
                    }
                    zzr zzrVar = this.zzc.zzc;
                    if (zzrVar != null) {
                        zzrVar.zzdp();
                    }
                }
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
                if (adOverlayInfoParcel2.zzk != 1) {
                    com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel2.zzb;
                    if (zzaVar != null) {
                        zzaVar.onAdClicked();
                    }
                    t8g t8gVar = this.zzc.zzu;
                    if (t8gVar != null) {
                        t8gVar.zzdd();
                    }
                }
            }
            AdOverlayInfoParcel adOverlayInfoParcel3 = this.zzc;
            jui juiVar = new jui(activity, adOverlayInfoParcel3.zzn, adOverlayInfoParcel3.zzm.afmaVersion, adOverlayInfoParcel3.zzs);
            this.zzl = juiVar;
            juiVar.setId(1000);
            com.google.android.gms.ads.internal.zzv.zzr().zzl(activity);
            AdOverlayInfoParcel adOverlayInfoParcel4 = this.zzc;
            int i = adOverlayInfoParcel4.zzk;
            if (i == 1) {
                zzD(false);
                return;
            }
            if (i == 2) {
                this.zze = new zzi(adOverlayInfoParcel4.zzd);
                zzD(false);
            } else if (i == 3) {
                zzD(true);
            } else {
                if (i != 5) {
                    throw new zzg("Could not determine ad overlay type.");
                }
                zzD(false);
            }
        } catch (zzg e) {
            String message = e.getMessage();
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(message);
            this.zzn = 4;
            this.zzb.finish();
        }
    }

    @Override
    public final void zzm() {
        ejf ejfVar = this.zzd;
        if (ejfVar != null) {
            try {
                this.zzl.removeView(ejfVar.zzF());
            } catch (NullPointerException unused) {
            }
        }
        zzF();
    }

    public final void zzn() {
        if (this.zzm) {
            this.zzm = false;
            zze();
        }
    }

    @Override
    public final void zzo() {
        zzr zzrVar;
        zzg();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdi();
        }
        if (!((Boolean) zzbd.zzc().b(cye.c5)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzF();
    }

    @Override
    public final void zzp(int i, String[] strArr, int[] iArr) {
        if (i == 12345) {
            Activity activity = this.zzb;
            pwg pwgVarE = qwg.e();
            pwgVarE.a(activity);
            pwgVarE.b(this.zzc.zzk == 5 ? this : null);
            try {
                this.zzc.zzv.zzf(strArr, iArr, ObjectWrapper.wrap(pwgVarE.e()));
            } catch (RemoteException unused) {
            }
        }
    }

    @Override
    public final void zzq() {
    }

    @Override
    public final void zzr() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzrVar = adOverlayInfoParcel.zzc) != null) {
            zzrVar.zzdE();
        }
        zzK(this.zzb.getResources().getConfiguration());
        if (((Boolean) zzbd.zzc().b(cye.c5)).booleanValue()) {
            return;
        }
        ejf ejfVar = this.zzd;
        if (ejfVar != null && !ejfVar.zzaE()) {
            this.zzd.onResume();
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The webview does not exist. Ignoring action.");
        }
    }

    @Override
    public final void zzs(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzj);
    }

    @Override
    public final void zzt() {
        if (((Boolean) zzbd.zzc().b(cye.c5)).booleanValue()) {
            ejf ejfVar = this.zzd;
            if (ejfVar != null && !ejfVar.zzaE()) {
                this.zzd.onResume();
            } else {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("The webview does not exist. Ignoring action.");
            }
        }
    }

    @Override
    public final void zzu() {
        if (((Boolean) zzbd.zzc().b(cye.c5)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzF();
    }

    @Override
    public final void zzv() {
        zzr zzrVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel == null || (zzrVar = adOverlayInfoParcel.zzc) == null) {
            return;
        }
        zzrVar.zzdr();
    }

    public final void zzw(boolean z) {
        if (this.zzc.zzw) {
            return;
        }
        int iIntValue = ((Integer) zzbd.zzc().b(cye.f5)).intValue();
        boolean z2 = ((Boolean) zzbd.zzc().b(cye.n1)).booleanValue() || z;
        zzt zztVar = new zzt();
        zztVar.zzd = 50;
        zztVar.zza = true != z2 ? 0 : iIntValue;
        zztVar.zzb = true != z2 ? iIntValue : 0;
        zztVar.zzc = iIntValue;
        this.zzf = new zzu(this.zzb, zztVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(true != z2 ? 9 : 11);
        zzy(z, this.zzc.zzg);
        this.zzl.addView(this.zzf, layoutParams);
        zzJ(this.zzf);
    }

    @Override
    public final void zzx() {
        this.zzs = true;
    }

    public final void zzy(boolean z, boolean z2) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzl zzlVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzl zzlVar2;
        boolean z3 = true;
        boolean z4 = ((Boolean) zzbd.zzc().b(cye.l1)).booleanValue() && (adOverlayInfoParcel2 = this.zzc) != null && (zzlVar2 = adOverlayInfoParcel2.zzo) != null && zzlVar2.zzh;
        boolean z5 = ((Boolean) zzbd.zzc().b(cye.m1)).booleanValue() && (adOverlayInfoParcel = this.zzc) != null && (zzlVar = adOverlayInfoParcel.zzo) != null && zzlVar.zzi;
        if (z && z2 && z4 && !z5) {
            new aaf(this.zzd, "useCustomClose").c("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        zzu zzuVar = this.zzf;
        if (zzuVar != null) {
            if (!z5 && (!z2 || z4)) {
                z3 = false;
            }
            zzuVar.zzb(z3);
        }
    }

    public final void zzz() {
        this.zzl.removeView(this.zzf);
        zzw(true);
    }
}
