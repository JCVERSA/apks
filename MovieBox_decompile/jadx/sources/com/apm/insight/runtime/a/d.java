package com.apm.insight.runtime.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.apm.insight.runtime.m;
import com.cloud.tmc.integration.permission.PermissionConstant;

final class d {

    private int f19155a;

    class a extends BroadcastReceiver {
        private a() {
        }

        @Override
        public final void onReceive(Context context, Intent intent) {
            try {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    d.this.f19155a = (int) ((intent.getIntExtra(PermissionConstant.level, 0) * 100.0f) / intent.getIntExtra("scale", 100));
                }
            } catch (Throwable unused) {
            }
        }

        a(d dVar, byte b10) {
            this();
        }
    }

    d(final Context context) {
        m.a().a(new Runnable() {
            @Override
            public final void run() {
                try {
                    context.registerReceiver(new a(d.this, (byte) 0), new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            }
        });
    }

    public final int a() {
        return this.f19155a;
    }
}
