package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzjf;
import com.google.android.gms.measurement.internal.zzji;
import com.google.android.gms.measurement.internal.zzjj;
import com.google.android.gms.measurement.internal.zzlh;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;

public abstract class a {

    private static final ImmutableSet f30228a = ImmutableSet.of("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire");

    private static final ImmutableList f30229b = ImmutableList.of("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    private static final ImmutableList f30230c = ImmutableList.of("auto", "app", "am");

    private static final ImmutableList f30231d = ImmutableList.of("_r", "_dbg");

    private static final ImmutableList f30232e = new ImmutableList.a().k(zzjj.zza).k(zzjj.zzb).e();

    private static final ImmutableList f30233f = ImmutableList.of("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static Bundle a(mb.a.c cVar) {
        Bundle bundle = new Bundle();
        String str = cVar.f66350a;
        if (str != null) {
            bundle.putString("origin", str);
        }
        String str2 = cVar.f66351b;
        if (str2 != null) {
            bundle.putString("name", str2);
        }
        Object obj = cVar.f66352c;
        if (obj != null) {
            zzjf.zza(bundle, obj);
        }
        String str3 = cVar.f66353d;
        if (str3 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str3);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, cVar.f66354e);
        String str4 = cVar.f66355f;
        if (str4 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, str4);
        }
        Bundle bundle2 = cVar.f66356g;
        if (bundle2 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, bundle2);
        }
        String str5 = cVar.f66357h;
        if (str5 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, str5);
        }
        Bundle bundle3 = cVar.f66358i;
        if (bundle3 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, bundle3);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, cVar.f66359j);
        String str6 = cVar.f66360k;
        if (str6 != null) {
            bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str6);
        }
        Bundle bundle4 = cVar.f66361l;
        if (bundle4 != null) {
            bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle4);
        }
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, cVar.f66362m);
        bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, cVar.f66363n);
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, cVar.f66364o);
        return bundle;
    }

    public static String b(String str) {
        String strZza = zzji.zza(str);
        return strZza != null ? strZza : str;
    }

    public static mb.a.c c(Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        mb.a.c cVar = new mb.a.c();
        cVar.f66350a = (String) Preconditions.checkNotNull((String) zzjf.zza(bundle, "origin", String.class, null));
        cVar.f66351b = (String) Preconditions.checkNotNull((String) zzjf.zza(bundle, "name", String.class, null));
        cVar.f66352c = zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
        cVar.f66353d = (String) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        cVar.f66354e = ((Long) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
        cVar.f66355f = (String) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        cVar.f66356g = (Bundle) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        cVar.f66357h = (String) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        cVar.f66358i = (Bundle) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        cVar.f66359j = ((Long) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
        cVar.f66360k = (String) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        cVar.f66361l = (Bundle) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        cVar.f66363n = ((Boolean) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.class, Boolean.FALSE)).booleanValue();
        cVar.f66362m = ((Long) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.class, 0L)).longValue();
        cVar.f66364o = ((Long) zzjf.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.class, 0L)).longValue();
        return cVar;
    }

    public static void d(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean e(String str, Bundle bundle) {
        if (f30229b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        ImmutableList immutableList = f30231d;
        int size = immutableList.size();
        int i10 = 0;
        while (i10 < size) {
            E e10 = immutableList.get(i10);
            i10++;
            if (bundle.containsKey((String) e10)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean f(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals(AppMeasurement.FCM_ORIGIN) || str.equals(AppMeasurement.FIAM_ORIGIN);
        }
        if (f30232e.contains(str2)) {
            return false;
        }
        ImmutableList immutableList = f30233f;
        int size = immutableList.size();
        int i10 = 0;
        while (i10 < size) {
            E e10 = immutableList.get(i10);
            i10++;
            if (str2.matches((String) e10)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean g(String str, String str2, Bundle bundle) {
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!j(str) || bundle == null) {
            return false;
        }
        ImmutableList immutableList = f30231d;
        int size = immutableList.size();
        int i10 = 0;
        while (i10 < size) {
            E e10 = immutableList.get(i10);
            i10++;
            if (bundle.containsKey((String) e10)) {
                return false;
            }
        }
        str.hashCode();
        switch (str) {
            case "fcm":
                bundle.putString("_cis", "fcm_integration");
                return true;
            case "fdl":
                bundle.putString("_cis", "fdl_integration");
                return true;
            case "fiam":
                bundle.putString("_cis", "fiam_integration");
                return true;
            default:
                return false;
        }
    }

    public static boolean h(mb.a.c cVar) {
        String str;
        if (cVar == null || (str = cVar.f66350a) == null || str.isEmpty()) {
            return false;
        }
        Object obj = cVar.f66352c;
        if ((obj != null && zzlh.zza(obj) == null) || !j(str) || !f(str, cVar.f66351b)) {
            return false;
        }
        String str2 = cVar.f66360k;
        if (str2 != null && (!e(str2, cVar.f66361l) || !g(str, cVar.f66360k, cVar.f66361l))) {
            return false;
        }
        String str3 = cVar.f66357h;
        if (str3 != null && (!e(str3, cVar.f66358i) || !g(str, cVar.f66357h, cVar.f66358i))) {
            return false;
        }
        String str4 = cVar.f66355f;
        if (str4 != null) {
            return e(str4, cVar.f66356g) && g(str, cVar.f66355f, cVar.f66356g);
        }
        return true;
    }

    public static boolean i(String str) {
        return !f30228a.contains(str);
    }

    public static boolean j(String str) {
        return !f30230c.contains(str);
    }
}
