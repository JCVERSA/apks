package com.transsion.ad.scene;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f41152a = new a();

    private a() {
    }

    public static int c(a aVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        return aVar.b(str, i10);
    }

    public static int o(a aVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 5;
        }
        return aVar.n(str, i10);
    }

    public static int q(a aVar, String str, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 5;
        }
        return aVar.p(str, i10);
    }

    public final String a(String str) {
        JsonElement jsonElement;
        String asString;
        JsonObject jsonObjectB = d.f41155a.b(str);
        return (jsonObjectB == null || (jsonElement = jsonObjectB.get("adActivityStyle")) == null || (asString = jsonElement.getAsString()) == null) ? "" : asString;
    }

    public final int b(String str, int i10) {
        JsonElement jsonElement;
        JsonObject jsonObjectB = d.f41155a.b(str);
        return (jsonObjectB == null || (jsonElement = jsonObjectB.get("biddingTime")) == null) ? i10 : jsonElement.getAsInt();
    }

    public final int d(String sceneId) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(sceneId);
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("dailyDisplayLimit")) == null) ? -1 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = -1;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final int e(String sceneId) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(sceneId);
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("delayClose")) == null) ? 0 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 0;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final int f(String sceneId) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(sceneId);
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("displayIntervalTime")) == null) ? 0 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 0;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final int g(String sceneId) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(sceneId);
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("fillAmount")) == null) ? 1 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 1;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final String h(String str) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(str);
            objM453constructorimpl = Result.m453constructorimpl((jsonObjectB == null || (jsonElement = jsonObjectB.get("hiId")) == null) ? null : jsonElement.getAsString());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        return (String) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
    }

    public final String i(String str) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(str);
            objM453constructorimpl = Result.m453constructorimpl((jsonObjectB == null || (jsonElement = jsonObjectB.get("hiSspId")) == null) ? null : jsonElement.getAsString());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        return (String) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
    }

    public final int j(String sceneId) {
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        JsonObject jsonObjectB = d.f41155a.b(sceneId);
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("interval")) == null) {
            return 10;
        }
        return jsonElement.getAsInt();
    }

    public final boolean k(String sceneId) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(sceneId);
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("isShowMemberEntrance")) == null) ? true : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.TRUE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final int l(String str) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(str);
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("nativeCacheUpperLimit")) == null) ? b.f41153a.d() : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Integer.valueOf(b.f41153a.d());
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final int m(String str) {
        JsonElement jsonElement;
        JsonObject jsonObjectB = d.f41155a.b(str);
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("refreshTime")) == null) {
            return 30;
        }
        return jsonElement.getAsInt();
    }

    public final int n(String sceneId, int i10) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(sceneId);
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("x")) == null) ? i10 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Integer.valueOf(i10);
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final int p(String sceneId, int i10) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(sceneId);
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("y")) == null) ? i10 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Integer.valueOf(i10);
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final int r(String sceneId) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(sceneId);
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("countDown")) == null) ? 5 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 5;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final int s(String sceneId) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(sceneId);
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("timeOut")) == null) ? 5 : jsonElement.getAsInt()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = 5;
        }
        return ((Number) objM453constructorimpl).intValue();
    }

    public final boolean t(String str) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(str);
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
