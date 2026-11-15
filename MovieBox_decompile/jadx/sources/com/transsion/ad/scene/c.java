package com.transsion.ad.scene;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import rh.e;

public final class c {

    public static final c f41154a = new c();

    private c() {
    }

    public final boolean a(String str) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(str);
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("hiOff")) == null) ? false : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final boolean b(String sceneId) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(sceneId);
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("nonOff")) == null) ? false : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final boolean c(String str) {
        Object objM453constructorimpl;
        JsonElement jsonElement;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = d.f41155a.b(str);
            objM453constructorimpl = Result.m453constructorimpl(Boolean.valueOf((jsonObjectB == null || (jsonElement = jsonObjectB.get("sceneOff")) == null) ? false : jsonElement.getAsBoolean()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM453constructorimpl).booleanValue();
    }

    public final boolean d(String str) {
        if (e.f71234a.a()) {
            return b.f41153a.m() || a.f41152a.t(str);
        }
        return false;
    }
}
