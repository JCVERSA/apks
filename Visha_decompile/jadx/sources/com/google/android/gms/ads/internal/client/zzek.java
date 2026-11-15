package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzayv;
import com.google.android.gms.internal.ads.zzbou;
import defpackage.cye;
import defpackage.eie;
import defpackage.hke;
import defpackage.s3h;
import defpackage.xze;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzek {
    public final zzbou a;
    public final zzq b;
    public final AtomicBoolean c;
    public final VideoController d;
    public final zzbc e;
    public zza f;
    public AdListener g;
    public AdSize[] h;
    public AppEventListener i;
    public zzbx j;
    public VideoOptions k;
    public String l;
    public final ViewGroup m;
    public int n;
    public boolean o;
    public OnPaidEventListener p;

    public zzek(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzq.zza, null, i);
    }

    public static zzr a(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return new zzr("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
            }
        }
        zzr zzrVar = new zzr(context, adSizeArr);
        zzrVar.zzj = b(i);
        return zzrVar;
    }

    public static boolean b(int i) {
        return i == 1;
    }

    public final boolean zzA() {
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                return zzbxVar.zzY();
            }
            return false;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final boolean zzB() {
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                return zzbxVar.zzZ();
            }
            return false;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final AdSize[] zzC() {
        return this.h;
    }

    public final AdListener zza() {
        return this.g;
    }

    @Nullable
    public final AdSize zzb() {
        zzr zzrVarZzg;
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null && (zzrVarZzg = zzbxVar.zzg()) != null) {
                return com.google.android.gms.ads.zzc.zzc(zzrVarZzg.zze, zzrVarZzg.zzb, zzrVarZzg.zza);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.h;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    @Nullable
    public final OnPaidEventListener zzc() {
        return this.p;
    }

    @Nullable
    public final ResponseInfo zzd() {
        zzdx zzdxVarZzk = null;
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzdxVarZzk = zzbxVar.zzk();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(zzdxVarZzk);
    }

    public final VideoController zzf() {
        return this.d;
    }

    public final VideoOptions zzg() {
        return this.k;
    }

    @Nullable
    public final AppEventListener zzh() {
        return this.i;
    }

    @Nullable
    public final zzea zzi() {
        zzbx zzbxVar = this.j;
        if (zzbxVar != null) {
            try {
                return zzbxVar.zzl();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        return null;
    }

    public final String zzj() {
        zzbx zzbxVar;
        if (this.l == null && (zzbxVar = this.j) != null) {
            try {
                this.l = zzbxVar.zzr();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        return this.l;
    }

    public final void zzl() {
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzx();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00d8 A[Catch: RemoteException -> 0x00d6, TRY_LEAVE, TryCatch #1 {RemoteException -> 0x00d6, blocks: (B:27:0x00a5, B:29:0x00ab, B:31:0x00b9, B:33:0x00cb, B:36:0x00d8), top: B:51:0x00a5, outer: #0 }] */
    public final void zzm(zzeh zzehVar) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.j == null) {
                if (this.h == null || this.l == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                ViewGroup viewGroup = this.m;
                Context context = viewGroup.getContext();
                zzr zzrVarA = a(context, this.h, this.n);
                zzbx zzbxVar = "search_v2".equals(zzrVarA.zza) ? (zzbx) new hke(zzbb.zza(), context, zzrVarA, this.l).d(context, false) : (zzbx) new eie(zzbb.zza(), context, zzrVarA, this.l, this.a).d(context, false);
                this.j = zzbxVar;
                zzbxVar.zzD(new zzg(this.e));
                zza zzaVar = this.f;
                if (zzaVar != null) {
                    this.j.zzC(new zzb(zzaVar));
                }
                AppEventListener appEventListener = this.i;
                if (appEventListener != null) {
                    this.j.zzG(new zzayv(appEventListener));
                }
                if (this.k != null) {
                    this.j.zzU(new zzfw(this.k));
                }
                this.j.zzP(new zzfo(this.p));
                this.j.zzN(this.o);
                zzbx zzbxVar2 = this.j;
                if (zzbxVar2 != null) {
                    try {
                        final IObjectWrapper iObjectWrapperZzn = zzbxVar2.zzn();
                        if (iObjectWrapperZzn != null) {
                            if (((Boolean) xze.f.e()).booleanValue()) {
                                if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                                    com.google.android.gms.ads.internal.util.client.zzf.zza.post(new Runnable() {
                                        @Override
                                        public final void run() {
                                            this.zza.m.addView((View) ObjectWrapper.unwrap(iObjectWrapperZzn));
                                        }
                                    });
                                } else {
                                    viewGroup.addView((View) ObjectWrapper.unwrap(iObjectWrapperZzn));
                                }
                            } else {
                                viewGroup.addView((View) ObjectWrapper.unwrap(iObjectWrapperZzn));
                            }
                        }
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
            }
            zzehVar.zzo(jCurrentTimeMillis);
            zzbx zzbxVar3 = this.j;
            if (zzbxVar3 == null) {
                throw null;
            }
            zzbxVar3.zzab(this.b.zza(this.m.getContext(), zzehVar));
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
        }
    }

    public final void zzn() {
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzz();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzo() {
        if (this.c.getAndSet(true)) {
            return;
        }
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzA();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzp() {
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzB();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzq(@Nullable zza zzaVar) {
        try {
            this.f = zzaVar;
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzC(zzaVar != null ? new zzb(zzaVar) : null);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzr(AdListener adListener) {
        this.g = adListener;
        this.e.zza(adListener);
    }

    public final void zzs(AdSize... adSizeArr) {
        if (this.h != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        zzt(adSizeArr);
    }

    public final void zzt(AdSize... adSizeArr) {
        this.h = adSizeArr;
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzF(a(this.m.getContext(), this.h, this.n));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        this.m.requestLayout();
    }

    public final void zzu(String str) {
        if (this.l != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.l = str;
    }

    public final void zzv(@Nullable AppEventListener appEventListener) {
        try {
            this.i = appEventListener;
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzG(appEventListener != null ? new zzayv(appEventListener) : null);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzw(boolean z) {
        this.o = z;
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzN(z);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzx(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.p = onPaidEventListener;
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzP(new zzfo(onPaidEventListener));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzy(VideoOptions videoOptions) {
        this.k = videoOptions;
        try {
            zzbx zzbxVar = this.j;
            if (zzbxVar != null) {
                zzbxVar.zzU(videoOptions == null ? null : new zzfw(videoOptions));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final boolean zzz(zzbx zzbxVar) {
        try {
            IObjectWrapper iObjectWrapperZzn = zzbxVar.zzn();
            if (iObjectWrapperZzn == null || ((View) ObjectWrapper.unwrap(iObjectWrapperZzn)).getParent() != null) {
                return false;
            }
            this.m.addView((View) ObjectWrapper.unwrap(iObjectWrapperZzn));
            this.j = zzbxVar;
            return true;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public zzek(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzq.zza, null, 0);
    }

    public zzek(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, z, zzq.zza, null, i);
    }

    public zzek(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzq zzqVar, zzbx zzbxVar, int i) {
        zzr zzrVar;
        this.a = new zzbou();
        this.d = new VideoController();
        this.e = new s3h(this);
        this.m = viewGroup;
        this.b = zzqVar;
        this.j = null;
        this.c = new AtomicBoolean(false);
        this.n = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzz zzzVar = new zzz(context, attributeSet);
                this.h = zzzVar.zzb(z);
                this.l = zzzVar.zza();
                if (viewGroup.isInEditMode()) {
                    com.google.android.gms.ads.internal.util.client.zzf zzfVarZzb = zzbb.zzb();
                    AdSize adSize = this.h[0];
                    int i2 = this.n;
                    if (adSize.equals(AdSize.INVALID)) {
                        zzrVar = new zzr("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false, false, false);
                    } else {
                        zzr zzrVar2 = new zzr(context, adSize);
                        zzrVar2.zzj = b(i2);
                        zzrVar = zzrVar2;
                    }
                    zzfVarZzb.zzn(viewGroup, zzrVar, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                zzbb.zzb().zzm(viewGroup, new zzr(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }
}
