package io.appmetrica.analytics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.impl.C2416ae;
import io.appmetrica.analytics.impl.C2662kb;
import io.appmetrica.analytics.impl.Gc;
import io.appmetrica.analytics.impl.Q9;
import io.appmetrica.analytics.impl.Wd;
import java.util.Map;
import org.json.JSONObject;

public final class ExternalAttributions {
    @NonNull
    public static ExternalAttribution adjust(@Nullable Object obj) {
        return obj == null ? new Wd(Q9.ADJUST) : new C2416ae(Q9.ADJUST, obj);
    }

    @NonNull
    public static ExternalAttribution airbridge(@Nullable Map<String, String> map) {
        return map == null ? new Wd(Q9.AIRBRIDGE) : new Gc(Q9.AIRBRIDGE, map);
    }

    @NonNull
    public static ExternalAttribution appsflyer(@Nullable Map<String, Object> map) {
        return map == null ? new Wd(Q9.APPSFLYER) : new Gc(Q9.APPSFLYER, map);
    }

    @NonNull
    public static ExternalAttribution kochava(@Nullable JSONObject jSONObject) {
        return jSONObject == null ? new Wd(Q9.KOCHAVA) : new C2662kb(Q9.KOCHAVA, jSONObject);
    }

    @NonNull
    public static ExternalAttribution singular(@Nullable Map<String, Object> map) {
        return map == null ? new Wd(Q9.SINGULAR) : new Gc(Q9.SINGULAR, map);
    }

    @NonNull
    public static ExternalAttribution tenjin(@Nullable Map<String, String> map) {
        return map == null ? new Wd(Q9.TENJIN) : new Gc(Q9.TENJIN, map);
    }
}
