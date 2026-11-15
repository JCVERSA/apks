package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import defpackage.s74;
import defpackage.y45;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;
import kotlin.jvm.internal.Lambda;

public final class q50 {
    private final ww1 a;
    private final kx1 b;
    private final j10 c;
    private final xs0 d;
    private final kc e;
    private final r50 f;
    private final jc g;
    private final o50 h;

    public static final class a extends Lambda implements s74 {
        final Uri.Builder c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Uri.Builder builder) {
            super(2);
            this.c = builder;
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            String str = (String) obj;
            String str2 = (String) obj2;
            y45.j(str, "key");
            q50 q50Var = q50.this;
            Uri.Builder builder = this.c;
            q50Var.getClass();
            if (str2 != null && str2.length() != 0) {
                builder.appendQueryParameter(str, str2);
            }
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements s74 {
        final in1 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(in1 in1Var) {
            super(2);
            this.b = in1Var;
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            String str = (String) obj;
            y45.j(str, "key");
            this.b.a(str, (String) obj2);
            return zfb.a;
        }
    }

    public q50(Context context, o3 o3Var) {
        ww1 ww1Var = new ww1();
        kx1 kx1Var = new kx1();
        j10 j10Var = new j10(0);
        int i = xs0.h;
        this(context, o3Var, ww1Var, kx1Var, j10Var, xs0.a.a(context), new kc(), new s50());
    }

    public final void a(Context context, Uri.Builder builder) {
        y45.j(context, "context");
        y45.j(builder, "builder");
        a(context, new a(builder));
    }

    public final void a(Context context, in1 in1Var) {
        y45.j(context, "context");
        y45.j(in1Var, "queryParams");
        a(context, new b(in1Var));
    }

    private final void a(Context context, s74 s74Var) {
        Location locationC;
        y45.j(context, "context");
        Object packageName = context.getPackageName();
        y45.i(packageName, "getPackageName(...)");
        s74Var.invoke("app_id", packageName);
        s74Var.invoke("app_version_code", te.a(context));
        s74Var.invoke(CommonUrlParts.APP_VERSION, te.b(context));
        s74Var.invoke("sdk_version", this.a.a());
        s74Var.invoke("sdk_version_name", this.a.b());
        s74Var.invoke("sdk_vendor", "yandex");
        s74Var.invoke(this.f.f(), this.c.b(context));
        s74Var.invoke(CommonUrlParts.LOCALE, this.c.c(context));
        s74Var.invoke("content_language", this.c.a(context));
        List<String> listD = this.c.d(context);
        s74Var.invoke("device_languages", listD != null ? defpackage.i81.y0(listD, StringUtils.COMMA, null, null, 0, null, null, 62, null) : null);
        Object objB = this.f.b();
        this.c.getClass();
        s74Var.invoke(objB, j10.a());
        Object objC = this.f.c();
        this.c.getClass();
        s74Var.invoke(objC, Build.MODEL);
        Object objA = this.f.a();
        this.c.getClass();
        s74Var.invoke(objA, ConstantDeviceInfo.APP_PLATFORM);
        Object objD = this.f.d();
        this.c.getClass();
        s74Var.invoke(objD, Build.VERSION.RELEASE);
        Boolean boolC = ih1.c(context);
        if (boolC != null) {
            s74Var.invoke("vpn_enabled", boolC.booleanValue() ? "1" : "0");
        }
        kx1 kx1Var = this.b;
        kx1Var.getClass();
        y45.j(context, "context");
        if (!kx1Var.b(context) && (locationC = this.d.c()) != null) {
            s74Var.invoke("location_timestamp", String.valueOf(locationC.getTime()));
            s74Var.invoke("lat", String.valueOf(locationC.getLatitude()));
            s74Var.invoke("lon", String.valueOf(locationC.getLongitude()));
            s74Var.invoke("precision", String.valueOf(Math.round(locationC.getAccuracy())));
        }
        kx1 kx1Var2 = this.b;
        kx1Var2.getClass();
        y45.j(context, "context");
        if (kx1Var2.b(context)) {
            return;
        }
        s74Var.invoke(this.f.e(), this.h.b());
        lc lcVarA = this.g.a();
        boolean z = false;
        if (lcVarA != null) {
            boolean zB = lcVarA.b();
            String strA = lcVarA.a();
            this.e.getClass();
            boolean z2 = (strA == null || strA.length() == 0 || y45.e("00000000-0000-0000-0000-000000000000", strA)) ? false : true;
            if (!zB && z2) {
                s74Var.invoke("google_aid", strA);
            }
        }
        lc lcVarC = this.g.c();
        if (lcVarC != null) {
            boolean zB2 = lcVarC.b();
            String strA2 = lcVarC.a();
            this.e.getClass();
            if (strA2 != null && strA2.length() != 0 && !y45.e("00000000-0000-0000-0000-000000000000", strA2)) {
                z = true;
            }
            if (zB2 || !z) {
                return;
            }
            s74Var.invoke("huawei_oaid", strA2);
        }
    }

    public q50(Context context, o3 o3Var, ww1 ww1Var, kx1 kx1Var, j10 j10Var, xs0 xs0Var, kc kcVar, r50 r50Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ww1Var, "sdkVersionFormatter");
        y45.j(kx1Var, "sensitiveModeChecker");
        y45.j(j10Var, "deviceInfoProvider");
        y45.j(xs0Var, "locationManager");
        y45.j(kcVar, "advertisingIdValidator");
        y45.j(r50Var, "environmentParametersProvider");
        this.a = ww1Var;
        this.b = kx1Var;
        this.c = j10Var;
        this.d = xs0Var;
        this.e = kcVar;
        this.f = r50Var;
        this.g = o3Var.e();
        this.h = o3Var.k();
    }
}
