package com.transsion.ad.strategy;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class AdUrlParameterManager {

    public static final AdUrlParameterManager f41162a = new AdUrlParameterManager();

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/ad/strategy/AdUrlParameterManager$UrlParameterReplaceEnum;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "GAID", "CUSTOM_USER_ID", "TIME_STAMP", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum UrlParameterReplaceEnum {
        GAID("GAID"),
        CUSTOM_USER_ID("CUSTOM_USER_ID"),
        TIME_STAMP("TIME_STAMP");

        private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String value;

        UrlParameterReplaceEnum(String str) {
            this.value = str;
        }

        public static EnumEntries<UrlParameterReplaceEnum> getEntries() {
            return $ENTRIES;
        }

        public final String getValue() {
            return this.value;
        }
    }

    public static final class a {

        private final String f41163a;

        private final String f41164b;

        private final String f41165c;

        public a(String key, String value, String type) {
            Intrinsics.h(key, "key");
            Intrinsics.h(value, "value");
            Intrinsics.h(type, "type");
            this.f41163a = key;
            this.f41164b = value;
            this.f41165c = type;
        }

        public final String a() {
            return this.f41163a;
        }

        public final String b() {
            return this.f41165c;
        }

        public final String c() {
            return this.f41164b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f41163a, aVar.f41163a) && Intrinsics.c(this.f41164b, aVar.f41164b) && Intrinsics.c(this.f41165c, aVar.f41165c);
        }

        public int hashCode() {
            return (((this.f41163a.hashCode() * 31) + this.f41164b.hashCode()) * 31) + this.f41165c.hashCode();
        }

        public String toString() {
            return "UrlParameterReplaceEntity(key=" + this.f41163a + ", value=" + this.f41164b + ", type=" + this.f41165c + ")";
        }
    }

    private AdUrlParameterManager() {
    }

    public final boolean a(String str) {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            boolean z10 = false;
            if (str != null && str.length() != 0) {
                String queryParameter = Uri.parse(str).getQueryParameter("mb_system_browser");
                if (queryParameter != null && StringsKt.H(queryParameter, "true", true)) {
                    z10 = true;
                }
                objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf(z10));
                if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                    objM453constructorimpl = Boolean.FALSE;
                }
                return ((Boolean) objM453constructorimpl).booleanValue();
            }
            return false;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final String b(String url, String str) {
        Intrinsics.h(url, "url");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (TextUtils.isEmpty(url)) {
                return url;
            }
            List<a> listF = com.transsion.ad.scene.b.f41153a.f();
            if (listF.isEmpty()) {
                return url;
            }
            Uri uri = Uri.parse(url);
            Intrinsics.g(uri, "parse(...)");
            Set<String> queryParameterNames = uri.getQueryParameterNames();
            String strQ = url;
            for (a aVar : listF) {
                if (queryParameterNames.contains(aVar.a()) && Intrinsics.c(uri.getQueryParameter(aVar.a()), aVar.c())) {
                    String strB = aVar.b();
                    if (Intrinsics.c(strB, UrlParameterReplaceEnum.GAID.getValue())) {
                        String strC = aVar.c();
                        String strE = DeviceUtil.e();
                        Intrinsics.g(strE, "getGAId(...)");
                        strQ = StringsKt.Q(strQ, strC, strE, false, 4, null);
                    } else if (Intrinsics.c(strB, UrlParameterReplaceEnum.CUSTOM_USER_ID.getValue())) {
                        strQ = StringsKt.Q(strQ, aVar.c(), "custom_use_id_ashdjhv1234dhb", false, 4, null);
                    } else if (Intrinsics.c(strB, UrlParameterReplaceEnum.TIME_STAMP.getValue())) {
                        strQ = StringsKt.Q(strQ, aVar.c(), String.valueOf(System.currentTimeMillis()), false, 4, null);
                    }
                }
            }
            xh.a aVar2 = xh.a.f75336a;
            if (str == null) {
                str = "";
            }
            xh.a.m(aVar2, str, "AdUrlParameterReplaceManager --> replaceParameter() --> url = " + url + " --> replaceList = " + listF + " --> newUrl = " + ((Object) strQ), 0, false, 12, null);
            return strQ;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Object objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            Object obj = url;
            if (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null) {
                obj = objM453constructorimpl;
            }
            return (String) obj;
        }
    }
}
