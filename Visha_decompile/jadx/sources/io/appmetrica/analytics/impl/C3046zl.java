package io.appmetrica.analytics.impl;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.appmetrica.analytics.networktasks.internal.IParamsAppender;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public final class C3046zl implements IParamsAppender {
    public final Yd a;
    public final InterfaceC2764od b;
    public final Mb c = new Mb();

    public C3046zl(@NonNull Yd yd, @NonNull InterfaceC2764od interfaceC2764od) {
        this.a = yd;
        this.b = interfaceC2764od;
    }

    @Override
    public final void appendParams(@NonNull Uri.Builder builder, @NonNull Dl dl) {
        String str;
        C2468cg c2468cg;
        builder.path("analytics/startup");
        builder.appendQueryParameter(this.a.a(CommonUrlParts.DEVICE_ID), dl.getDeviceId());
        a(builder, C2910ua.E.g(), this.c);
        builder.appendQueryParameter(this.a.a(CommonUrlParts.APP_SET_ID), dl.getAppSetId());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.APP_SET_ID_SCOPE), dl.getAppSetIdScope());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.APP_PLATFORM), dl.getAppPlatform());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.PROTOCOL_VERSION), dl.getProtocolVersion());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.ANALYTICS_SDK_VERSION_NAME), dl.getAnalyticsSdkVersionName());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.MODEL), dl.getModel());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.MANUFACTURER), dl.getManufacturer());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.OS_VERSION), dl.getOsVersion());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.SCREEN_WIDTH), String.valueOf(dl.getScreenWidth()));
        builder.appendQueryParameter(this.a.a(CommonUrlParts.SCREEN_HEIGHT), String.valueOf(dl.getScreenHeight()));
        builder.appendQueryParameter(this.a.a(CommonUrlParts.SCREEN_DPI), String.valueOf(dl.getScreenDpi()));
        builder.appendQueryParameter(this.a.a(CommonUrlParts.SCALE_FACTOR), String.valueOf(dl.getScaleFactor()));
        builder.appendQueryParameter(this.a.a(CommonUrlParts.LOCALE), dl.getLocale());
        builder.appendQueryParameter(this.a.a(CommonUrlParts.DEVICE_TYPE), dl.getDeviceType());
        builder.appendQueryParameter(this.a.a("queries"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("query_hosts"), String.valueOf(2));
        String strA = this.a.a("features");
        List<String> listH = ((C2447bk) this.b).h();
        String[] strArr = {this.a.a("permissions_collecting"), this.a.a("features_collecting"), this.a.a("google_aid"), this.a.a("huawei_oaid"), this.a.a("sim_info"), this.a.a("ssl_pinning")};
        ArrayList arrayList = new ArrayList(listH);
        arrayList.addAll(Arrays.asList(strArr));
        builder.appendQueryParameter(strA, StringUtils.wrapFeatures((String[]) arrayList.toArray(new String[0])));
        builder.appendQueryParameter(this.a.a("app_id"), dl.getPackageName());
        builder.appendQueryParameter(this.a.a("app_debuggable"), ((Y5) dl).a);
        if (dl.l) {
            String str2 = dl.m;
            if (!TextUtils.isEmpty(str2)) {
                builder.appendQueryParameter(this.a.a("country_init"), str2);
            }
        } else {
            builder.appendQueryParameter(this.a.a("detect_locale"), String.valueOf(1));
        }
        L3 l3 = dl.i;
        if (!In.a(l3.a)) {
            builder.appendQueryParameter(this.a.a("distribution_customization"), String.valueOf(1));
            builder.appendQueryParameter(this.a.a("clids_set"), AbstractC2623im.a(l3.a));
            int iOrdinal = l3.b.ordinal();
            if (iOrdinal == 1) {
                str = "api";
            } else if (iOrdinal != 2) {
                str = iOrdinal != 3 ? "" : "retail";
            } else {
                str = "satellite";
            }
            builder.appendQueryParameter(this.a.a("clids_set_source"), str);
            String str3 = dl.f;
            String str4 = dl.g;
            if (TextUtils.isEmpty(str3) && (c2468cg = dl.o.b) != null) {
                str3 = c2468cg.a;
                str4 = c2468cg.d.a;
            }
            if (!TextUtils.isEmpty(str3)) {
                builder.appendQueryParameter(this.a.a("install_referrer"), str3);
                if (str4 == null) {
                    str4 = "null";
                }
                builder.appendQueryParameter(this.a.a("install_referrer_source"), str4);
            }
        }
        String uuid = dl.getUuid();
        if (!TextUtils.isEmpty(uuid)) {
            builder.appendQueryParameter(this.a.a("uuid"), uuid);
        }
        builder.appendQueryParameter(this.a.a("time"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("stat_sending"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("retry_policy"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("cache_control"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("permissions_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("app_system_flag"), ((Y5) dl).b);
        builder.appendQueryParameter(this.a.a("auto_inapp_collecting"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("attribution"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("startup_update"), String.valueOf(1));
        builder.appendQueryParameter(this.a.a("external_attribution"), String.valueOf(1));
        Map<String, Integer> mapD = ((C2447bk) this.b).d();
        for (String str5 : mapD.keySet()) {
            builder.appendQueryParameter(str5, String.valueOf(mapD.get(str5)));
        }
    }

    public final void a(@NonNull Uri.Builder builder, @NonNull DataSendingRestrictionController dataSendingRestrictionController, @NonNull Mb mb) {
        mb.getClass();
        AdvertisingIdsHolder identifiers = C2910ua.E.b().getIdentifiers();
        if (identifiers != null && !dataSendingRestrictionController.isRestrictedForReporter()) {
            AdTrackingInfoResult google = identifiers.getGoogle();
            if (!google.isValid()) {
                builder.appendQueryParameter(this.a.a(CommonUrlParts.ADV_ID), "");
            } else {
                builder.appendQueryParameter(this.a.a(CommonUrlParts.ADV_ID), google.mAdTrackingInfo.advId);
            }
            AdTrackingInfoResult huawei = identifiers.getHuawei();
            if (!huawei.isValid()) {
                builder.appendQueryParameter(this.a.a(CommonUrlParts.HUAWEI_OAID), "");
            } else {
                builder.appendQueryParameter(this.a.a(CommonUrlParts.HUAWEI_OAID), huawei.mAdTrackingInfo.advId);
            }
            AdTrackingInfoResult yandex = identifiers.getYandex();
            if (!yandex.isValid()) {
                builder.appendQueryParameter(this.a.a(CommonUrlParts.YANDEX_ADV_ID), "");
                return;
            } else {
                builder.appendQueryParameter(this.a.a(CommonUrlParts.YANDEX_ADV_ID), yandex.mAdTrackingInfo.advId);
                return;
            }
        }
        builder.appendQueryParameter(this.a.a(CommonUrlParts.ADV_ID), "");
        builder.appendQueryParameter(this.a.a(CommonUrlParts.HUAWEI_OAID), "");
        builder.appendQueryParameter(this.a.a(CommonUrlParts.YANDEX_ADV_ID), "");
    }
}
