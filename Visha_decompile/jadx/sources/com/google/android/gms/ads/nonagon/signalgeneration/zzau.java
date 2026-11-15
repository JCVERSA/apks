package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzauz;
import com.google.android.gms.internal.ads.zzbtn;
import com.google.android.gms.internal.ads.zzbtq;
import com.google.android.gms.internal.ads.zzbyf;
import com.google.android.gms.internal.ads.zzbyh;
import com.google.android.gms.internal.ads.zzbym;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzfgn;
import com.google.android.gms.internal.ads.zzfgq;
import defpackage.b6g;
import defpackage.cnh;
import defpackage.cye;
import defpackage.e0f;
import defpackage.foh;
import defpackage.fre;
import defpackage.g8i;
import defpackage.hig;
import defpackage.im5;
import defpackage.inh;
import defpackage.j3i;
import defpackage.j7i;
import defpackage.k7i;
import defpackage.kpe;
import defpackage.lkf;
import defpackage.m2i;
import defpackage.poe;
import defpackage.pyf;
import defpackage.q7i;
import defpackage.qxe;
import defpackage.rme;
import defpackage.sze;
import defpackage.vrh;
import defpackage.wne;
import defpackage.wrh;
import defpackage.wth;
import defpackage.xmg;
import defpackage.zef;
import defpackage.zye;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzau extends zzbyh {
    protected static final List zza = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));
    protected static final List zzb = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    protected static final List zzc = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));
    protected static final List zzd = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public static final int zze = 0;
    private final List zzB;
    private final List zzC;
    private final List zzD;
    private final List zzE;
    private final zye zzI;
    private final zzo zzJ;
    private final zzf zzK;
    private final lkf zzf;
    private Context zzg;
    private final fre zzh;
    private final inh zzi;
    private final foh zzj;
    private final g8i zzk;
    private final ScheduledExecutorService zzl;

    @Nullable
    private zzbtq zzm;
    private final xmg zzp;
    private final wth zzq;
    private final VersionInfoParcel zzy;
    private String zzz;
    private Point zzn = new Point();
    private Point zzo = new Point();
    private final AtomicInteger zzx = new AtomicInteger(0);
    private final AtomicBoolean zzF = new AtomicBoolean(false);
    private final AtomicBoolean zzG = new AtomicBoolean(false);
    private final AtomicInteger zzH = new AtomicInteger(0);
    private final boolean zzr = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.j7)).booleanValue();
    private final boolean zzs = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.i7)).booleanValue();
    private final boolean zzt = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.l7)).booleanValue();
    private final boolean zzu = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.n7)).booleanValue();
    private final String zzv = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.m7);
    private final String zzw = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.o7);
    private final String zzA = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.p7);

    public zzau(lkf lkfVar, Context context, fre freVar, foh fohVar, g8i g8iVar, ScheduledExecutorService scheduledExecutorService, xmg xmgVar, wth wthVar, VersionInfoParcel versionInfoParcel, zye zyeVar, inh inhVar, zzo zzoVar, zzf zzfVar) {
        List listZzZ;
        this.zzf = lkfVar;
        this.zzg = context;
        this.zzh = freVar;
        this.zzi = inhVar;
        this.zzj = fohVar;
        this.zzk = g8iVar;
        this.zzl = scheduledExecutorService;
        this.zzp = xmgVar;
        this.zzq = wthVar;
        this.zzy = versionInfoParcel;
        this.zzI = zyeVar;
        this.zzJ = zzoVar;
        this.zzK = zzfVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.q7)).booleanValue()) {
            this.zzB = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.r7));
            this.zzC = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.s7));
            this.zzD = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.t7));
            listZzZ = zzZ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.u7));
        } else {
            this.zzB = zza;
            this.zzC = zzb;
            this.zzD = zzc;
            listZzZ = zzd;
        }
        this.zzE = listZzZ;
    }

    public static ArrayList zzC(zzau zzauVar, List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!zzauVar.zzQ(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(zzaa(uri, "nas", str));
            }
        }
        return arrayList;
    }

    public static ArrayList zzD(zzau zzauVar, List list, IObjectWrapper iObjectWrapper) throws Exception {
        fre freVar = zzauVar.zzh;
        String strZzh = freVar.c() != null ? freVar.c().zzh(zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null) : "";
        if (TextUtils.isEmpty(strZzh)) {
            throw new Exception("Failed to get view signals.");
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (zzauVar.zzQ(uri)) {
                arrayList.add(zzaa(uri, "ms", strZzh));
            } else {
                String strValueOf = String.valueOf(uri);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Not a Google URL: ".concat(strValueOf));
                arrayList.add(uri);
            }
        }
        if (arrayList.isEmpty()) {
            throw new Exception("Empty impression URLs result.");
        }
        return arrayList;
    }

    public static void zzH(zzau zzauVar, hig[] higVarArr) {
        hig higVar = higVarArr[0];
        if (higVar != null) {
            zzauVar.zzj.b(j8.h(higVar));
        }
    }

    public static void zzJ(zzau zzauVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (zzauVar.zzP((Uri) it.next())) {
                zzauVar.zzx.getAndIncrement();
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x0083  */
    public final zzac zzR(Context context, String str, String str2, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, int i, @Nullable String str3, Bundle bundle, @Nullable zzbym zzbymVar) {
        byte b;
        cnh cnhVar = new cnh();
        if ("REWARDED".equals(str2)) {
            cnhVar.L().a(2);
        } else if ("REWARDED_INTERSTITIAL".equals(str2)) {
            cnhVar.L().a(3);
        }
        zzab zzabVarT = this.zzf.t();
        pyf pyfVar = new pyf();
        pyfVar.f(context);
        if (str == null) {
            str = "adUnitId";
        }
        cnhVar.P(str);
        if (zzmVar == null) {
            zzmVar = new com.google.android.gms.ads.internal.client.zzn().zza();
        }
        cnhVar.h(zzmVar);
        if (zzrVar == null) {
            switch (str2) {
                case "NATIVE":
                    b = 3;
                    break;
                case "APP_OPEN_AD":
                    b = 4;
                    break;
                case "REWARDED":
                    b = 1;
                    break;
                case "REWARDED_INTERSTITIAL":
                    b = 2;
                    break;
                case "BANNER":
                    b = 0;
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0) {
                zzrVar = new com.google.android.gms.ads.internal.client.zzr(context, AdSize.BANNER);
            } else if (b == 1 || b == 2) {
                zzrVar = com.google.android.gms.ads.internal.client.zzr.zzd();
            } else if (b != 3) {
                zzrVar = b != 4 ? new com.google.android.gms.ads.internal.client.zzr() : com.google.android.gms.ads.internal.client.zzr.zzb();
            } else {
                zzrVar = com.google.android.gms.ads.internal.client.zzr.zzc();
            }
        }
        cnhVar.O(zzrVar);
        cnhVar.V(true);
        cnhVar.a(bundle);
        pyfVar.k(cnhVar.j());
        pyfVar.i(i);
        zzabVarT.zza(pyfVar.l());
        zzax zzaxVar = new zzax();
        zzaxVar.zzb(str2);
        zzaxVar.zzc(str3);
        zzaxVar.zzd(zzbymVar);
        zzabVarT.zzb(new zzaz(zzaxVar, null));
        new b6g();
        return zzabVarT.zzc();
    }

    private final im5 zzS(final String str) {
        final hig[] higVarArr = new hig[1];
        im5 im5VarA = this.zzj.a();
        k7i k7iVar = new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return zzau.zzx(this.zza, higVarArr, str, (hig) obj);
            }
        };
        g8i g8iVar = this.zzk;
        im5 im5VarN = j8.n(im5VarA, k7iVar, g8iVar);
        im5VarN.addListener(new Runnable() {
            @Override
            public final void run() {
                zzau.zzH(this.zza, higVarArr);
            }
        }, g8iVar);
        return (q7i) j8.e((q7i) j8.m((q7i) j8.o(q7i.zzE(im5VarN), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.H7)).intValue(), TimeUnit.MILLISECONDS, this.zzl), new m2i() {
            @Override
            public final Object apply(Object obj) {
                int i = zzau.zze;
                return ((JSONObject) obj).optString("nas");
            }
        }, g8iVar), Exception.class, new m2i() {
            @Override
            public final Object apply(Object obj) {
                int i = zzau.zze;
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", (Exception) obj);
                return null;
            }
        }, g8iVar);
    }

    public final void zzT() {
        if (((Boolean) e0f.e.e()).booleanValue()) {
            this.zzJ.zze();
        } else {
            j8.r(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.ib)).booleanValue() ? j8.k(new j7i() {
                @Override
                public final im5 zza() {
                    zzau zzauVar = this.zza;
                    return zzauVar.zzR(zzauVar.zzg, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zzb();
                }
            }, zef.a) : zzR(this.zzg, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zzb(), new kpe(this), this.zzf.b());
        }
    }

    private final void zzU() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.H9)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.K9)).booleanValue()) {
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.O9)).booleanValue() && this.zzF.getAndSet(true)) {
                return;
            }
            zzT();
        }
    }

    private final void zzV(List list, final IObjectWrapper iObjectWrapper, zzbtn zzbtnVar, boolean z) {
        im5 im5VarM;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.G7)).booleanValue()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The updating URL feature is not enabled.");
            try {
                zzbtnVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
                return;
            }
        }
        Iterator it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (zzP((Uri) it.next())) {
                i2++;
            }
        }
        if (i2 > 1) {
            String strValueOf = String.valueOf(list);
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Multiple google urls found: ".concat(strValueOf));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final Uri uri = (Uri) it2.next();
            if (zzP(uri)) {
                g8i g8iVar = this.zzk;
                im5VarM = g8iVar.m(new Callable() {
                    @Override
                    public final Object call() {
                        return zzau.zzn(this.zza, uri, iObjectWrapper);
                    }
                });
                if (zzY()) {
                    im5VarM = j8.n(im5VarM, new k7i() {
                        @Override
                        public final im5 zza(Object obj) {
                            zzau zzauVar = this.zza;
                            return j8.m(zzauVar.zzS("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new m2i() {
                                @Override
                                public final Object apply(Object obj2) {
                                    return zzau.zzd(zzauVar, uri, (String) obj2);
                                }
                            }, zzauVar.zzk);
                        }
                    }, g8iVar);
                } else {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Asset view map is empty.");
                }
            } else {
                String strValueOf2 = String.valueOf(uri);
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Not a Google URL: ".concat(strValueOf2));
                im5VarM = j8.h(uri);
            }
            arrayList.add(im5VarM);
        }
        j8.r(j8.d(arrayList), new poe(this, zzbtnVar, z), this.zzf.b());
    }

    private final void zzW(final List list, final IObjectWrapper iObjectWrapper, zzbtn zzbtnVar, boolean z) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.G7)).booleanValue()) {
            try {
                zzbtnVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("", e);
                return;
            }
        }
        g8i g8iVar = this.zzk;
        im5 im5VarM = g8iVar.m(new Callable() {
            @Override
            public final Object call() {
                return zzau.zzD(this.zza, list, iObjectWrapper);
            }
        });
        if (zzY()) {
            im5VarM = j8.n(im5VarM, new k7i() {
                @Override
                public final im5 zza(Object obj) {
                    zzau zzauVar = this.zza;
                    return j8.m(zzauVar.zzS("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new m2i() {
                        @Override
                        public final Object apply(Object obj2) {
                            return zzau.zzC(this.zza, list, (String) obj2);
                        }
                    }, zzauVar.zzk);
                }
            }, g8iVar);
        } else {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Asset view map is empty.");
        }
        j8.r(im5VarM, new wne(this, zzbtnVar, z), this.zzf.b());
    }

    private static boolean zzX(@NonNull Uri uri, List list, List list2) {
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

    private final boolean zzY() {
        Map map;
        zzbtq zzbtqVar = this.zzm;
        return (zzbtqVar == null || (map = zzbtqVar.zzb) == null || map.isEmpty()) ? false : true;
    }

    private static final List zzZ(String str) {
        String[] strArrSplit = TextUtils.split(str, StringUtils.COMMA);
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            if (!j3i.d(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public static final Uri zzaa(Uri uri, String str, String str2) {
        String string = uri.toString();
        int iIndexOf = string.indexOf("&adurl=");
        if (iIndexOf == -1) {
            iIndexOf = string.indexOf("?adurl=");
        }
        if (iIndexOf == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i = iIndexOf + 1;
        return Uri.parse(string.substring(0, i) + str + "=" + str2 + "&" + string.substring(i));
    }

    public static Uri zzd(zzau zzauVar, Uri uri, String str) {
        return !TextUtils.isEmpty(str) ? zzaa(uri, "nas", str) : uri;
    }

    public static Uri zzn(zzau zzauVar, Uri uri, IObjectWrapper iObjectWrapper) throws Exception {
        inh inhVar;
        try {
            uri = (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.dc)).booleanValue() || (inhVar = zzauVar.zzi) == null) ? zzauVar.zzh.a(uri, zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null) : inhVar.a(uri, zzauVar.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        } catch (zzauz e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("", e);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    public static zzfgn zzs(im5 im5Var, zzbym zzbymVar) {
        if (!zzfgq.zza() || !((Boolean) sze.e.e()).booleanValue()) {
            return null;
        }
        try {
            zzfgn zzfgnVarZza = ((zzac) j8.p(im5Var)).zza();
            zzfgnVarZza.zzd(new ArrayList(Collections.singletonList(zzbymVar.zzb)));
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzbymVar.zzd;
            zzfgnVarZza.zzb(zzmVar == null ? "" : zzmVar.zzp);
            zzfgnVarZza.zzf(zzmVar.zzm);
            return zzfgnVarZza;
        } catch (ExecutionException e) {
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "SignalGeneratorImpl.getConfiguredCriticalUserJourney");
            return null;
        }
    }

    public static im5 zzx(zzau zzauVar, hig[] higVarArr, String str, hig higVar) throws JSONException {
        higVarArr[0] = higVar;
        Context context = zzauVar.zzg;
        zzbtq zzbtqVar = zzauVar.zzm;
        Map map = zzbtqVar.zzb;
        JSONObject jSONObjectZzd = zzbv.zzd(context, map, map, zzbtqVar.zza, null);
        JSONObject jSONObjectZzg = zzbv.zzg(zzauVar.zzg, zzauVar.zzm.zza);
        JSONObject jSONObjectZzf = zzbv.zzf(zzauVar.zzm.zza);
        JSONObject jSONObjectZze = zzbv.zze(zzauVar.zzg, zzauVar.zzm.zza);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", jSONObjectZzd);
        jSONObject.put("ad_view_signal", jSONObjectZzg);
        jSONObject.put("scroll_view_signal", jSONObjectZzf);
        jSONObject.put("lock_screen_signal", jSONObjectZze);
        if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str)) {
            jSONObject.put("click_signal", zzbv.zzc(null, zzauVar.zzg, zzauVar.zzo, zzauVar.zzn));
        }
        return higVar.g(str, jSONObject);
    }

    @VisibleForTesting
    public final boolean zzP(@NonNull Uri uri) {
        return zzX(uri, this.zzB, this.zzC);
    }

    @VisibleForTesting
    public final boolean zzQ(@NonNull Uri uri) {
        return zzX(uri, this.zzD, this.zzE);
    }

    @Override
    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.U9)).booleanValue()) {
            return ObjectWrapper.wrap(null);
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        CustomTabsClient customTabsClient = (CustomTabsClient) ObjectWrapper.unwrap(iObjectWrapper2);
        CustomTabsCallback customTabsCallback = (CustomTabsCallback) ObjectWrapper.unwrap(iObjectWrapper3);
        zye zyeVar = this.zzI;
        zyeVar.g(context, customTabsClient, str, customTabsCallback);
        if (((Boolean) e0f.e.e()).booleanValue()) {
            this.zzJ.zze();
        }
        if (((Boolean) e0f.c.e()).booleanValue()) {
            this.zzK.zzb(null);
        }
        return ObjectWrapper.wrap(zyeVar.b());
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:27:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:29:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:9:0x0065 A[PHI: r1
      0x0065: PHI (r1v3 int) = (r1v2 int), (r1v2 int), (r1v2 int), (r1v17 int) binds: [B:6:0x0057, B:8:0x0063, B:11:0x0071, B:14:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public final void zzf(IObjectWrapper iObjectWrapper, final zzbym zzbymVar, @Nullable zzbyf zzbyfVar) {
        final int i;
        im5 im5VarH;
        im5 im5VarZzb;
        im5 im5VarG;
        final Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.q2)).booleanValue()) {
            bundle.putLong(zzdqm.PUBLIC_API_CALL.zza(), zzbymVar.zzd.zzz);
            bundle.putLong(zzdqm.DYNAMITE_ENTER.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        this.zzg = context;
        wrh wrhVarA = vrh.a(context, 22);
        wrhVarA.zzi();
        int i2 = 0;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.z7)).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzbymVar.zzd;
            if (zzmVar.zzc.getBoolean("optimize_for_app_start", false) && Objects.equals(zzaa.zzc(zzmVar), "requester_type_8")) {
                i2 = 2;
                if (zzbymVar.zze == 2) {
                    i = i2;
                } else {
                    i = 1;
                }
            } else {
                i = i2;
            }
        } else {
            i = i2;
        }
        String str = zzbymVar.zzb;
        if ("UNKNOWN".equals(str)) {
            List arrayList = new ArrayList();
            qxe qxeVar = cye.y7;
            if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(qxeVar)).isEmpty()) {
                arrayList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(qxeVar)).split(StringUtils.COMMA));
            }
            if (arrayList.contains(zzaa.zzc(zzbymVar.zzd))) {
                im5VarG = j8.g(new IllegalArgumentException("Unknown format is no longer supported."));
                im5VarZzb = j8.g(new IllegalArgumentException("Unknown format is no longer supported."));
            } else {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.ib)).booleanValue()) {
                    g8i g8iVar = zef.a;
                    im5VarH = g8iVar.m(new Callable() {
                        @Override
                        public final Object call() {
                            zzau zzauVar = this.zza;
                            zzbym zzbymVar2 = zzbymVar;
                            return zzauVar.zzR(zzauVar.zzg, zzbymVar2.zza, zzbymVar2.zzb, zzbymVar2.zzc, zzbymVar2.zzd, i, zzbymVar2.zzf, bundle, zzbymVar2);
                        }
                    });
                    im5VarZzb = j8.n(im5VarH, new k7i() {
                        @Override
                        public final im5 zza(Object obj) {
                            return ((zzac) obj).zzb();
                        }
                    }, g8iVar);
                } else {
                    zzac zzacVarZzR = zzR(this.zzg, zzbymVar.zza, str, zzbymVar.zzc, zzbymVar.zzd, i, zzbymVar.zzf, bundle, zzbymVar);
                    im5VarH = j8.h(zzacVarZzR);
                    im5VarZzb = zzacVarZzR.zzb();
                }
                im5VarG = im5VarH;
            }
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.ib)).booleanValue()) {
                g8i g8iVar2 = zef.a;
                im5VarH = g8iVar2.m(new Callable() {
                    @Override
                    public final Object call() {
                        zzau zzauVar = this.zza;
                        zzbym zzbymVar2 = zzbymVar;
                        return zzauVar.zzR(zzauVar.zzg, zzbymVar2.zza, zzbymVar2.zzb, zzbymVar2.zzc, zzbymVar2.zzd, i, zzbymVar2.zzf, bundle, zzbymVar2);
                    }
                });
                im5VarZzb = j8.n(im5VarH, new k7i() {
                    @Override
                    public final im5 zza(Object obj) {
                        return ((zzac) obj).zzb();
                    }
                }, g8iVar2);
            } else {
                zzac zzacVarZzR2 = zzR(this.zzg, zzbymVar.zza, str, zzbymVar.zzc, zzbymVar.zzd, i, zzbymVar.zzf, bundle, zzbymVar);
                im5VarH = j8.h(zzacVarZzR2);
                im5VarZzb = zzacVarZzR2.zzb();
            }
            im5VarG = im5VarH;
        }
        j8.r(im5VarZzb, new rme(this, im5VarG, zzbymVar, zzbyfVar, wrhVarA), this.zzf.b());
    }

    @Override
    public final void zzg(zzbtq zzbtqVar) {
        this.zzm = zzbtqVar;
        this.zzj.c(1);
    }

    @Override
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) {
        zzV(list, iObjectWrapper, zzbtnVar, true);
    }

    @Override
    public final void zzi(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) {
        zzW(list, iObjectWrapper, zzbtnVar, true);
    }

    @Override
    @SuppressLint({"AddJavascriptInterface"})
    public final void zzj(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.G9)).booleanValue()) {
            qxe qxeVar = cye.x7;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(qxeVar)).booleanValue()) {
                zzU();
            }
            WebView webView = (WebView) ObjectWrapper.unwrap(iObjectWrapper);
            if (webView == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("The webView cannot be null.");
                return;
            }
            zzf zzfVar = this.zzK;
            final zzj zzjVar = new zzj(webView, zzfVar, zef.f);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.zzh, this.zzp, this.zzq, this.zzi, this.zzJ, zzfVar, zzjVar), "gmaSdk");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Q9)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().t();
            }
            if (((Boolean) e0f.c.e()).booleanValue()) {
                zzfVar.zzb(webView);
                if (((Boolean) e0f.d.e()).booleanValue()) {
                    zef.d.scheduleWithFixedDelay(new Runnable() {
                        @Override
                        public final void run() {
                            zzjVar.zzb();
                        }
                    }, 0L, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.R9)).intValue(), TimeUnit.MILLISECONDS);
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(qxeVar)).booleanValue()) {
                zzU();
            }
        }
    }

    @Override
    public final void zzk(IObjectWrapper iObjectWrapper) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.G7)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper);
            zzbtq zzbtqVar = this.zzm;
            this.zzn = zzbv.zza(motionEvent, zzbtqVar == null ? null : zzbtqVar.zza);
            if (motionEvent.getAction() == 0) {
                this.zzo = this.zzn;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            Point point = this.zzn;
            motionEventObtain.setLocation(point.x, point.y);
            this.zzh.d(motionEventObtain);
            motionEventObtain.recycle();
        }
    }

    @Override
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) {
        zzV(list, iObjectWrapper, zzbtnVar, false);
    }

    @Override
    public final void zzm(List list, IObjectWrapper iObjectWrapper, zzbtn zzbtnVar) {
        zzW(list, iObjectWrapper, zzbtnVar, false);
    }
}
