package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class Ke extends AbstractC2988xd {
    public static final Ne d = new Ne("UUID_RESULT", null);
    public static final Ne e = new Ne("DEVICE_ID_RESULT", null);
    public static final Ne f = new Ne("DEVICE_ID_HASH_RESULT", null);
    public static final Ne g = new Ne("AD_URL_GET_RESULT", null);
    public static final Ne h = new Ne("AD_URL_REPORT_RESULT", null);
    public static final Ne i = new Ne("CUSTOM_HOSTS", null);
    public static final Ne j = new Ne("SERVER_TIME_OFFSET", null);
    public static final Ne k = new Ne("RESPONSE_CLIDS_RESULT", null);
    public static final Ne l = new Ne("CUSTOM_SDK_HOSTS", null);
    public static final Ne m = new Ne("CLIENT_CLIDS", null);
    public static final Ne n = new Ne("DEFERRED_DEEP_LINK_WAS_CHECKED", null);
    public static final Ne o = new Ne("API_LEVEL", null);
    public static final Ne p = new Ne("NEXT_STARTUP_TIME", null);
    public static final Ne q = new Ne("GAID", null);
    public static final Ne r = new Ne("HOAID", null);
    public static final Ne s = new Ne("YANDEX_ADV_ID", null);
    public static final Ne t = new Ne("CLIENT_CLIDS_CHANGED_AFTER_LAST_IDENTIFIERS_UPDATE", null);
    public static final Ne u = new Ne("SCREEN_INFO", null);
    public static final Ne v = new Ne("SCREEN_SIZE_CHECKED_BY_DEPRECATED", null);
    public static final Ne w = new Ne("FEATURES", null);
    public static final Ne x = new Ne("APPMETRICA_CLIENT_CONFIG", null);

    public Ke(Oa oa) {
        super(oa);
    }

    public final boolean a(boolean z) {
        return this.a.getBoolean(t.b, z);
    }

    public final long b(long j2) {
        return this.a.getLong(j.a, j2);
    }

    @NonNull
    public final Ke c(@Nullable IdentifiersResult identifiersResult) {
        return a(l.b, identifiersResult);
    }

    @NonNull
    public final IdentifiersResult d() {
        return h(g.b);
    }

    @NonNull
    public final IdentifiersResult e() {
        return h(h.b);
    }

    @NonNull
    public final Ke f(@Nullable IdentifiersResult identifiersResult) {
        return a(q.b, identifiersResult);
    }

    @NonNull
    public final IdentifiersResult h() {
        return h(l.b);
    }

    @NonNull
    public final IdentifiersResult i() {
        return h(f.b);
    }

    @NonNull
    public final IdentifiersResult j() {
        return h(e.b);
    }

    @NonNull
    public final C2462ca k() {
        String string = this.a.getString(w.b, null);
        try {
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(string);
                return new C2462ca(JsonUtils.optBooleanOrNull(jSONObject, "libSslEnabled"), IdentifierStatus.from(JsonUtils.optStringOrNull(jSONObject, "STATUS")), JsonUtils.optStringOrNull(jSONObject, "ERROR_EXPLANATION"));
            }
        } catch (Throwable unused) {
        }
        return new C2462ca(null, IdentifierStatus.UNKNOWN, null);
    }

    @NonNull
    public final IdentifiersResult l() {
        return h(q.b);
    }

    @NonNull
    public final IdentifiersResult m() {
        return h(r.b);
    }

    @NonNull
    public final long n() {
        return this.a.getLong(p.b, 0L);
    }

    @NonNull
    public final IdentifiersResult o() {
        return h(k.b);
    }

    @Nullable
    public final ScreenInfo p() {
        return AbstractC2712mb.e(this.a.getString(u.b, null));
    }

    @NonNull
    public final IdentifiersResult q() {
        return h(d.b);
    }

    @NonNull
    public final IdentifiersResult r() {
        return h(s.b);
    }

    public final boolean s() {
        return this.a.getBoolean(n.b, false);
    }

    public final boolean t() {
        return this.a.getBoolean(v.b, false);
    }

    public final Ke u() {
        return (Ke) b(n.b, true);
    }

    public final void v() {
        b(v.b, true);
    }

    public final List<String> g() {
        String string = this.a.getString(i.b, null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return AbstractC2712mb.b(string);
    }

    public final long a(long j2) {
        return this.a.getLong(o.b, j2);
    }

    @NonNull
    public final Ke b(@Nullable IdentifiersResult identifiersResult) {
        return a(h.b, identifiersResult);
    }

    public final Ke c(long j2) {
        return (Ke) b(o.b, j2);
    }

    @NonNull
    public final Ke d(@Nullable IdentifiersResult identifiersResult) {
        return a(f.b, identifiersResult);
    }

    @NonNull
    public final Ke e(@Nullable IdentifiersResult identifiersResult) {
        return a(e.b, identifiersResult);
    }

    @Nullable
    public final AppMetricaConfig f() {
        String string = this.a.getString(x.b, null);
        if (string == null) {
            return null;
        }
        return AppMetricaConfig.fromJson(string);
    }

    public final IdentifiersResult h(String str) {
        IdentifiersResult identifiersResult;
        try {
            String string = this.a.getString(str, null);
            if (string != null) {
                JSONObject jSONObject = new JSONObject(string);
                identifiersResult = new IdentifiersResult(JsonUtils.optStringOrNull(jSONObject, DataTypes.OBJ_ID), IdentifierStatus.from(JsonUtils.optStringOrNull(jSONObject, "STATUS")), JsonUtils.optStringOrNull(jSONObject, "ERROR_EXPLANATION"));
            } else {
                identifiersResult = null;
            }
        } catch (Throwable unused) {
        }
        return identifiersResult == null ? new IdentifiersResult(null, IdentifierStatus.UNKNOWN, "no identifier in preferences") : identifiersResult;
    }

    @NonNull
    public final Ke i(@Nullable IdentifiersResult identifiersResult) {
        return a(d.b, identifiersResult);
    }

    @NonNull
    public final Ke j(@Nullable IdentifiersResult identifiersResult) {
        return a(s.b, identifiersResult);
    }

    @NonNull
    public final Ke g(@Nullable IdentifiersResult identifiersResult) {
        return a(r.b, identifiersResult);
    }

    @NonNull
    public final Ke a(@Nullable IdentifiersResult identifiersResult) {
        return a(g.b, identifiersResult);
    }

    public final Ke b(boolean z) {
        return (Ke) b(t.b, z);
    }

    @NonNull
    public final Ke d(long j2) {
        return (Ke) b(p.b, j2);
    }

    public final Ke e(long j2) {
        return (Ke) b(j.b, j2);
    }

    @Nullable
    public final String i(@Nullable String str) {
        return this.a.getString(m.b, str);
    }

    public final Ke j(@Nullable String str) {
        return (Ke) b(m.b, str);
    }

    @Override
    @NonNull
    public final String f(@NonNull String str) {
        return new Ne(str, null).b;
    }

    public final Ke a(List<String> list) {
        return (Ke) b(i.b, In.a((Collection) list) ? null : new JSONArray((Collection) list).toString());
    }

    @NonNull
    public final Ke h(@Nullable IdentifiersResult identifiersResult) {
        return a(k.b, identifiersResult);
    }

    @Override
    @NonNull
    public final Ke g(@NonNull String str) {
        return (Ke) d(new Ne(str, null).b);
    }

    @NonNull
    public final Ke a(@NonNull C2462ca c2462ca) {
        String str = w.b;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("libSslEnabled", c2462ca.a).put("STATUS", c2462ca.b.getValue()).putOpt("ERROR_EXPLANATION", c2462ca.c);
        } catch (Throwable unused) {
        }
        return (Ke) b(str, jSONObject.toString());
    }

    public final void a(@Nullable ScreenInfo screenInfo) {
        b(u.b, AbstractC2712mb.a(screenInfo));
    }

    public final void a(@NonNull AppMetricaConfig appMetricaConfig) {
        b(x.b, appMetricaConfig.toJson());
    }

    public final Ke a(String str, IdentifiersResult identifiersResult) {
        String string;
        if (identifiersResult != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(DataTypes.OBJ_ID, identifiersResult.id).put("STATUS", identifiersResult.status.getValue()).put("ERROR_EXPLANATION", identifiersResult.errorExplanation);
                } catch (Throwable unused) {
                }
                string = jSONObject.toString();
            } catch (Throwable unused2) {
                string = null;
            }
        } else {
            string = null;
        }
        if (string != null) {
            b(str, string);
        }
        return this;
    }
}
