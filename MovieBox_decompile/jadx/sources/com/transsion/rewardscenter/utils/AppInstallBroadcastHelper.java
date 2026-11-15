package com.transsion.rewardscenter.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class AppInstallBroadcastHelper {

    private static BroadcastReceiver f49282b;

    public static final AppInstallBroadcastHelper f49281a = new AppInstallBroadcastHelper();

    public static final int f49283c = 8;

    private AppInstallBroadcastHelper() {
    }

    public final void a(Context context, final Function1 callback) {
        Object objM453constructorimpl;
        Intrinsics.h(context, "context");
        Intrinsics.h(callback, "callback");
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        BroadcastReceiver broadcastReceiver = f49282b;
        if (broadcastReceiver != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                context.unregisterReceiver(broadcastReceiver);
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result.m452boximpl(objM453constructorimpl);
        }
        f49282b = null;
        try {
            Result.Companion companion3 = Result.INSTANCE;
            BroadcastReceiver broadcastReceiver2 = new BroadcastReceiver() {
                @Override
                public void onReceive(Context context2, Intent intent) {
                    Intrinsics.h(context2, "context");
                    Intrinsics.h(intent, "intent");
                    if (Intrinsics.c(intent.getAction(), "android.intent.action.PACKAGE_ADDED") || Intrinsics.c(intent.getAction(), "android.intent.action.PACKAGE_REPLACED")) {
                        Uri data = intent.getData();
                        String schemeSpecificPart = data != null ? data.getSchemeSpecificPart() : null;
                        if (schemeSpecificPart != null) {
                            callback.invoke(schemeSpecificPart);
                        }
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
            intentFilter.addDataScheme("package");
            context.registerReceiver(broadcastReceiver2, intentFilter);
            f49282b = broadcastReceiver2;
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th3));
        }
    }

    public final void b(Context context) {
        Intrinsics.h(context, "context");
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        BroadcastReceiver broadcastReceiver = f49282b;
        if (broadcastReceiver != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                context.unregisterReceiver(broadcastReceiver);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            f49282b = null;
        }
    }
}
