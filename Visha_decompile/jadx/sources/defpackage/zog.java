package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import cn.com.custommma.mobile.tracking.util.AntiConstantStats;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzdk;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.u4;
import com.google.android.gms.internal.ads.v4;
import com.google.android.gms.internal.ads.w4;
import com.google.android.gms.internal.ads.zzdtz;
import com.google.android.gms.internal.ads.zzduc;
import com.google.android.gms.internal.ads.zzdva;
import com.hisavana.common.constant.ComConstants;
import com.transsion.gslb.NetResponse;
import com.transsion.push.PushConstants;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zog implements cqg, pog {
    public final jpg a;
    public final w4 b;
    public final u4 c;
    public final v4 d;
    public final oog e;
    public final zzdva f;
    public final gpg g;
    public final gpg h;
    public final String i;
    public final Context j;
    public final String k;
    public JSONObject p;
    public boolean s;
    public int t;
    public boolean u;
    public final Map l = new HashMap();
    public final Map m = new HashMap();
    public final Map n = new HashMap();
    public String o = NetResponse.EMPTY_RESPONSE;
    public long q = Long.MAX_VALUE;
    public zzdtz r = zzdtz.NONE;
    public zzduc v = zzduc.UNKNOWN;
    public long w = 0;
    public String x = "";

    public zog(jpg jpgVar, w4 w4Var, u4 u4Var, Context context, VersionInfoParcel versionInfoParcel, v4 v4Var, zzdva zzdvaVar, gpg gpgVar, gpg gpgVar2, String str) {
        this.a = jpgVar;
        this.b = w4Var;
        this.c = u4Var;
        this.e = new oog(context);
        this.i = versionInfoParcel.afmaVersion;
        this.k = str;
        this.d = v4Var;
        this.f = zzdvaVar;
        this.g = gpgVar;
        this.h = gpgVar2;
        this.j = context;
        zzv.zzt().zzg(this);
    }

    public final synchronized void A() {
        int iOrdinal = this.r.ordinal();
        if (iOrdinal == 1) {
            this.b.c();
        } else {
            if (iOrdinal != 2) {
                return;
            }
            this.c.c();
        }
    }

    public final synchronized void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            y(jSONObject.optBoolean("isTestMode", false), false);
            x((zzdtz) Enum.valueOf(zzdtz.class, jSONObject.optString("gesture", "NONE")), false);
            this.o = jSONObject.optString("networkExtras", NetResponse.EMPTY_RESPONSE);
            this.q = jSONObject.optLong("networkExtrasExpirationSecs", Long.MAX_VALUE);
        } catch (JSONException unused) {
        }
    }

    public final zzdtz b() {
        return this.r;
    }

    public final synchronized im5 c(String str) {
        eff effVar;
        try {
            effVar = new eff();
            Map map = this.m;
            if (map.containsKey(str)) {
                effVar.c((qog) map.get(str));
            } else {
                Map map2 = this.n;
                if (!map2.containsKey(str)) {
                    map2.put(str, new ArrayList());
                }
                ((List) map2.get(str)).add(effVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return effVar;
    }

    public final synchronized String d() {
        if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue() && r()) {
            if (this.q < zzv.zzC().currentTimeMillis() / 1000) {
                this.o = NetResponse.EMPTY_RESPONSE;
                this.q = Long.MAX_VALUE;
                return "";
            }
            if (!this.o.equals(NetResponse.EMPTY_RESPONSE)) {
                return this.o;
            }
        }
        return "";
    }

    public final synchronized String e() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put("isTestMode", this.s);
            jSONObject.put("gesture", this.r);
            if (this.q > zzv.zzC().currentTimeMillis() / 1000) {
                jSONObject.put("networkExtras", this.o);
                jSONObject.put("networkExtrasExpirationSecs", this.q);
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public final synchronized JSONObject f() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("platform", "ANDROID");
                String str = this.k;
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put(PushConstants.PROVIDER_FIELD_SDK_VERSION, "afma-sdk-a-v" + str);
                }
                jSONObject.put("internalSdkVersion", this.i);
                jSONObject.put("osVersion", Build.VERSION.RELEASE);
                jSONObject.put("adapters", this.d.a());
                if (((Boolean) zzbd.zzc().b(cye.z9)).booleanValue()) {
                    String strO = zzv.zzp().o();
                    if (!TextUtils.isEmpty(strO)) {
                        jSONObject.put("plugin", strO);
                    }
                }
                if (this.q < zzv.zzC().currentTimeMillis() / 1000) {
                    this.o = NetResponse.EMPTY_RESPONSE;
                }
                jSONObject.put("networkExtras", this.o);
                jSONObject.put("adSlots", u());
                jSONObject.put("appInfo", this.e.a());
                String strC = zzv.zzp().j().zzg().c();
                if (!TextUtils.isEmpty(strC)) {
                    jSONObject.put("cld", new JSONObject(strC));
                }
                if (((Boolean) zzbd.zzc().b(cye.p9)).booleanValue() && (jSONObject2 = this.p) != null) {
                    String str2 = "Server data: " + jSONObject2.toString();
                    int i = zze.zza;
                    zzo.zze(str2);
                    jSONObject.put("serverData", this.p);
                }
                if (((Boolean) zzbd.zzc().b(cye.o9)).booleanValue()) {
                    jSONObject.put("openAction", this.v);
                    jSONObject.put("gesture", this.r);
                }
                jSONObject.put("isGamRegisteredTestDevice", zzv.zzt().zzl());
                zzv.zzq();
                zzbb.zzb();
                jSONObject.put(AntiConstantStats.isSimulator, zzf.zzs());
                if (((Boolean) zzbd.zzc().b(cye.B9)).booleanValue()) {
                    jSONObject.put("uiStorage", new JSONObject(this.x));
                }
                if (!TextUtils.isEmpty((CharSequence) zzbd.zzc().b(cye.D9))) {
                    jSONObject.put("gmaDisk", this.h.a());
                }
                if (!TextUtils.isEmpty((CharSequence) zzbd.zzc().b(cye.C9))) {
                    jSONObject.put("userDisk", this.g.a());
                }
            } catch (JSONException e) {
                zzv.zzp().w(e, "Inspector.toJson");
                int i2 = zze.zza;
                zzo.zzk("Ad inspector encountered an error", e);
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    public final synchronized void g(String str, qog qogVar) {
        if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue() && r()) {
            if (this.t >= ((Integer) zzbd.zzc().b(cye.b9)).intValue()) {
                int i = zze.zza;
                zzo.zzj("Maximum number of ad requests stored reached. Dropping the current request.");
                return;
            }
            Map map = this.l;
            if (!map.containsKey(str)) {
                map.put(str, new ArrayList());
            }
            this.t++;
            ((List) map.get(str)).add(qogVar);
            if (((Boolean) zzbd.zzc().b(cye.x9)).booleanValue()) {
                String strA = qogVar.a();
                this.m.put(strA, qogVar);
                Map map2 = this.n;
                if (map2.containsKey(strA)) {
                    List list = (List) map2.get(strA);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((eff) it.next()).c(qogVar);
                    }
                    list.clear();
                }
            }
        }
    }

    public final void h() {
        if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.o9)).booleanValue() && zzv.zzp().j().zzM()) {
                v();
                return;
            }
            String strZzk = zzv.zzp().j().zzk();
            if (TextUtils.isEmpty(strZzk)) {
                return;
            }
            try {
                if (new JSONObject(strZzk).optBoolean("isTestMode", false)) {
                    v();
                }
            } catch (JSONException unused) {
            }
        }
    }

    public final synchronized void i(zzdk zzdkVar, zzduc zzducVar) {
        if (!r()) {
            try {
                zzdkVar.zze(goh.d(18, null, null));
                return;
            } catch (RemoteException unused) {
                int i = zze.zza;
                zzo.zzj("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
                return;
            }
        }
        if (((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue()) {
            this.v = zzducVar;
            this.a.d(zzdkVar, new o4f(this), new a4f(this.f), new o3f(this));
            return;
        } else {
            try {
                zzdkVar.zze(goh.d(1, null, null));
                return;
            } catch (RemoteException unused2) {
                int i2 = zze.zza;
                zzo.zzj("Ad inspector had an internal error.");
                return;
            }
        }
        throw th;
    }

    public final synchronized void j(String str, long j) {
        this.o = str;
        this.q = j;
        w();
    }

    public final synchronized void k(String str) {
        this.x = str;
        zzv.zzp().j().zzC(this.x);
    }

    public final synchronized void l(long j) {
        this.w += j;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0011  */
    public final void m(boolean z) {
        if (this.u) {
            if (z) {
                if (!this.s) {
                    A();
                    return;
                }
            }
        } else if (z) {
            v();
            if (!this.s) {
                A();
                return;
            }
        }
        if (r()) {
            return;
        }
        z();
    }

    public final void n(zzdtz zzdtzVar) {
        x(zzdtzVar, true);
    }

    public final synchronized void o(JSONObject jSONObject) {
        this.p = jSONObject;
    }

    public final void p(boolean z) {
        if (!this.u && z) {
            v();
        }
        y(z, true);
    }

    public final boolean q() {
        return this.p != null;
    }

    public final synchronized boolean r() {
        if (((Boolean) zzbd.zzc().b(cye.o9)).booleanValue()) {
            return this.s || zzv.zzt().zzl();
        }
        return this.s;
    }

    public final synchronized boolean s() {
        return this.s;
    }

    public final boolean t() {
        return this.w < ((Long) zzbd.zzc().b(cye.u9)).longValue();
    }

    public final synchronized JSONObject u() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            for (Map.Entry entry : this.l.entrySet()) {
                JSONArray jSONArray = new JSONArray();
                for (qog qogVar : (List) entry.getValue()) {
                    if (qogVar.e()) {
                        jSONArray.put(qogVar.b());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put((String) entry.getKey(), jSONArray);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    public final void v() {
        this.u = true;
        this.d.c();
        this.a.c(this);
        this.b.d(this);
        this.c.d(this);
        this.f.zzf(this);
        qxe qxeVar = cye.C9;
        if (!TextUtils.isEmpty((CharSequence) zzbd.zzc().b(qxeVar))) {
            this.g.b(PreferenceManager.getDefaultSharedPreferences(this.j), Arrays.asList(((String) zzbd.zzc().b(qxeVar)).split(StringUtils.COMMA)));
        }
        qxe qxeVar2 = cye.D9;
        if (!TextUtils.isEmpty((CharSequence) zzbd.zzc().b(qxeVar2))) {
            this.h.b(this.j.getSharedPreferences(ComConstants.PLATFORM_ADMOB, 0), Arrays.asList(((String) zzbd.zzc().b(qxeVar2)).split(StringUtils.COMMA)));
        }
        a(zzv.zzp().j().zzk());
        this.x = zzv.zzp().j().zzl();
    }

    public final void w() {
        zzv.zzp().j().zzB(e());
    }

    public final synchronized void x(zzdtz zzdtzVar, boolean z) {
        try {
            if (this.r != zzdtzVar) {
                if (r()) {
                    z();
                }
                this.r = zzdtzVar;
                if (r()) {
                    A();
                }
                if (z) {
                    w();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002d A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:3:0x0001, B:6:0x0006, B:8:0x000a, B:10:0x001c, B:15:0x0029, B:20:0x0038, B:16:0x002d, B:18:0x0033), top: B:27:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0033 A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:3:0x0001, B:6:0x0006, B:8:0x000a, B:10:0x001c, B:15:0x0029, B:20:0x0038, B:16:0x002d, B:18:0x0033), top: B:27:0x0001 }] */
    public final synchronized void y(boolean z, boolean z2) {
        try {
            if (this.s != z) {
                this.s = z;
                if (z) {
                    if (!((Boolean) zzbd.zzc().b(cye.o9)).booleanValue() || !zzv.zzt().zzl()) {
                        A();
                    } else if (!r()) {
                        z();
                    }
                } else if (!r()) {
                    z();
                }
                if (z2) {
                    w();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void z() {
        int iOrdinal = this.r.ordinal();
        if (iOrdinal == 1) {
            this.b.b();
        } else {
            if (iOrdinal != 2) {
                return;
            }
            this.c.b();
        }
    }
}
