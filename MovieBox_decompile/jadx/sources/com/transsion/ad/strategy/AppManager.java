package com.transsion.ad.strategy;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

public final class AppManager {

    public static final AppManager f41166a = new AppManager();

    private static AppEnum f41167b;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/ad/strategy/AppManager$AppEnum;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "APP_MOVIE_BOX", "APP_NOVEL_HUB", "APP_WOW_FM", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum AppEnum {
        APP_MOVIE_BOX("movie_box"),
        APP_NOVEL_HUB("novel_hub"),
        APP_WOW_FM("wow_fm");

        private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String value;

        AppEnum(String str) {
            this.value = str;
        }

        public static EnumEntries<AppEnum> getEntries() {
            return $ENTRIES;
        }

        public final String getValue() {
            return this.value;
        }
    }

    private AppManager() {
    }

    public final String a() {
        String value;
        AppEnum appEnum = f41167b;
        if (appEnum != null && (value = appEnum.getValue()) != null) {
            return value;
        }
        String string = e.f41179a.c().getString("mmkv_key_app_name", "none");
        return string == null ? "default_null" : string;
    }

    public final void b(AppEnum app) {
        Intrinsics.h(app, "app");
        f41167b = app;
        e.f41179a.c().putString("mmkv_key_app_name", app.getValue());
    }
}
