package io.appmetrica.analytics.impl;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.networktasks.internal.AdvIdWithLimitedAppender;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.appmetrica.analytics.networktasks.internal.IParamsAppender;
import io.appmetrica.analytics.networktasks.internal.NetworkTaskForSendingDataParamsAppender;
import io.appmetrica.analytics.networktasks.internal.RequestBodyEncrypter;

public final class Rg implements IParamsAppender {
    public final AdvIdWithLimitedAppender a;
    public final NetworkTaskForSendingDataParamsAppender b;
    public C2882t7 c;
    public final Mb d;
    public long e;

    public Rg(@NonNull RequestBodyEncrypter requestBodyEncrypter) {
        this(new AdvIdWithLimitedAppender(), new NetworkTaskForSendingDataParamsAppender(requestBodyEncrypter), new Mb());
    }

    public final void a(@NonNull C2882t7 c2882t7) {
        this.c = c2882t7;
    }

    public Rg(AdvIdWithLimitedAppender advIdWithLimitedAppender, NetworkTaskForSendingDataParamsAppender networkTaskForSendingDataParamsAppender, Mb mb) {
        this.a = advIdWithLimitedAppender;
        this.b = networkTaskForSendingDataParamsAppender;
        this.d = mb;
    }

    public final void a(long j) {
        this.e = j;
    }

    @Override
    public final void appendParams(@NonNull Uri.Builder builder, @NonNull C2469ch c2469ch) {
        builder.path("report");
        this.b.appendEncryptedData(builder);
        C2882t7 c2882t7 = this.c;
        if (c2882t7 != null) {
            builder.appendQueryParameter(CommonUrlParts.DEVICE_ID, StringUtils.ifIsEmptyToDef(c2882t7.a, c2469ch.getDeviceId()));
            builder.appendQueryParameter("uuid", StringUtils.ifIsEmptyToDef(this.c.b, c2469ch.getUuid()));
            a(builder, CommonUrlParts.ANALYTICS_SDK_VERSION_NAME, this.c.c);
            builder.appendQueryParameter(CommonUrlParts.APP_VERSION, StringUtils.ifIsEmptyToDef(this.c.f, c2469ch.getAppVersion()));
            builder.appendQueryParameter(CommonUrlParts.APP_VERSION_CODE, StringUtils.ifIsEmptyToDef(this.c.h, c2469ch.getAppBuildNumber()));
            builder.appendQueryParameter(CommonUrlParts.OS_VERSION, StringUtils.ifIsEmptyToDef(this.c.i, c2469ch.getOsVersion()));
            a(builder, CommonUrlParts.OS_API_LEVEL, this.c.j);
            a(builder, CommonUrlParts.ANALYTICS_SDK_BUILD_NUMBER, this.c.d);
            a(builder, CommonUrlParts.ANALYTICS_SDK_BUILD_TYPE, this.c.e);
            a(builder, "app_debuggable", this.c.g);
            builder.appendQueryParameter(CommonUrlParts.LOCALE, StringUtils.ifIsEmptyToDef(this.c.k, c2469ch.getLocale()));
            builder.appendQueryParameter(CommonUrlParts.ROOT_STATUS, StringUtils.ifIsEmptyToDef(this.c.l, c2469ch.getDeviceRootStatus()));
            builder.appendQueryParameter(CommonUrlParts.APP_FRAMEWORK, StringUtils.ifIsEmptyToDef(this.c.m, c2469ch.getAppFramework()));
            a(builder, "attribution_id", this.c.n);
        }
        builder.appendQueryParameter("api_key_128", c2469ch.m);
        builder.appendQueryParameter("app_id", c2469ch.getPackageName());
        builder.appendQueryParameter(CommonUrlParts.APP_PLATFORM, c2469ch.getAppPlatform());
        builder.appendQueryParameter(CommonUrlParts.MODEL, c2469ch.getModel());
        builder.appendQueryParameter(CommonUrlParts.MANUFACTURER, c2469ch.getManufacturer());
        builder.appendQueryParameter(CommonUrlParts.SCREEN_WIDTH, String.valueOf(c2469ch.getScreenWidth()));
        builder.appendQueryParameter(CommonUrlParts.SCREEN_HEIGHT, String.valueOf(c2469ch.getScreenHeight()));
        builder.appendQueryParameter(CommonUrlParts.SCREEN_DPI, String.valueOf(c2469ch.getScreenDpi()));
        builder.appendQueryParameter(CommonUrlParts.SCALE_FACTOR, String.valueOf(c2469ch.getScaleFactor()));
        builder.appendQueryParameter(CommonUrlParts.DEVICE_TYPE, c2469ch.getDeviceType());
        a(builder, "clids_set", (String) WrapUtils.getOrDefault(c2469ch.p, ""));
        builder.appendQueryParameter(CommonUrlParts.APP_SET_ID, c2469ch.getAppSetId());
        builder.appendQueryParameter(CommonUrlParts.APP_SET_ID_SCOPE, c2469ch.getAppSetIdScope());
        AdvIdWithLimitedAppender advIdWithLimitedAppender = this.a;
        this.d.getClass();
        advIdWithLimitedAppender.appendParams(builder, C2910ua.E.b().getIdentifiers());
        builder.appendQueryParameter("request_id", String.valueOf(this.e));
    }

    public static void a(Uri.Builder builder, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }
}
