package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import androidx.browser.customtabs.CustomTabsCallback;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cye;
import defpackage.xmg;
import defpackage.zye;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbdk extends CustomTabsCallback {
    public final AtomicBoolean a = new AtomicBoolean(false);
    public final List b = Arrays.asList(((String) zzbd.zzc().b(cye.Y9)).split(StringUtils.COMMA));
    public final zye c;
    public final CustomTabsCallback d;
    public final xmg e;

    public zzbdk(zye zyeVar, CustomTabsCallback customTabsCallback, xmg xmgVar) {
        this.d = customTabsCallback;
        this.c = zyeVar;
        this.e = xmgVar;
    }

    public final Boolean a() {
        return Boolean.valueOf(this.a.get());
    }

    public final void b(String str) {
        com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzd(this.e, null, "pact_action", new Pair("pe", str));
    }

    @Override
    public final void extraCallback(String str, Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.extraCallback(str, bundle);
        }
    }

    @Override
    public final Bundle extraCallbackWithResult(String str, Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            return customTabsCallback.extraCallbackWithResult(str, bundle);
        }
        return null;
    }

    @Override
    public final void onActivityResized(int i, int i2, Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.onActivityResized(i, i2, bundle);
        }
    }

    @Override
    public final void onMessageChannelReady(Bundle bundle) {
        this.a.set(false);
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.onMessageChannelReady(bundle);
        }
    }

    @Override
    public final void onNavigationEvent(int i, Bundle bundle) {
        this.a.set(false);
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.onNavigationEvent(i, bundle);
        }
        zye zyeVar = this.c;
        zyeVar.i(zzv.zzC().currentTimeMillis());
        List list = this.b;
        if (list == null || !list.contains(String.valueOf(i))) {
            return;
        }
        zyeVar.f();
        b("pact_reqpmc");
    }

    @Override
    public final void onPostMessage(String str, Bundle bundle) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("gpa", -1) == 0) {
                this.a.set(true);
                b("pact_con");
                this.c.h(jSONObject.getString("paw_id"));
            }
        } catch (JSONException e) {
            zze.zzb("Message is not in JSON format: ", e);
        }
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.onPostMessage(str, bundle);
        }
    }

    @Override
    public final void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.d;
        if (customTabsCallback != null) {
            customTabsCallback.onRelationshipValidationResult(i, uri, z, bundle);
        }
    }
}
