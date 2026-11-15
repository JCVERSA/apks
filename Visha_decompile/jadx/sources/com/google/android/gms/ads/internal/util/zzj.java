package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzazg;
import com.hisavana.common.constant.ComConstants;
import com.transsion.gslb.NetResponse;
import defpackage.cye;
import defpackage.d28;
import defpackage.g8i;
import defpackage.hb0;
import defpackage.ief;
import defpackage.im5;
import defpackage.lze;
import defpackage.rze;
import defpackage.zef;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzj implements zzg {
    public boolean b;
    public im5 d;
    public SharedPreferences f;
    public SharedPreferences.Editor g;
    public String i;
    public String j;
    public final Object a = new Object();
    public final List c = new ArrayList();
    public zzazg e = null;
    public boolean h = true;
    public boolean k = true;
    public String l = "-1";
    public int m = -1;
    public ief n = new ief("", 0);
    public long o = 0;
    public long p = 0;
    public int q = -1;
    public int r = 0;
    public Set s = Collections.emptySet();
    public JSONObject t = new JSONObject();
    public boolean u = true;
    public boolean v = true;
    public String w = null;
    public String x = "";
    public boolean y = false;
    public String z = "";
    public String A = NetResponse.EMPTY_RESPONSE;
    public int B = -1;
    public int C = -1;
    public long D = 0;

    public static void zzQ(zzj zzjVar, Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(ComConstants.PLATFORM_ADMOB, 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        try {
            synchronized (zzjVar.a) {
                try {
                    zzjVar.f = sharedPreferences;
                    zzjVar.g = editorEdit;
                    if (d28.e()) {
                        NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
                    }
                    zzjVar.h = zzjVar.f.getBoolean("use_https", zzjVar.h);
                    zzjVar.u = zzjVar.f.getBoolean("content_url_opted_out", zzjVar.u);
                    zzjVar.i = zzjVar.f.getString("content_url_hashes", zzjVar.i);
                    zzjVar.k = zzjVar.f.getBoolean("gad_idless", zzjVar.k);
                    zzjVar.v = zzjVar.f.getBoolean("content_vertical_opted_out", zzjVar.v);
                    zzjVar.j = zzjVar.f.getString("content_vertical_hashes", zzjVar.j);
                    zzjVar.r = zzjVar.f.getInt(hb0.KEY_NAME_VERSION_CODE, zzjVar.r);
                    if (((Boolean) rze.g.e()).booleanValue() && com.google.android.gms.ads.internal.client.zzbd.zzc().e()) {
                        zzjVar.n = new ief("", 0L);
                    } else {
                        zzjVar.n = new ief(zzjVar.f.getString("app_settings_json", zzjVar.n.c()), zzjVar.f.getLong("app_settings_last_update_ms", zzjVar.n.a()));
                    }
                    zzjVar.o = zzjVar.f.getLong("app_last_background_time_ms", zzjVar.o);
                    zzjVar.q = zzjVar.f.getInt("request_in_session_count", zzjVar.q);
                    zzjVar.p = zzjVar.f.getLong("first_ad_req_time_ms", zzjVar.p);
                    zzjVar.s = zzjVar.f.getStringSet("never_pool_slots", zzjVar.s);
                    zzjVar.w = zzjVar.f.getString("display_cutout", zzjVar.w);
                    zzjVar.B = zzjVar.f.getInt("app_measurement_npa", zzjVar.B);
                    zzjVar.C = zzjVar.f.getInt("sd_app_measure_npa", zzjVar.C);
                    zzjVar.D = zzjVar.f.getLong("sd_app_measure_npa_ts", zzjVar.D);
                    zzjVar.x = zzjVar.f.getString("inspector_info", zzjVar.x);
                    zzjVar.y = zzjVar.f.getBoolean("linked_device", zzjVar.y);
                    zzjVar.z = zzjVar.f.getString("linked_ad_unit", zzjVar.z);
                    zzjVar.A = zzjVar.f.getString("inspector_ui_storage", zzjVar.A);
                    zzjVar.l = zzjVar.f.getString("IABTCF_TCString", zzjVar.l);
                    zzjVar.m = zzjVar.f.getInt("gad_has_consent_for_cookies", zzjVar.m);
                    try {
                        zzjVar.t = new JSONObject(zzjVar.f.getString("native_advanced_settings", NetResponse.EMPTY_RESPONSE));
                    } catch (JSONException e) {
                        int i = zze.zza;
                        zzo.zzk("Could not convert native advanced settings to json object", e);
                    }
                    zzjVar.b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            com.google.android.gms.ads.internal.zzv.zzp().x(th2, "AdSharedPreferenceManagerImpl.initializeOnBackgroundThread");
            zze.zzb("AdSharedPreferenceManagerImpl.initializeOnBackgroundThread, errorMessage = ", th2);
        }
    }

    public final void a() {
        im5 im5Var = this.d;
        if (im5Var == null || im5Var.isDone()) {
            return;
        }
        try {
            this.d.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            int i = zze.zza;
            zzo.zzk("Interrupted while waiting for preferences loaded.", e);
        } catch (CancellationException | ExecutionException | TimeoutException e2) {
            int i2 = zze.zza;
            zzo.zzh("Fail to initialize AdSharedPreferenceManager.", e2);
        }
    }

    public final void b() {
        zef.a.execute(new Runnable() {
            @Override
            public final void run() {
                this.zza.zzP();
            }
        });
    }

    @Override
    public final void zzA(int i) {
        a();
        synchronized (this.a) {
            try {
                this.m = i;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    if (i == -1) {
                        editor.remove("gad_has_consent_for_cookies");
                    } else {
                        editor.putInt("gad_has_consent_for_cookies", i);
                    }
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzB(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Z8)).booleanValue()) {
            a();
            synchronized (this.a) {
                try {
                    if (this.x.equals(str)) {
                        return;
                    }
                    this.x = str;
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putString("inspector_info", str);
                        this.g.apply();
                    }
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override
    public final void zzC(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.B9)).booleanValue()) {
            a();
            synchronized (this.a) {
                try {
                    if (this.A.equals(str)) {
                        return;
                    }
                    this.A = str;
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putString("inspector_ui_storage", str);
                        this.g.apply();
                    }
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override
    public final void zzD(boolean z) {
        a();
        synchronized (this.a) {
            try {
                if (z == this.k) {
                    return;
                }
                this.k = z;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("gad_idless", z);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzE(boolean z) {
        a();
        synchronized (this.a) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis() + ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Ca)).longValue();
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("is_topics_ad_personalization_allowed", z);
                    this.g.putLong("topics_consent_expiry_time_ms", jCurrentTimeMillis);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzF(String str, String str2, boolean z) {
        a();
        synchronized (this.a) {
            try {
                JSONArray jSONArrayOptJSONArray = this.t.optJSONArray(str);
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                }
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject == null) {
                        return;
                    }
                    if (str2.equals(jSONObjectOptJSONObject.optString("template_id"))) {
                        if (!z || !jSONObjectOptJSONObject.optBoolean("uses_media_view", false)) {
                            length = i;
                            break;
                        }
                        return;
                    }
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("template_id", str2);
                    jSONObject.put("uses_media_view", z);
                    jSONObject.put("timestamp_ms", com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
                    jSONArrayOptJSONArray.put(length, jSONObject);
                    this.t.put(str, jSONArrayOptJSONArray);
                } catch (JSONException e) {
                    int i2 = zze.zza;
                    zzo.zzk("Could not update native advanced settings", e);
                }
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putString("native_advanced_settings", this.t.toString());
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzG(int i) {
        a();
        synchronized (this.a) {
            try {
                if (this.q == i) {
                    return;
                }
                this.q = i;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putInt("request_in_session_count", i);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzH(int i) {
        a();
        synchronized (this.a) {
            try {
                if (this.C == i) {
                    return;
                }
                this.C = i;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putInt("sd_app_measure_npa", i);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzI(long j) {
        a();
        synchronized (this.a) {
            try {
                if (this.D == j) {
                    return;
                }
                this.D = j;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putLong("sd_app_measure_npa_ts", j);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzJ(@NonNull String str) {
        a();
        synchronized (this.a) {
            try {
                this.l = str;
                if (this.g != null) {
                    if (str.equals("-1")) {
                        this.g.remove("IABTCF_TCString");
                    } else {
                        this.g.putString("IABTCF_TCString", str);
                    }
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final boolean zzK() {
        boolean z;
        a();
        synchronized (this.a) {
            z = this.u;
        }
        return z;
    }

    @Override
    public final boolean zzL() {
        boolean z;
        a();
        synchronized (this.a) {
            z = this.v;
        }
        return z;
    }

    @Override
    public final boolean zzM() {
        boolean z;
        a();
        synchronized (this.a) {
            z = this.y;
        }
        return z;
    }

    @Override
    public final boolean zzN() {
        boolean z;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.L0)).booleanValue()) {
            return false;
        }
        a();
        synchronized (this.a) {
            z = this.k;
        }
        return z;
    }

    @Override
    public final boolean zzO() {
        a();
        synchronized (this.a) {
            try {
                SharedPreferences sharedPreferences = this.f;
                boolean z = false;
                if (sharedPreferences == null) {
                    return false;
                }
                if (sharedPreferences.getLong("topics_consent_expiry_time_ms", 0L) < System.currentTimeMillis()) {
                    return false;
                }
                if (this.f.getBoolean("is_topics_ad_personalization_allowed", false) && !this.k) {
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public final zzazg zzP() {
        if (!this.b) {
            return null;
        }
        if ((zzK() && zzL()) || !((Boolean) lze.b.e()).booleanValue()) {
            return null;
        }
        synchronized (this.a) {
            try {
                if (Looper.getMainLooper() == null) {
                    return null;
                }
                if (this.e == null) {
                    this.e = new zzazg();
                }
                this.e.zzd();
                int i = zze.zza;
                zzo.zzi("start fetching content...");
                return this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final int zza() {
        int i;
        a();
        synchronized (this.a) {
            i = this.r;
        }
        return i;
    }

    @Override
    public final int zzb() {
        a();
        return this.m;
    }

    @Override
    public final int zzc() {
        int i;
        a();
        synchronized (this.a) {
            i = this.q;
        }
        return i;
    }

    @Override
    public final long zzd() {
        long j;
        a();
        synchronized (this.a) {
            j = this.o;
        }
        return j;
    }

    @Override
    public final long zze() {
        long j;
        a();
        synchronized (this.a) {
            j = this.p;
        }
        return j;
    }

    @Override
    public final long zzf() {
        long j;
        a();
        synchronized (this.a) {
            j = this.D;
        }
        return j;
    }

    @Override
    public final ief zzg() {
        ief iefVar;
        a();
        synchronized (this.a) {
            try {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.Mb)).booleanValue() && this.n.j()) {
                    Iterator it = this.c.iterator();
                    while (it.hasNext()) {
                        ((Runnable) it.next()).run();
                    }
                }
                iefVar = this.n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iefVar;
    }

    @Override
    public final ief zzh() {
        ief iefVar;
        synchronized (this.a) {
            iefVar = this.n;
        }
        return iefVar;
    }

    @Override
    public final String zzi() {
        String str;
        a();
        synchronized (this.a) {
            str = this.z;
        }
        return str;
    }

    @Override
    public final String zzj() {
        String str;
        a();
        synchronized (this.a) {
            str = this.w;
        }
        return str;
    }

    @Override
    public final String zzk() {
        String str;
        a();
        synchronized (this.a) {
            str = this.x;
        }
        return str;
    }

    @Override
    public final String zzl() {
        String str;
        a();
        synchronized (this.a) {
            str = this.A;
        }
        return str;
    }

    @Override
    @Nullable
    public final String zzm() {
        a();
        return this.l;
    }

    @Override
    public final JSONObject zzn() {
        JSONObject jSONObject;
        a();
        synchronized (this.a) {
            jSONObject = this.t;
        }
        return jSONObject;
    }

    @Override
    public final void zzo(Runnable runnable) {
        this.c.add(runnable);
    }

    @Override
    public final void zzp(final Context context) {
        synchronized (this.a) {
            try {
                if (this.f != null) {
                    return;
                }
                g8i g8iVar = zef.a;
                final String str = ComConstants.PLATFORM_ADMOB;
                this.d = g8iVar.i(new Runnable(context, str) {
                    public final Context zzb;
                    public final String zzc = ComConstants.PLATFORM_ADMOB;

                    @Override
                    public final void run() {
                        zzj.zzQ(this.zza, this.zzb, this.zzc);
                    }
                });
                this.b = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzq() {
        a();
        synchronized (this.a) {
            try {
                this.t = new JSONObject();
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.remove("native_advanced_settings");
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzr(long j) {
        a();
        synchronized (this.a) {
            try {
                if (this.o == j) {
                    return;
                }
                this.o = j;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putLong("app_last_background_time_ms", j);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzs(String str) {
        a();
        synchronized (this.a) {
            try {
                long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
                if (str != null && !str.equals(this.n.c())) {
                    this.n = new ief(str, jCurrentTimeMillis);
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putString("app_settings_json", str);
                        this.g.putLong("app_settings_last_update_ms", jCurrentTimeMillis);
                        this.g.apply();
                    }
                    b();
                    Iterator it = this.c.iterator();
                    while (it.hasNext()) {
                        ((Runnable) it.next()).run();
                    }
                    return;
                }
                this.n.g(jCurrentTimeMillis);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzt(int i) {
        a();
        synchronized (this.a) {
            try {
                if (this.r == i) {
                    return;
                }
                this.r = i;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putInt(hb0.KEY_NAME_VERSION_CODE, i);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzu(boolean z) {
        a();
        synchronized (this.a) {
            try {
                if (this.u == z) {
                    return;
                }
                this.u = z;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("content_url_opted_out", z);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzv(boolean z) {
        a();
        synchronized (this.a) {
            try {
                if (this.v == z) {
                    return;
                }
                this.v = z;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("content_vertical_opted_out", z);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzw(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.o9)).booleanValue()) {
            a();
            synchronized (this.a) {
                try {
                    if (this.z.equals(str)) {
                        return;
                    }
                    this.z = str;
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putString("linked_ad_unit", str);
                        this.g.apply();
                    }
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override
    public final void zzx(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.o9)).booleanValue()) {
            a();
            synchronized (this.a) {
                try {
                    if (this.y == z) {
                        return;
                    }
                    this.y = z;
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putBoolean("linked_device", z);
                        this.g.apply();
                    }
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override
    public final void zzy(String str) {
        a();
        synchronized (this.a) {
            try {
                if (TextUtils.equals(this.w, str)) {
                    return;
                }
                this.w = str;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putString("display_cutout", str);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void zzz(long j) {
        a();
        synchronized (this.a) {
            try {
                if (this.p == j) {
                    return;
                }
                this.p = j;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putLong("first_ad_req_time_ms", j);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
