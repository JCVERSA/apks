package com.transsion.shorttv_pugc.base.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class DeviceKeyMonitor {

    public static final a f51801e = new a(null);

    private final Context f51802a;

    private final b f51803b;

    private final String f51804c;

    private BroadcastReceiver f51805d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public interface b {
        void onHomeClick();

        void onRecentClick();
    }

    public DeviceKeyMonitor(Context context, b listener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(listener, "listener");
        this.f51802a = context;
        this.f51803b = listener;
        this.f51804c = "DeviceKeyMonitor";
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context2, Intent intent) {
                Intrinsics.h(context2, "context");
                Intrinsics.h(intent, "intent");
                if (Intrinsics.c(intent.getAction(), "android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
                    String stringExtra = intent.getStringExtra("reason");
                    if (stringExtra == null) {
                        stringExtra = "";
                    }
                    int iHashCode = stringExtra.hashCode();
                    if (iHashCode != -1408204183) {
                        if (iHashCode != 350448461) {
                            if (iHashCode == 1092716832 && stringExtra.equals("homekey")) {
                                DeviceKeyMonitor.this.f51803b.onHomeClick();
                                return;
                            }
                            return;
                        }
                        if (!stringExtra.equals("recentapps")) {
                            return;
                        }
                    } else if (!stringExtra.equals("assist")) {
                        return;
                    }
                    DeviceKeyMonitor.this.f51803b.onRecentClick();
                }
            }
        };
        this.f51805d = broadcastReceiver;
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m453constructorimpl(Build.VERSION.SDK_INT >= 33 ? context.registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"), 2) : context.registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final void b() {
        try {
            Result.Companion companion = Result.INSTANCE;
            BroadcastReceiver broadcastReceiver = this.f51805d;
            if (broadcastReceiver != null) {
                this.f51802a.unregisterReceiver(broadcastReceiver);
                this.f51805d = null;
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }
}
