package com.transsion.baselib.helper;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import java.lang.ref.WeakReference;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class j extends ContentObserver {

    private final WeakReference f42139a;

    private final Function1 f42140b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Handler handler, WeakReference contextWeak, Function1 callback) {
        super(handler);
        Intrinsics.h(contextWeak, "contextWeak");
        Intrinsics.h(callback, "callback");
        this.f42139a = contextWeak;
        this.f42140b = callback;
    }

    public final boolean a(Context context) {
        Intrinsics.h(context, "context");
        try {
            return Settings.System.getInt(context.getContentResolver(), "accelerometer_rotation") == 1;
        } catch (Settings.SettingNotFoundException e10) {
            e10.printStackTrace();
            Log.e("ScreenRotationObserver", "Setting not found: " + e10.getMessage());
            return false;
        }
    }

    @Override
    public void onChange(boolean z10) {
        super.onChange(z10);
        Context context = (Context) this.f42139a.get();
        boolean zA = context != null ? a(context) : false;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Auto-rotate is now isAutoRotateEnabled：");
        sb2.append(zA);
        this.f42140b.invoke(Boolean.valueOf(zA));
    }
}
