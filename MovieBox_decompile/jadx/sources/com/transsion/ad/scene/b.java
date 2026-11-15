package com.transsion.ad.scene;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.transsion.ad.strategy.AdUrlParameterManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

public final class b {

    public static final b f41153a = new b();

    private b() {
    }

    private final String a() {
        return "GlobConfigScene";
    }

    public final int b() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("interstitialCd")) == null) ? 5 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 5;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final float c() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Float.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("lowMemoryValue")) == null) ? 1.0f : jsonElement.getAsFloat()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Float.valueOf(1.0f);
        }
        return ((Number) objM453constructorimpl).floatValue();
    }

    public final int d() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("nativeCacheUpperLimit")) == null) ? 1 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 1;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final int e() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("psLinkInterval")) == null) ? 6 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 6;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final List f() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            JSONArray jSONArray = new JSONArray((jsonObjectB == null || (jsonElement = jsonObjectB.get("urlParameterReplace")) == null) ? null : jsonElement.getAsString());
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                String string = jSONObject.getString("key");
                Intrinsics.g(string, "getString(...)");
                String string2 = jSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                Intrinsics.g(string2, "getString(...)");
                String string3 = jSONObject.getString(NativeComponentConstants.KEY_COMPONENT_TYPE);
                Intrinsics.g(string3, "getString(...)");
                arrayList.add(new AdUrlParameterManager.a(string, string2, string3));
            }
            objM453constructorimpl = Result.m453constructorimpl(arrayList);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = CollectionsKt.l();
        }
        return (List) objM453constructorimpl;
    }

    public final int g() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("videoCd")) == null) ? 15 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 15;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final boolean h() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("adLinkOff")) == null) ? false : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final boolean i() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("adTriggerOff")) == null) ? false : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final boolean j() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("adRejectOff")) == null) ? false : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final boolean k() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("isOpenAd")) == null) ? true : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.TRUE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final boolean l() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("showAdTag")) == null) ? false : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final boolean m() {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(f41153a.a());
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("isVipSkipAd")) == null) ? true : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.TRUE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }
}
