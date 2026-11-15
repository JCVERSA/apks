package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Base64;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzfxb;
import defpackage.cye;
import defpackage.e0f;
import defpackage.ixe;
import defpackage.mpc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzf {
    public final Context a;
    public final ApplicationInfo b;
    public final List c;
    public final VersionInfoParcel d;
    public final JSONObject e = new JSONObject();
    public final AtomicBoolean f = new AtomicBoolean(false);

    public zzf(Context context, ixe ixeVar, List list, VersionInfoParcel versionInfoParcel) {
        this.a = context;
        this.b = context.getApplicationInfo();
        this.c = list;
        this.d = versionInfoParcel;
    }

    public final JSONObject zza() {
        if (!this.f.get()) {
            zzb(null);
        }
        return this.e;
    }

    public final void zzb(@Nullable WebView webView) {
        if (this.f.getAndSet(true)) {
            return;
        }
        PackageInfo packageInfoF = null;
        try {
            ApplicationInfo applicationInfo = this.b;
            if (applicationInfo != null) {
                packageInfoF = mpc.a(this.a).f(applicationInfo.packageName, 0);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (packageInfoF != null) {
            try {
                JSONObject jSONObject = this.e;
                jSONObject.put("vc", packageInfoF.versionCode);
                jSONObject.put("vnm", packageInfoF.versionName);
            } catch (JSONException e) {
                com.google.android.gms.ads.internal.zzv.zzp().x(e, "PawAppSignalGenerator.initialize");
            }
        }
        ApplicationInfo applicationInfo2 = this.b;
        if (applicationInfo2 != null) {
            this.e.put("pn", applicationInfo2.packageName);
        }
        JSONObject jSONObject2 = this.e;
        List list = this.c;
        ArrayList arrayList = new ArrayList();
        for (String str : ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.T9)).split(StringUtils.COMMA, -1)) {
            if (list.contains(str)) {
                arrayList.add(str);
            }
        }
        jSONObject2.put("eid", arrayList);
        jSONObject2.put("js", this.d.afmaVersion);
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject2.get(next);
            if (obj != null) {
                jSONObject2.put(next, Base64.encodeToString(obj.toString().getBytes(), 2));
            }
        }
        if (((Boolean) e0f.b.e()).booleanValue() && WebViewFeature.isFeatureSupported(WebViewFeature.DOCUMENT_START_SCRIPT) && webView != null) {
            WebViewCompat.addDocumentStartJavaScript(webView, String.format(Locale.getDefault(), (String) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.S9), zza()), zzfxb.zzo("*"));
        }
    }
}
