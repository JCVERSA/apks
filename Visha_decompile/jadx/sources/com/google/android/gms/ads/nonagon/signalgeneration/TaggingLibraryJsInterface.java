package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzauz;
import defpackage.cye;
import defpackage.e0f;
import defpackage.fbf;
import defpackage.fre;
import defpackage.g8i;
import defpackage.inh;
import defpackage.wth;
import defpackage.xmg;
import defpackage.zef;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public final class TaggingLibraryJsInterface {
    public final Context a;
    public final WebView b;
    public final fre c;
    public final inh d;
    public final int e;
    public final xmg f;
    public final boolean g;
    public final g8i h = zef.f;
    public final wth i;
    public final zzo j;
    public final zzf k;
    public final zzj l;

    public TaggingLibraryJsInterface(WebView webView, fre freVar, xmg xmgVar, wth wthVar, inh inhVar, zzo zzoVar, zzf zzfVar, zzj zzjVar) {
        this.b = webView;
        Context context = webView.getContext();
        this.a = context;
        this.c = freVar;
        this.f = xmgVar;
        cye.a(context);
        this.e = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.I9)).intValue();
        this.g = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.J9)).booleanValue();
        this.i = wthVar;
        this.d = inhVar;
        this.j = zzoVar;
        this.k = zzfVar;
        this.l = zzjVar;
    }

    public static void zze(@NonNull TaggingLibraryJsInterface taggingLibraryJsInterface, @NonNull String str) {
        inh inhVar;
        Uri uriA = Uri.parse(str);
        try {
            uriA = (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.dc)).booleanValue() || (inhVar = taggingLibraryJsInterface.d) == null) ? taggingLibraryJsInterface.c.a(uriA, taggingLibraryJsInterface.a, taggingLibraryJsInterface.b, null) : inhVar.a(uriA, taggingLibraryJsInterface.a, taggingLibraryJsInterface.b, null);
        } catch (zzauz e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to append the click signal to URL: ", e);
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "TaggingLibraryJsInterface.recordClick");
        }
        taggingLibraryJsInterface.i.d(uriA.toString(), null, null, null);
    }

    public static void zzf(@NonNull TaggingLibraryJsInterface taggingLibraryJsInterface, @NonNull Bundle bundle, @NonNull QueryInfoGenerationCallback queryInfoGenerationCallback) {
        com.google.android.gms.ads.internal.util.zzaa zzaaVarZzr = com.google.android.gms.ads.internal.zzv.zzr();
        Context context = taggingLibraryJsInterface.a;
        CookieManager cookieManagerZza = zzaaVarZzr.zza(context);
        bundle.putBoolean("accept_3p_cookie", cookieManagerZza != null ? cookieManagerZza.acceptThirdPartyCookies(taggingLibraryJsInterface.b) : false);
        QueryInfo.generate(context, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), queryInfoGenerationCallback);
    }

    @NonNull
    @JavascriptInterface
    @TargetApi(21)
    public String getClickSignals(@NonNull String str) {
        try {
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
            String strZzd = this.c.c().zzd(this.a, str, this.b);
            if (this.g) {
                zzaa.zzd(this.f, null, "csg", new Pair("clat", String.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - jCurrentTimeMillis)));
            }
            return strZzd;
        } catch (RuntimeException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting click signals. ", e);
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "TaggingLibraryJsInterface.getClickSignals");
            return "";
        }
    }

    @NonNull
    @JavascriptInterface
    @TargetApi(21)
    public String getClickSignalsWithTimeout(@NonNull final String str, int i) {
        if (i <= 0) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Invalid timeout for getting click signals. Timeout=" + i);
            return "";
        }
        try {
            return (String) zef.a.m(new Callable() {
                @Override
                public final Object call() {
                    return this.zza.getClickSignals(str);
                }
            }).get(Math.min(i, this.e), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting click signals with timeout. ", e);
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "TaggingLibraryJsInterface.getClickSignalsWithTimeout");
            return e instanceof TimeoutException ? "17" : "";
        }
    }

    @NonNull
    @JavascriptInterface
    @TargetApi(21)
    public String getQueryInfo() {
        com.google.android.gms.ads.internal.zzv.zzq();
        String string = UUID.randomUUID().toString();
        final Bundle bundle = new Bundle();
        bundle.putString("query_info_type", "requester_type_6");
        final fbf fbfVar = new fbf(this, string);
        if (((Boolean) e0f.e.e()).booleanValue()) {
            this.j.zzg(this.b, fbfVar);
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.L9)).booleanValue()) {
                this.h.execute(new Runnable() {
                    @Override
                    public final void run() {
                        TaggingLibraryJsInterface.zzf(this.zza, bundle, fbfVar);
                    }
                });
            } else {
                QueryInfo.generate(this.a, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), fbfVar);
            }
        }
        return string;
    }

    @NonNull
    @JavascriptInterface
    @TargetApi(21)
    public String getViewSignals() {
        try {
            long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
            String strZzh = this.c.c().zzh(this.a, this.b, null);
            if (this.g) {
                zzaa.zzd(this.f, null, "vsg", new Pair("vlat", String.valueOf(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis() - jCurrentTimeMillis)));
            }
            return strZzh;
        } catch (RuntimeException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting view signals. ", e);
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "TaggingLibraryJsInterface.getViewSignals");
            return "";
        }
    }

    @NonNull
    @JavascriptInterface
    @TargetApi(21)
    public String getViewSignalsWithTimeout(int i) {
        if (i <= 0) {
            String str = "Invalid timeout for getting view signals. Timeout=" + i;
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(str);
            return "";
        }
        try {
            return (String) zef.a.m(new Callable() {
                @Override
                public final Object call() {
                    return this.zza.getViewSignals();
                }
            }).get(Math.min(i, this.e), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Exception getting view signals with timeout. ", e);
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "TaggingLibraryJsInterface.getViewSignalsWithTimeout");
            return e instanceof TimeoutException ? "17" : "";
        }
    }

    @JavascriptInterface
    @TargetApi(21)
    public void recordClick(@NonNull final String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.N9)).booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        zef.a.execute(new Runnable() {
            @Override
            public final void run() {
                TaggingLibraryJsInterface.zze(this.zza, str);
            }
        });
    }

    @JavascriptInterface
    @TargetApi(21)
    public void reportTouchEvent(@NonNull String str) {
        int i;
        int i2;
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i3 = jSONObject.getInt("x");
            int i4 = jSONObject.getInt("y");
            int i5 = jSONObject.getInt("duration_ms");
            float f = (float) jSONObject.getDouble("force");
            int i6 = jSONObject.getInt("type");
            if (i6 != 0) {
                int i7 = 1;
                if (i6 != 1) {
                    i7 = 2;
                    if (i6 != 2) {
                        i7 = 3;
                        i2 = i6 != 3 ? -1 : 0;
                        this.c.d(MotionEvent.obtain(0L, i5, i, i3, i4, f, 1.0f, 0, 1.0f, 1.0f, 0, 0));
                    }
                }
                i = i7;
                this.c.d(MotionEvent.obtain(0L, i5, i, i3, i4, f, 1.0f, 0, 1.0f, 1.0f, 0, 0));
            }
            i = i2;
            this.c.d(MotionEvent.obtain(0L, i5, i, i3, i4, f, 1.0f, 0, 1.0f, 1.0f, 0, 0));
        } catch (RuntimeException | JSONException e) {
            int i8 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to parse the touch string. ", e);
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "TaggingLibraryJsInterface.reportTouchEvent");
        }
    }
}
