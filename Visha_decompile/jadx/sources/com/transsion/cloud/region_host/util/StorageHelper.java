package com.transsion.cloud.region_host.util;

import android.content.Context;
import android.content.SharedPreferences;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class StorageHelper {
    public static final a c = new a(null);
    public final Context a;
    public final yi5 b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public StorageHelper(Context context) {
        y45.j(context, "context");
        this.a = context;
        this.b = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final SharedPreferences invoke() {
                return this.this$0.a.getSharedPreferences("region-host-config", 0);
            }
        });
    }

    public final String b(String str) {
        y45.j(str, "originalHost");
        return d().getString("cached_host_" + str, null);
    }

    public final String c() {
        return d().getString("cache_region_host_domain_data", null);
    }

    public final SharedPreferences d() {
        Object value = this.b.getValue();
        y45.i(value, "getValue(...)");
        return (SharedPreferences) value;
    }

    public final void e(String str, String str2) {
        y45.j(str, "originalHost");
        y45.j(str2, "newHost");
        d().edit().putString("cached_host_" + str, str2).apply();
    }
}
