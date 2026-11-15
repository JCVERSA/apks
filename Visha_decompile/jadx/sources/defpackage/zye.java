package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import com.google.android.gms.ads.nonagon.signalgeneration.zzf;
import com.google.android.gms.ads.nonagon.signalgeneration.zzo;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.internal.ads.zzbdk;
import java.util.Date;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zye {
    public final ScheduledExecutorService a;
    public final zzo b;
    public final zzf c;
    public final xmg d;
    public Runnable e;
    public zzbdk f;
    public CustomTabsSession g;
    public String h;
    public long i = 0;
    public long j;
    public JSONArray k;
    public Context l;

    public zye(ScheduledExecutorService scheduledExecutorService, zzo zzoVar, zzf zzfVar, xmg xmgVar) {
        this.a = scheduledExecutorService;
        this.b = zzoVar;
        this.c = zzfVar;
        this.d = xmgVar;
    }

    public final CustomTabsSession b() {
        return this.g;
    }

    public final JSONObject c(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("paw_id", str);
        jSONObject.put("error", str2);
        jSONObject.put("sdk_ttl_ms", ((Boolean) e0f.e.e()).booleanValue() ? ((Long) e0f.h.e()).longValue() : 0L);
        k(jSONObject);
        if (((Boolean) e0f.c.e()).booleanValue()) {
            jSONObject.put("as", this.c.zza());
        }
        return jSONObject;
    }

    public final JSONObject d(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("paw_id", str);
        jSONObject.put("signal", str2);
        jSONObject.put("sdk_ttl_ms", ((Boolean) e0f.e.e()).booleanValue() ? ((Long) e0f.h.e()).longValue() : 0L);
        k(jSONObject);
        if (((Boolean) e0f.c.e()).booleanValue()) {
            jSONObject.put("as", this.c.zza());
        }
        return jSONObject;
    }

    public final void f() {
        this.i = zzv.zzC().elapsedRealtime() + ((long) ((Integer) zzbd.zzc().b(cye.V9)).intValue());
        if (this.e == null) {
            this.e = new Runnable() {
                @Override
                public final void run() {
                    this.zza.j();
                }
            };
        }
        j();
    }

    public final void g(Context context, CustomTabsClient customTabsClient, String str, CustomTabsCallback customTabsCallback) {
        if (context == null) {
            throw new IllegalArgumentException("App Context parameter is null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Origin parameter is empty or null");
        }
        if (customTabsClient == null) {
            throw new IllegalArgumentException("CustomTabsClient parameter is null");
        }
        this.l = context;
        this.h = str;
        xmg xmgVar = this.d;
        zzbdk zzbdkVar = new zzbdk(this, customTabsCallback, xmgVar);
        this.f = zzbdkVar;
        CustomTabsSession customTabsSessionNewSession = customTabsClient.newSession(zzbdkVar);
        this.g = customTabsSessionNewSession;
        if (customTabsSessionNewSession == null) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("CustomTabsClient failed to create new session.");
        }
        zzaa.zzd(xmgVar, null, "pact_action", new Pair("pe", "pact_init"));
    }

    public final void h(String str) {
        try {
            CustomTabsSession customTabsSession = this.g;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("gsppack", true);
            jSONObject.put("fpt", new Date(this.j).toString());
            k(jSONObject);
            if (((Boolean) e0f.c.e()).booleanValue()) {
                jSONObject.put("as", this.c.zza());
            }
            customTabsSession.postMessage(jSONObject.toString(), null);
            yye yyeVar = new yye(this, str);
            if (((Boolean) e0f.e.e()).booleanValue()) {
                this.b.zzg(this.g, yyeVar);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("query_info_type", "requester_type_6");
            QueryInfo.generate(this.l, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), yyeVar);
        } catch (JSONException e) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error creating JSON: ", e);
        }
    }

    public final void i(long j) {
        this.j = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(defpackage.cye.W9)).booleanValue() != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j() {
        ScheduledExecutorService scheduledExecutorService;
        zzbdk zzbdkVar = this.f;
        if (zzbdkVar == null) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("PACT callback is not present, please initialize the PawCustomTabsImpl.");
            return;
        }
        if (zzbdkVar.a().booleanValue()) {
            return;
        }
        if (this.h != null && this.g != null && (scheduledExecutorService = this.a) != null) {
            if (this.i == 0 || zzv.zzC().elapsedRealtime() > this.i) {
            }
            this.g.requestPostMessageChannel(Uri.parse(this.h));
            scheduledExecutorService.schedule(this.e, ((Long) zzbd.zzc().b(cye.X9)).longValue(), TimeUnit.MILLISECONDS);
            return;
        }
        zze.zza("PACT max retry connection duration timed out");
    }

    public final void k(JSONObject jSONObject) {
        try {
            if (this.k == null) {
                this.k = new JSONArray((String) zzbd.zzc().b(cye.Z9));
            }
            jSONObject.put("eids", this.k);
        } catch (JSONException e) {
            int i = zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error fetching the PACT active eids JSON: ", e);
        }
    }
}
