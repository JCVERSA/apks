package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbbd;
import com.google.android.gms.internal.ads.zzbbe;
import com.google.android.gms.internal.ads.zzbix;
import com.google.android.gms.internal.ads.zzbjg;
import com.google.android.gms.internal.ads.zzbkl;
import com.google.android.gms.internal.ads.zzbla;
import com.google.android.gms.internal.ads.zzblm;
import com.google.android.gms.internal.ads.zzcai;
import com.google.android.gms.internal.ads.zzcal;
import com.google.android.gms.internal.ads.zzcfb;
import com.google.android.gms.internal.ads.zzcfd;
import com.google.android.gms.internal.ads.zzcfi;
import com.google.android.gms.internal.ads.zzcgj;
import com.google.android.gms.internal.ads.zzcob;
import com.google.android.gms.internal.ads.zzdcy;
import com.google.android.gms.internal.ads.zzdjo;
import com.google.android.gms.internal.ads.zzdvv;
import com.google.android.gms.internal.ads.zzdzs;
import com.google.android.gms.internal.ads.zzeao;
import com.google.android.gms.internal.ads.zzflv;
import com.google.android.gms.internal.ads.zzfma;
import com.google.android.gms.internal.ads.zzfmv;
import com.google.android.gms.internal.ads.zzfqw;
import com.google.android.gms.internal.ads.zzfrg;
import com.google.android.gms.internal.ads.zzfrj;
import com.google.android.gms.internal.ads.zzfte;
import com.google.android.gms.internal.ads.zzgvb;
import com.google.android.gms.internal.ads.zzhcq;
import com.google.android.gms.internal.ads.zzhcy;
import com.google.android.gms.internal.ads.zzhdi;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzap extends zzcfd {
    protected static final List zza = new ArrayList(Arrays.asList(ProtectedFastSSH.s("㱵"), ProtectedFastSSH.s("㱳"), ProtectedFastSSH.s("㱴")));
    protected static final List zzb;
    protected static final List zzc;
    protected static final List zzd;
    public static final int zze = 0;
    private final List zzB;
    private final List zzC;
    private final List zzD;
    private final List zzE;
    private final zzbkl zzI;
    private final zzj zzJ;
    private final zza zzK;
    private final zzcob zzf;
    private Context zzg;
    private final zzbbd zzh;
    private final zzfma zzi;
    private final zzfmv zzj;
    private final zzhdi zzk;
    private final ScheduledExecutorService zzl;
    private zzcal zzm;
    private final zzeao zzp;
    private final zzfte zzq;
    private final VersionInfoParcel zzy;
    private String zzz;
    private Point zzn = new Point();
    private Point zzo = new Point();
    private final AtomicInteger zzx = new AtomicInteger(0);
    private final AtomicBoolean zzF = new AtomicBoolean(false);
    private final AtomicBoolean zzG = new AtomicBoolean(false);
    private final AtomicInteger zzH = new AtomicInteger(0);
    private final boolean zzr = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziq)).booleanValue();
    private final boolean zzs = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzip)).booleanValue();
    private final boolean zzt = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzis)).booleanValue();
    private final boolean zzu = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziu)).booleanValue();
    private final String zzv = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzit);
    private final String zzw = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziv);
    private final String zzA = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziw);

    static {
        String strS = ProtectedFastSSH.s("㱶");
        String strS2 = ProtectedFastSSH.s("㱷");
        zzb = new ArrayList(Arrays.asList(strS, strS2));
        zzc = new ArrayList(Arrays.asList(ProtectedFastSSH.s("㱺"), ProtectedFastSSH.s("㱻"), ProtectedFastSSH.s("㱸"), ProtectedFastSSH.s("㱹")));
        zzd = new ArrayList(Arrays.asList(strS, strS2, ProtectedFastSSH.s("㱼")));
    }

    zzap(zzcob zzcobVar, Context context, zzbbd zzbbdVar, zzfmv zzfmvVar, zzhdi zzhdiVar, ScheduledExecutorService scheduledExecutorService, zzeao zzeaoVar, zzfte zzfteVar, VersionInfoParcel versionInfoParcel, zzbkl zzbklVar, zzfma zzfmaVar, zzj zzjVar, zza zzaVar) {
        List listZzZ;
        this.zzf = zzcobVar;
        this.zzg = context;
        this.zzh = zzbbdVar;
        this.zzi = zzfmaVar;
        this.zzj = zzfmvVar;
        this.zzk = zzhdiVar;
        this.zzl = scheduledExecutorService;
        this.zzp = zzeaoVar;
        this.zzq = zzfteVar;
        this.zzy = versionInfoParcel;
        this.zzI = zzbklVar;
        this.zzJ = zzjVar;
        this.zzK = zzaVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzix)).booleanValue()) {
            this.zzB = zzZ((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziy));
            this.zzC = zzZ((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziz));
            this.zzD = zzZ((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziA));
            listZzZ = zzZ((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziB));
        } else {
            this.zzB = zza;
            this.zzC = zzb;
            this.zzD = zzc;
            listZzZ = zzd;
        }
        this.zzE = listZzZ;
    }

    static final Uri zzO(Uri uri, String str, String str2) {
        return zzY(uri, str, ProtectedFastSSH.s("㱽"));
    }

    static final Uri zzP(Uri uri, String str) {
        return !TextUtils.isEmpty(str) ? zzY(uri, ProtectedFastSSH.s("㱾"), str) : uri;
    }

    private final void zzQ(List list, IObjectWrapper iObjectWrapper, zzcai zzcaiVar, boolean z) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziG)).booleanValue()) {
            try {
                zzcaiVar.zzf(ProtectedFastSSH.s("㱿"));
                return;
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("", e);
                return;
            }
        }
        zzhdi zzhdiVar = this.zzk;
        ListenableFuture listenableFutureZzc = zzhdiVar.zzc(new zzad(this, list, iObjectWrapper));
        if (zzX()) {
            listenableFutureZzc = zzhcy.zzj(listenableFutureZzc, new zzaf(this), zzhdiVar);
        } else {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh(ProtectedFastSSH.s("㲀"));
        }
        zzhcy.zzr(listenableFutureZzc, new zzz(this, zzcaiVar, z), this.zzf.zzb());
    }

    private final void zzR(List list, IObjectWrapper iObjectWrapper, zzcai zzcaiVar, boolean z) {
        ListenableFuture listenableFutureZzc;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziG)).booleanValue()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            String strS = ProtectedFastSSH.s("㱿");
            com.google.android.gms.ads.internal.util.client.zzo.zzi(strS);
            try {
                zzcaiVar.zzf(strS);
                return;
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("", e);
                return;
            }
        }
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (zzc((Uri) it.next())) {
                i2++;
            }
        }
        if (i2 > 1) {
            String strValueOf = String.valueOf(list);
            String.valueOf(strValueOf);
            String strValueOf2 = String.valueOf(strValueOf);
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("㲁").concat(strValueOf2));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            Uri uri = (Uri) it2.next();
            if (zzc(uri)) {
                zzhdi zzhdiVar = this.zzk;
                listenableFutureZzc = zzhdiVar.zzc(new zzag(this, uri, iObjectWrapper));
                if (zzX()) {
                    listenableFutureZzc = zzhcy.zzj(listenableFutureZzc, new zzah(this), zzhdiVar);
                } else {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzh(ProtectedFastSSH.s("㲀"));
                }
            } else {
                String strValueOf3 = String.valueOf(uri);
                String.valueOf(strValueOf3);
                String strValueOf4 = String.valueOf(strValueOf3);
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("㲂").concat(strValueOf4));
                listenableFutureZzc = zzhcy.zza(uri);
            }
            arrayList.add(listenableFutureZzc);
        }
        zzhcy.zzr(zzhcy.zzm(arrayList), new zzaa(this, zzcaiVar, z), this.zzf.zzb());
    }

    private final void zzS() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzli)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzll)).booleanValue()) {
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlp)).booleanValue() && this.zzF.getAndSet(true)) {
                return;
            }
            zzT();
        }
    }

    private final void zzT() {
        zzap zzapVar;
        ListenableFuture listenableFutureZzc;
        if (((Boolean) zzblm.zze.zze()).booleanValue()) {
            this.zzJ.zza();
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmJ)).booleanValue()) {
            listenableFutureZzc = zzhcy.zzf(new zzai(this), zzcgj.zza);
            zzapVar = this;
        } else {
            try {
                zzapVar = this;
                try {
                    listenableFutureZzc = zzapVar.zzV(this.zzg, null, AdFormat.BANNER.name(), null, null, new Bundle()).zza();
                } catch (NullPointerException e) {
                    e = e;
                    listenableFutureZzc = zzhcy.zzc(e);
                }
            } catch (NullPointerException e2) {
                e = e2;
                zzapVar = this;
            }
        }
        zzhcy.zzr(listenableFutureZzc, new zzab(this), zzapVar.zzf.zzb());
    }

    private static boolean zzU(Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x00a1  */
    private final zzx zzV(Context context, String str, String str2, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, Bundle bundle) {
        byte b;
        zzflv zzflvVar = new zzflv();
        String strS = ProtectedFastSSH.s("㲃");
        boolean zEquals = strS.equals(str2);
        String strS2 = ProtectedFastSSH.s("㲄");
        if (zEquals) {
            zzflvVar.zzj().zza(2);
        } else if (strS2.equals(str2)) {
            zzflvVar.zzj().zza(3);
        }
        zzw zzwVarZzr = this.zzf.zzr();
        zzdcy zzdcyVar = new zzdcy();
        zzdcyVar.zza(context);
        if (str == null) {
            str = ProtectedFastSSH.s("㲅");
        }
        zzflvVar.zzg(str);
        if (zzmVar == null) {
            zzmVar = new com.google.android.gms.ads.internal.client.zzn().zza();
        }
        zzflvVar.zza(zzmVar);
        if (zzrVar == null) {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (!str2.equals(ProtectedFastSSH.s("㲈"))) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case -428325382:
                    if (!str2.equals(ProtectedFastSSH.s("㲇"))) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case 543046670:
                    if (!str2.equals(strS)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case 1854800829:
                    if (!str2.equals(strS2)) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case 1951953708:
                    if (!str2.equals(ProtectedFastSSH.s("㲆"))) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0) {
                zzrVar = new com.google.android.gms.ads.internal.client.zzr(context, AdSize.BANNER);
            } else if (b == 1 || b == 2) {
                zzrVar = com.google.android.gms.ads.internal.client.zzr.zzc();
            } else if (b != 3) {
                zzrVar = b != 4 ? new com.google.android.gms.ads.internal.client.zzr() : com.google.android.gms.ads.internal.client.zzr.zzd();
            } else {
                zzrVar = com.google.android.gms.ads.internal.client.zzr.zzb();
            }
        }
        zzflvVar.zzc(zzrVar);
        zzflvVar.zzu(true);
        zzflvVar.zzv(bundle);
        zzdcyVar.zzb(zzflvVar.zzB());
        zzwVarZzr.zzc(zzdcyVar.zze());
        zzas zzasVar = new zzas();
        zzasVar.zza(str2);
        zzwVarZzr.zzb(new zzat(zzasVar, null));
        new zzdjo();
        return zzwVarZzr.zza();
    }

    private final ListenableFuture zzW(String str) {
        zzdvv[] zzdvvVarArr = new zzdvv[1];
        ListenableFuture listenableFutureZzb = this.zzj.zzb();
        zzan zzanVar = new zzan(this, zzdvvVarArr, str);
        zzhdi zzhdiVar = this.zzk;
        ListenableFuture listenableFutureZzj = zzhcy.zzj(listenableFutureZzb, zzanVar, zzhdiVar);
        listenableFutureZzj.addListener(new zzae(this, zzdvvVarArr), zzhdiVar);
        return (zzhcq) zzhcy.zzg((zzhcq) zzhcy.zzk((zzhcq) zzhcy.zzi(zzhcq.zzw(listenableFutureZzj), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziH)).intValue(), TimeUnit.MILLISECONDS, this.zzl), zzal.zza, zzhdiVar), Exception.class, zzam.zza, zzhdiVar);
    }

    private final boolean zzX() {
        Map map;
        zzcal zzcalVar = this.zzm;
        return (zzcalVar == null || (map = zzcalVar.zzb) == null || map.isEmpty()) ? false : true;
    }

    private static final Uri zzY(Uri uri, String str, String str2) {
        String string = uri.toString();
        int iIndexOf = string.indexOf(ProtectedFastSSH.s("㲉"));
        if (iIndexOf == -1) {
            iIndexOf = string.indexOf(ProtectedFastSSH.s("㲊"));
        }
        if (iIndexOf == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i = iIndexOf + 1;
        return Uri.parse(string.substring(0, i) + str + ProtectedFastSSH.s("㲋") + str2 + ProtectedFastSSH.s("㲌") + string.substring(i));
    }

    private static final List zzZ(String str) {
        String[] strArrSplit = TextUtils.split(str, ProtectedFastSSH.s("㲍"));
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            if (!zzgvb.zzc(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    static zzfrg zzx(ListenableFuture listenableFuture, zzcfi zzcfiVar) {
        if (!zzfrj.zza() || !((Boolean) zzbla.zze.zze()).booleanValue()) {
            return null;
        }
        try {
            zzfrg zzfrgVarZzb = ((zzx) zzhcy.zzs(listenableFuture)).zzb();
            zzfrgVarZzb.zzb(new ArrayList(Collections.singletonList(zzcfiVar.zzb)));
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzcfiVar.zzd;
            zzfrgVarZzb.zzc(zzmVar == null ? "" : zzmVar.zzp);
            zzfrgVarZzb.zzd(zzmVar.zzm);
            return zzfrgVarZzb;
        } catch (ExecutionException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzh(e, ProtectedFastSSH.s("㲎"));
            return null;
        }
    }

    final zzfte zzA() {
        return this.zzq;
    }

    final boolean zzB() {
        return this.zzr;
    }

    final boolean zzC() {
        return this.zzs;
    }

    final boolean zzD() {
        return this.zzt;
    }

    final boolean zzE() {
        return this.zzu;
    }

    final String zzF() {
        return this.zzv;
    }

    final String zzG() {
        return this.zzw;
    }

    final AtomicInteger zzH() {
        return this.zzx;
    }

    final VersionInfoParcel zzI() {
        return this.zzy;
    }

    final String zzJ() {
        return this.zzz;
    }

    final void zzK(String str) {
        this.zzz = str;
    }

    final String zzL() {
        return this.zzA;
    }

    final AtomicBoolean zzM() {
        return this.zzG;
    }

    final AtomicInteger zzN() {
        return this.zzH;
    }

    final boolean zzb(Uri uri) {
        return zzU(uri, this.zzD, this.zzE);
    }

    final boolean zzc(Uri uri) {
        return zzU(uri, this.zzB, this.zzC);
    }

    final zzx zzd(zzcfi zzcfiVar, Bundle bundle) {
        return zzV(this.zzg, zzcfiVar.zza, zzcfiVar.zzb, zzcfiVar.zzc, zzcfiVar.zzd, bundle);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:18:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:23:0x00ee  */
    @Override
    public final void zze(IObjectWrapper iObjectWrapper, zzcfi zzcfiVar, zzcfb zzcfbVar) {
        ListenableFuture listenableFutureZza;
        ListenableFuture listenableFutureZzc;
        ListenableFuture listenableFutureZzc2;
        Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcS)).booleanValue()) {
            bundle.putLong(zzdzs.zza.zza(), zzcfiVar.zzd.zzz);
            bundle.putLong(zzdzs.zzb.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        this.zzg = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzdn)).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzay.zzc();
        }
        zzfqw zzfqwVarZzn = zzfqw.CC.zzn(this.zzg, 22);
        zzfqwVarZzn.zza();
        if (ProtectedFastSSH.s("㲏").equals(zzcfiVar.zzb)) {
            List arrayList = new ArrayList();
            zzbix zzbixVar = zzbjg.zziF;
            if (!((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).isEmpty()) {
                arrayList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).split(ProtectedFastSSH.s("㲍")));
            }
            if (arrayList.contains(zzv.zzc(zzcfiVar.zzd))) {
                String strS = ProtectedFastSSH.s("㲐");
                listenableFutureZzc2 = zzhcy.zzc(new IllegalArgumentException(strS));
                listenableFutureZzc = zzhcy.zzc(new IllegalArgumentException(strS));
            } else {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmJ)).booleanValue()) {
                    zzhdi zzhdiVar = zzcgj.zza;
                    listenableFutureZza = zzhdiVar.zzc(new zzao(this, zzcfiVar, bundle));
                    try {
                        listenableFutureZzc = zzhcy.zzj(listenableFutureZza, zzac.zza, zzhdiVar);
                    } catch (NullPointerException e) {
                        listenableFutureZzc = zzhcy.zzc(e);
                    }
                } else {
                    zzx zzxVarZzV = zzV(this.zzg, zzcfiVar.zza, zzcfiVar.zzb, zzcfiVar.zzc, zzcfiVar.zzd, bundle);
                    listenableFutureZza = zzhcy.zza(zzxVarZzV);
                    try {
                        listenableFutureZzc = zzxVarZzV.zza();
                    } catch (NullPointerException e2) {
                        listenableFutureZzc = zzhcy.zzc(e2);
                    }
                }
                listenableFutureZzc2 = listenableFutureZza;
            }
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmJ)).booleanValue()) {
                zzhdi zzhdiVar2 = zzcgj.zza;
                listenableFutureZza = zzhdiVar2.zzc(new zzao(this, zzcfiVar, bundle));
                listenableFutureZzc = zzhcy.zzj(listenableFutureZza, zzac.zza, zzhdiVar2);
            } else {
                zzx zzxVarZzV2 = zzV(this.zzg, zzcfiVar.zza, zzcfiVar.zzb, zzcfiVar.zzc, zzcfiVar.zzd, bundle);
                listenableFutureZza = zzhcy.zza(zzxVarZzV2);
                listenableFutureZzc = zzxVarZzV2.zza();
            }
            listenableFutureZzc2 = listenableFutureZza;
        }
        zzhcy.zzr(listenableFutureZzc, new zzy(this, listenableFutureZzc2, zzcfiVar, zzcfbVar, zzfqwVarZzn), this.zzf.zzb());
    }

    @Override
    public final void zzf(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziG)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper);
            zzcal zzcalVar = this.zzm;
            this.zzn = zzbs.zzh(motionEvent, zzcalVar == null ? null : zzcalVar.zza);
            if (motionEvent.getAction() == 0) {
                this.zzo = this.zzn;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setLocation(this.zzn.x, this.zzn.y);
            this.zzh.zzc(motionEventObtain);
            motionEventObtain.recycle();
        }
    }

    @Override
    public final void zzg(List list, IObjectWrapper iObjectWrapper, zzcai zzcaiVar) {
        zzQ(list, iObjectWrapper, zzcaiVar, false);
    }

    @Override
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzcai zzcaiVar) {
        zzR(list, iObjectWrapper, zzcaiVar, false);
    }

    @Override
    public final void zzi(zzcal zzcalVar) {
        this.zzm = zzcalVar;
        this.zzj.zza(1);
    }

    @Override
    public final void zzj(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlh)).booleanValue()) {
            zzbix zzbixVar = zzbjg.zziE;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).booleanValue()) {
                zzS();
            }
            WebView webView = (WebView) ObjectWrapper.unwrap(iObjectWrapper);
            if (webView == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf(ProtectedFastSSH.s("㲑"));
                return;
            }
            zza zzaVar = this.zzK;
            zze zzeVar = new zze(webView, zzaVar, zzcgj.zzf);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.zzh, this.zzp, this.zzq, this.zzi, this.zzJ, zzaVar, zzeVar), ProtectedFastSSH.s("㲒"));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlr)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzh().zzn();
            }
            if (((Boolean) zzblm.zzc.zze()).booleanValue()) {
                zzaVar.zza(webView);
                if (((Boolean) zzblm.zzd.zze()).booleanValue()) {
                    zzeVar.zza();
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).booleanValue()) {
                zzS();
            }
        }
    }

    @Override
    public final void zzk(List list, IObjectWrapper iObjectWrapper, zzcai zzcaiVar) {
        zzQ(list, iObjectWrapper, zzcaiVar, true);
    }

    @Override
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzcai zzcaiVar) {
        zzR(list, iObjectWrapper, zzcaiVar, true);
    }

    @Override
    public final IObjectWrapper zzm(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlv)).booleanValue()) {
            return ObjectWrapper.wrap(null);
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        CustomTabsClient customTabsClient = (CustomTabsClient) ObjectWrapper.unwrap(iObjectWrapper2);
        CustomTabsCallback customTabsCallback = (CustomTabsCallback) ObjectWrapper.unwrap(iObjectWrapper3);
        zzbkl zzbklVar = this.zzI;
        zzbklVar.zza(context, customTabsClient, str, customTabsCallback);
        if (((Boolean) zzblm.zze.zze()).booleanValue()) {
            this.zzJ.zza();
        }
        if (((Boolean) zzblm.zzc.zze()).booleanValue()) {
            this.zzK.zza(null);
        }
        return ObjectWrapper.wrap(zzbklVar.zzb());
    }

    final ArrayList zzn(List list, IObjectWrapper iObjectWrapper) throws Exception {
        zzbbd zzbbdVar = this.zzh;
        String strZzj = zzbbdVar.zzb() != null ? zzbbdVar.zzb().zzj(this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null) : "";
        if (TextUtils.isEmpty(strZzj)) {
            throw new Exception(ProtectedFastSSH.s("㲕"));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (zzb(uri)) {
                arrayList.add(zzY(uri, ProtectedFastSSH.s("㲓"), strZzj));
            } else {
                String strValueOf = String.valueOf(uri);
                String.valueOf(strValueOf);
                String strValueOf2 = String.valueOf(strValueOf);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("㲂").concat(strValueOf2));
                arrayList.add(uri);
            }
        }
        if (arrayList.isEmpty()) {
            throw new Exception(ProtectedFastSSH.s("㲔"));
        }
        return arrayList;
    }

    final ListenableFuture zzo(ArrayList arrayList) {
        return zzhcy.zzk(zzW(ProtectedFastSSH.s("㲖")), new zzaj(this, arrayList), this.zzk);
    }

    final Uri zzp(Uri uri, IObjectWrapper iObjectWrapper) throws Exception {
        zzfma zzfmaVar;
        try {
            uri = (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zznH)).booleanValue() || (zzfmaVar = this.zzi) == null) ? this.zzh.zzd(uri, this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null) : zzfmaVar.zza(uri, this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        } catch (zzbbe e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("", e);
        }
        if (uri.getQueryParameter(ProtectedFastSSH.s("㲓")) != null) {
            return uri;
        }
        throw new Exception(ProtectedFastSSH.s("㲗"));
    }

    final ListenableFuture zzq(Uri uri) {
        return zzhcy.zzk(zzW(ProtectedFastSSH.s("㲘")), new zzak(this, uri), this.zzk);
    }

    final ListenableFuture zzr() {
        try {
            return zzV(this.zzg, null, AdFormat.BANNER.name(), null, null, new Bundle()).zza();
        } catch (NullPointerException e) {
            return zzhcy.zzc(e);
        }
    }

    final ArrayList zzs(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!zzb(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(zzY(uri, ProtectedFastSSH.s("㱾"), str));
            }
        }
        return arrayList;
    }

    final ListenableFuture zzt(zzdvv[] zzdvvVarArr, String str, zzdvv zzdvvVar) throws JSONException {
        zzdvvVarArr[0] = zzdvvVar;
        Context context = this.zzg;
        zzcal zzcalVar = this.zzm;
        Map map = zzcalVar.zzb;
        JSONObject jSONObjectZze = zzbs.zze(context, map, map, zzcalVar.zza, null);
        JSONObject jSONObjectZzb = zzbs.zzb(this.zzg, this.zzm.zza);
        JSONObject jSONObjectZzc = zzbs.zzc(this.zzm.zza);
        JSONObject jSONObjectZzd = zzbs.zzd(this.zzg, this.zzm.zza);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ProtectedFastSSH.s("㲙"), jSONObjectZze);
        jSONObject.put(ProtectedFastSSH.s("㲚"), jSONObjectZzb);
        jSONObject.put(ProtectedFastSSH.s("㲛"), jSONObjectZzc);
        jSONObject.put(ProtectedFastSSH.s("㲜"), jSONObjectZzd);
        if (ProtectedFastSSH.s("㲘").equals(str)) {
            jSONObject.put(ProtectedFastSSH.s("㲝"), zzbs.zzf(null, this.zzg, this.zzo, this.zzn));
        }
        return zzdvvVar.zzc(str, jSONObject);
    }

    final void zzu(zzdvv[] zzdvvVarArr) {
        zzdvv zzdvvVar = zzdvvVarArr[0];
        if (zzdvvVar != null) {
            this.zzj.zzc(zzhcy.zza(zzdvvVar));
        }
    }

    final void zzv(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (zzc((Uri) it.next())) {
                this.zzx.getAndIncrement();
                return;
            }
        }
    }

    final void zzw() {
        zzT();
    }

    final Context zzy() {
        return this.zzg;
    }

    final zzeao zzz() {
        return this.zzp;
    }
}
