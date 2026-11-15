package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.UserManager;
import defpackage.y45;
import kotlin.Result;

public final class by1 {
    public static SharedPreferences a(by1 by1Var, Context context, String str) {
        Object objM279constructorimpl;
        by1Var.getClass();
        y45.j(context, "context");
        y45.j(str, "prefName");
        try {
            Result.Companion companion = Result.INSTANCE;
            Object systemService = context.getSystemService("user");
            y45.h(systemService, "null cannot be cast to non-null type android.os.UserManager");
            objM279constructorimpl = Result.m279constructorimpl(Boolean.valueOf(((UserManager) systemService).isUserUnlocked()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Boolean bool = Boolean.TRUE;
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = bool;
        }
        if (((Boolean) objM279constructorimpl).booleanValue()) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            y45.g(sharedPreferences);
            return sharedPreferences;
        }
        SharedPreferences sharedPreferences2 = context.createDeviceProtectedStorageContext().getSharedPreferences(str, 0);
        y45.g(sharedPreferences2);
        return sharedPreferences2;
    }
}
