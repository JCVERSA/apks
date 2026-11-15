package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzblh;
import com.google.android.gms.internal.ads.zzbou;
import defpackage.bah;
import defpackage.cye;
import defpackage.f5f;
import defpackage.g5f;
import defpackage.j3i;
import defpackage.kqe;
import defpackage.wd8;
import defpackage.x7f;
import defpackage.xze;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;

public final class zzet {
    public static zzet j;
    public static final Set zza = new HashSet(Arrays.asList(AdFormat.APP_OPEN_AD, AdFormat.INTERSTITIAL, AdFormat.REWARDED));
    public zzcy g;
    public final Object a = new Object();
    public final Object b = new Object();
    public boolean d = false;
    public boolean e = false;
    public final Object f = new Object();
    public OnAdInspectorClosedListener h = null;
    public RequestConfiguration i = new RequestConfiguration.Builder().build();
    public final ArrayList c = new ArrayList();

    public static InitializationStatus a(List list) {
        HashMap map = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzblh zzblhVar = (zzblh) it.next();
            map.put(zzblhVar.zza, new f5f(zzblhVar.zzb ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzblhVar.zzd, zzblhVar.zzc));
        }
        return new g5f(map);
    }

    public static PreloadConfiguration g(zzet zzetVar, zzfp zzfpVar) {
        String str = zzfpVar.zza;
        AdFormat adFormat = AdFormat.getAdFormat(zzfpVar.zzb);
        if (adFormat == null) {
            return null;
        }
        zzm zzmVar = zzfpVar.zzc;
        AdRequest.Builder builder = new AdRequest.Builder();
        List list = zzmVar.zze;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                builder.addKeyword((String) it.next());
            }
        }
        builder.zzc(zzmVar.zzm);
        Bundle bundle = zzmVar.zzn;
        for (String str2 : bundle.keySet()) {
            builder.addCustomTargeting(str2, bundle.getString(str2));
        }
        builder.setAdString(zzmVar.zzx);
        String str3 = zzmVar.zzl;
        if (str3 != null) {
            builder.setContentUrl(str3);
        }
        builder.setNeighboringContentUrls(zzmVar.zzv);
        builder.setRequestAgent(zzmVar.zzp);
        AdRequest adRequestBuild = builder.build();
        PreloadConfiguration.Builder builder2 = new PreloadConfiguration.Builder(str, adFormat);
        builder2.setAdRequest(adRequestBuild);
        builder2.setBufferSize(zzfpVar.zzd);
        return builder2.build();
    }

    public static zzet zzf() {
        zzet zzetVar;
        synchronized (zzet.class) {
            try {
                if (j == null) {
                    j = new zzet();
                }
                zzetVar = j;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzetVar;
    }

    public static void zzl(zzet zzetVar, Context context, String str) {
        synchronized (zzetVar.f) {
            zzetVar.b(context, null);
        }
    }

    public static void zzm(zzet zzetVar, Context context, String str) {
        synchronized (zzetVar.f) {
            zzetVar.b(context, null);
        }
    }

    public final void b(Context context, String str) {
        try {
            x7f.a().b(context, null);
            this.g.zzk();
            this.g.zzl(null, ObjectWrapper.wrap(null));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("MobileAdsSettingManager initialization failed", e);
        }
    }

    public final void c(Context context) {
        if (this.g == null) {
            this.g = (zzcy) new kqe(zzbb.zza(), context).d(context, false);
        }
    }

    public final void d(RequestConfiguration requestConfiguration) {
        try {
            this.g.zzu(new zzfr(requestConfiguration));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set request configuration parcel.", e);
        }
    }

    public final float zza() {
        synchronized (this.f) {
            zzcy zzcyVar = this.g;
            float fZze = 1.0f;
            if (zzcyVar == null) {
                return 1.0f;
            }
            try {
                fZze = zzcyVar.zze();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to get app volume.", e);
            }
            return fZze;
        }
    }

    @NonNull
    public final RequestConfiguration zzc() {
        return this.i;
    }

    public final InitializationStatus zze() {
        InitializationStatus initializationStatusA;
        synchronized (this.f) {
            try {
                wd8.p(this.g != null, "MobileAds.initialize() must be called prior to getting initialization status.");
                try {
                    initializationStatusA = a(this.g.zzg());
                } catch (RemoteException unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to get Initialization status.");
                    return new InitializationStatus() {
                        @Override
                        public final Map getAdapterStatusMap() {
                            HashMap map = new HashMap();
                            map.put("com.google.android.gms.ads.MobileAds", new bah(this.zza));
                            return map;
                        }
                    };
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return initializationStatusA;
    }

    public final Status zzh(@NonNull Context context, @NonNull List list, @NonNull PreloadCallback preloadCallback) {
        boolean z;
        Status status;
        int bufferSize;
        int iIntValue;
        int iIntValue2;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PreloadConfiguration preloadConfiguration = (PreloadConfiguration) it.next();
            String str = String.valueOf(preloadConfiguration.getAdFormat()) + "#" + preloadConfiguration.getAdUnitId();
            map.put(str, Integer.valueOf(((Integer) com.google.android.gms.ads.internal.util.client.zzf.zze(map, str, 0)).intValue() + 1));
        }
        Iterator it2 = map.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            if (((Integer) ((Map.Entry) it2.next()).getValue()).intValue() > 1) {
                hashSet.add("Preload configurations include duplicated ad unit IDs and ad format combinations");
                z = true;
                break;
            }
        }
        HashMap map2 = new HashMap();
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            PreloadConfiguration preloadConfiguration2 = (PreloadConfiguration) it3.next();
            AdFormat adFormat = preloadConfiguration2.getAdFormat();
            if (zza.contains(preloadConfiguration2.getAdFormat())) {
                map2.put(adFormat, Integer.valueOf(((Integer) com.google.android.gms.ads.internal.util.client.zzf.zze(map2, adFormat, 0)).intValue() + 1));
                if (preloadConfiguration2.getBufferSize() > 15) {
                    hashSet.add(String.format(Locale.US, "Preload configurations' buffer size exceeds the maximum limit %d for %s", 15, adFormat.name()));
                } else if (preloadConfiguration2.getBufferSize() < 0) {
                    hashSet.add(String.format(Locale.US, "Preload configurations' buffer size less than 0 for %s", adFormat.name()));
                }
            } else {
                hashSet.add("PreloadConfiguration ad format is not supported:".concat(String.valueOf(preloadConfiguration2.getAdFormat())));
            }
            z = true;
        }
        EnumMap enumMap = new EnumMap(AdFormat.class);
        enumMap.put(AdFormat.APP_OPEN_AD, (Integer) zzbd.zzc().b(cye.I4));
        enumMap.put(AdFormat.INTERSTITIAL, (Integer) zzbd.zzc().b(cye.G4));
        enumMap.put(AdFormat.REWARDED, (Integer) zzbd.zzc().b(cye.H4));
        for (Map.Entry entry : map2.entrySet()) {
            AdFormat adFormat2 = (AdFormat) entry.getKey();
            int iIntValue3 = ((Integer) entry.getValue()).intValue();
            Integer num = (Integer) com.google.android.gms.ads.internal.util.client.zzf.zze(enumMap, adFormat2, 0);
            if (iIntValue3 > num.intValue()) {
                hashSet.add(String.format(Locale.US, "Preload configurations' size exceeds the maximum limit %d for %s", num, adFormat2.name()));
                z = true;
            }
        }
        if (z) {
            StringBuilder sb = new StringBuilder();
            Iterator it4 = hashSet.iterator();
            while (it4.hasNext()) {
                sb.append((String) it4.next());
                if (it4.hasNext()) {
                    sb.append(", ");
                }
            }
            String string = sb.toString();
            com.google.android.gms.ads.internal.util.client.zzo.zzg(string);
            status = new Status(13, string);
        } else {
            status = Status.RESULT_SUCCESS;
        }
        String statusMessage = status.getStatusMessage();
        if (statusMessage == null) {
            statusMessage = "";
        }
        wd8.b(status.isSuccess(), statusMessage);
        cye.a(context);
        synchronized (this.b) {
            try {
                ArrayList arrayList = new ArrayList();
                Iterator it5 = list.iterator();
                while (it5.hasNext()) {
                    PreloadConfiguration preloadConfiguration3 = (PreloadConfiguration) it5.next();
                    zzm zzmVarZza = zzq.zza.zza(context, preloadConfiguration3.getAdRequest().zza());
                    zzmVarZza.zzc.putBoolean("is_sdk_preload", true);
                    if (preloadConfiguration3.getBufferSize() <= 0) {
                        int iOrdinal = preloadConfiguration3.getAdFormat().ordinal();
                        if (iOrdinal == 1) {
                            bufferSize = ((Integer) zzbd.zzc().b(cye.I)).intValue();
                        } else if (iOrdinal == 2) {
                            bufferSize = ((Integer) zzbd.zzc().b(cye.J)).intValue();
                        } else if (iOrdinal != 5) {
                            bufferSize = 1;
                        } else {
                            bufferSize = ((Integer) zzbd.zzc().b(cye.H)).intValue();
                        }
                    } else {
                        bufferSize = preloadConfiguration3.getBufferSize();
                    }
                    int iOrdinal2 = preloadConfiguration3.getAdFormat().ordinal();
                    if (iOrdinal2 == 1) {
                        iIntValue = ((Integer) zzbd.zzc().b(cye.F)).intValue();
                    } else if (iOrdinal2 == 2) {
                        iIntValue = ((Integer) zzbd.zzc().b(cye.G)).intValue();
                    } else if (iOrdinal2 != 5) {
                        iIntValue = 1;
                    } else {
                        iIntValue = ((Integer) zzbd.zzc().b(cye.E)).intValue();
                    }
                    int iMax = Math.max(Math.min(iIntValue, 15), 1);
                    int iOrdinal3 = preloadConfiguration3.getAdFormat().ordinal();
                    if (iOrdinal3 == 1) {
                        iIntValue2 = ((Integer) zzbd.zzc().b(cye.L)).intValue();
                    } else if (iOrdinal3 == 2) {
                        iIntValue2 = ((Integer) zzbd.zzc().b(cye.M)).intValue();
                    } else if (iOrdinal3 != 5) {
                        iIntValue2 = 1;
                    } else {
                        iIntValue2 = ((Integer) zzbd.zzc().b(cye.K)).intValue();
                    }
                    arrayList.add(new zzfp(preloadConfiguration3.getAdUnitId(), preloadConfiguration3.getAdFormat().getValue(), zzmVarZza, Math.max(Math.min(bufferSize, iMax), Math.min(iIntValue2, iMax))));
                }
                try {
                    com.google.android.gms.ads.zzb.zza(context).zzi(arrayList, new zzeo(this, preloadCallback));
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to start preload.", e);
                    return Status.RESULT_INTERNAL_ERROR;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return Status.RESULT_SUCCESS;
    }

    public final String zzj() {
        String strC;
        synchronized (this.f) {
            try {
                wd8.p(this.g != null, "MobileAds.initialize() must be called prior to getting version string.");
                try {
                    strC = j3i.c(this.g.zzf());
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to get internal version.", e);
                    return "";
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return strC;
    }

    public final void zzp(Context context) {
        synchronized (this.f) {
            c(context);
            try {
                this.g.zzi();
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to disable mediation adapter initialization.");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00a0 A[Catch: all -> 0x005d, TryCatch #1 {all -> 0x005d, blocks: (B:26:0x0034, B:28:0x0054, B:38:0x006d, B:40:0x007e, B:42:0x0090, B:49:0x00d3, B:43:0x00a0, B:45:0x00ae, B:47:0x00c0, B:48:0x00cb, B:35:0x0062, B:37:0x0068), top: B:57:0x0034, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ae A[Catch: all -> 0x005d, TryCatch #1 {all -> 0x005d, blocks: (B:26:0x0034, B:28:0x0054, B:38:0x006d, B:40:0x007e, B:42:0x0090, B:49:0x00d3, B:43:0x00a0, B:45:0x00ae, B:47:0x00c0, B:48:0x00cb, B:35:0x0062, B:37:0x0068), top: B:57:0x0034, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00c0 A[Catch: all -> 0x005d, TryCatch #1 {all -> 0x005d, blocks: (B:26:0x0034, B:28:0x0054, B:38:0x006d, B:40:0x007e, B:42:0x0090, B:49:0x00d3, B:43:0x00a0, B:45:0x00ae, B:47:0x00c0, B:48:0x00cb, B:35:0x0062, B:37:0x0068), top: B:57:0x0034, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00cb A[Catch: all -> 0x005d, TryCatch #1 {all -> 0x005d, blocks: (B:26:0x0034, B:28:0x0054, B:38:0x006d, B:40:0x007e, B:42:0x0090, B:49:0x00d3, B:43:0x00a0, B:45:0x00ae, B:47:0x00c0, B:48:0x00cb, B:35:0x0062, B:37:0x0068), top: B:57:0x0034, inners: #0 }] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void zzq(final Context context, @Nullable String str, @Nullable OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.a) {
            try {
                if (this.d) {
                    if (onInitializationCompleteListener != null) {
                        this.c.add(onInitializationCompleteListener);
                    }
                    return;
                }
                if (this.e) {
                    if (onInitializationCompleteListener != null) {
                        onInitializationCompleteListener.onInitializationComplete(zze());
                    }
                    return;
                }
                this.d = true;
                if (onInitializationCompleteListener != null) {
                    this.c.add(onInitializationCompleteListener);
                }
                if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
                synchronized (this.f) {
                    zzes zzesVar = null;
                    Object[] objArr = 0;
                    Object[] objArr2 = 0;
                    try {
                        try {
                            c(context);
                            this.g.zzs(new zzer(this, zzesVar));
                            this.g.zzo(new zzbou());
                            if (this.i.getTagForChildDirectedTreatment() != -1 || this.i.getTagForUnderAgeOfConsent() != -1) {
                                d(this.i);
                            }
                        } catch (RemoteException e) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzk("MobileAdsSettingManager initialization failed", e);
                        }
                        cye.a(context);
                        if (((Boolean) xze.a.e()).booleanValue()) {
                            if (((Boolean) zzbd.zzc().b(cye.mb)).booleanValue()) {
                                com.google.android.gms.ads.internal.util.client.zzo.zze("Initializing on bg thread");
                                ThreadPoolExecutor threadPoolExecutor = com.google.android.gms.ads.internal.util.client.zzb.zza;
                                final Object[] objArr3 = objArr2 == true ? 1 : 0;
                                threadPoolExecutor.execute(new Runnable(context, objArr3) {
                                    public final Context zzb;

                                    @Override
                                    public final void run() {
                                        zzet.zzm(this.zza, this.zzb, null);
                                    }
                                });
                            } else if (((Boolean) xze.b.e()).booleanValue()) {
                                if (((Boolean) zzbd.zzc().b(cye.mb)).booleanValue()) {
                                    ExecutorService executorService = com.google.android.gms.ads.internal.util.client.zzb.zzb;
                                    final Object[] objArr4 = objArr == true ? 1 : 0;
                                    executorService.execute(new Runnable(context, objArr4) {
                                        public final Context zzb;

                                        @Override
                                        public final void run() {
                                            zzet.zzl(this.zza, this.zzb, null);
                                        }
                                    });
                                } else {
                                    com.google.android.gms.ads.internal.util.client.zzo.zze("Initializing on calling thread");
                                    b(context, null);
                                }
                            } else {
                                com.google.android.gms.ads.internal.util.client.zzo.zze("Initializing on calling thread");
                                b(context, null);
                            }
                        } else if (((Boolean) xze.b.e()).booleanValue()) {
                            if (((Boolean) zzbd.zzc().b(cye.mb)).booleanValue()) {
                                ExecutorService executorService2 = com.google.android.gms.ads.internal.util.client.zzb.zzb;
                                final String objArr5 = objArr == true ? 1 : 0;
                                executorService2.execute(new Runnable(context, objArr5) {
                                    public final Context zzb;

                                    @Override
                                    public final void run() {
                                        zzet.zzl(this.zza, this.zzb, null);
                                    }
                                });
                            } else {
                                com.google.android.gms.ads.internal.util.client.zzo.zze("Initializing on calling thread");
                                b(context, null);
                            }
                        } else {
                            com.google.android.gms.ads.internal.util.client.zzo.zze("Initializing on calling thread");
                            b(context, null);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzr(Context context, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        synchronized (this.f) {
            c(context);
            this.h = onAdInspectorClosedListener;
            try {
                this.g.zzm(new zzeq(null));
            } catch (RemoteException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to open the ad inspector.");
                if (onAdInspectorClosedListener != null) {
                    onAdInspectorClosedListener.onAdInspectorClosed(new AdInspectorError(0, "Ad inspector had an internal error.", MobileAds.ERROR_DOMAIN));
                }
            }
        }
    }

    public final void zzs(Context context, String str) {
        synchronized (this.f) {
            wd8.p(this.g != null, "MobileAds.initialize() must be called prior to opening debug menu.");
            try {
                this.g.zzn(ObjectWrapper.wrap(context), str);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to open debug menu.", e);
            }
        }
    }

    public final void zzt(Class cls) {
        synchronized (this.f) {
            try {
                this.g.zzh(cls.getCanonicalName());
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to register RtbAdapter", e);
            }
        }
    }

    public final void zzu(boolean z) {
        synchronized (this.f) {
            wd8.p(this.g != null, "MobileAds.initialize() must be called prior to setting app muted state.");
            try {
                this.g.zzp(z);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set app mute state.", e);
            }
        }
    }

    public final void zzv(float f) {
        boolean z = true;
        wd8.b(f >= 0.0f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        synchronized (this.f) {
            if (this.g == null) {
                z = false;
            }
            wd8.p(z, "MobileAds.initialize() must be called prior to setting the app volume.");
            try {
                this.g.zzq(f);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set app volume.", e);
            }
        }
    }

    public final void zzw(String str) {
        synchronized (this.f) {
            wd8.p(this.g != null, "MobileAds.initialize() must be called prior to setting the plugin.");
            try {
                this.g.zzt(str);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to set plugin.", e);
            }
        }
    }

    public final void zzx(@NonNull RequestConfiguration requestConfiguration) {
        wd8.b(requestConfiguration != null, "Null passed to setRequestConfiguration.");
        synchronized (this.f) {
            try {
                RequestConfiguration requestConfiguration2 = this.i;
                this.i = requestConfiguration;
                if (this.g == null) {
                    return;
                }
                if (requestConfiguration2.getTagForChildDirectedTreatment() != requestConfiguration.getTagForChildDirectedTreatment() || requestConfiguration2.getTagForUnderAgeOfConsent() != requestConfiguration.getTagForUnderAgeOfConsent()) {
                    d(requestConfiguration);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzy() {
        synchronized (this.f) {
            zzcy zzcyVar = this.g;
            boolean zZzv = false;
            if (zzcyVar == null) {
                return false;
            }
            try {
                zZzv = zzcyVar.zzv();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to get app mute state.", e);
            }
            return zZzv;
        }
    }

    public final boolean zzz(boolean z) {
        synchronized (this.f) {
            try {
                wd8.p(this.g != null, "MobileAds.initialize() must be called prior to enable/disable the publisher first-party ID.");
                try {
                    this.g.zzj(z);
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to " + (z ? "enable" : "disable") + " the publisher first-party ID.", e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }
}
