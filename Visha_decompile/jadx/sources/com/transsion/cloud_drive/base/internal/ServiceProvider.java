package com.transsion.cloud_drive.base.internal;

import com.transsion.cloud_drive.base.network.RetrofitInstance;
import defpackage.c74;
import defpackage.gu9;
import defpackage.jg9;
import defpackage.pr3;
import defpackage.y45;
import defpackage.yi5;
import kotlin.b;

public final class ServiceProvider {
    public static final ServiceProvider a = new ServiceProvider();
    public static final yi5 b = b.a(new c74() {
        @Override
        public final pr3 invoke() {
            return (pr3) RetrofitInstance.a.h().b(pr3.class);
        }
    });
    public static final yi5 c = b.a(new c74() {
        @Override
        public final gu9 invoke() {
            return (gu9) RetrofitInstance.a.h().b(gu9.class);
        }
    });
    public static final yi5 d = b.a(new c74() {
        @Override
        public final jg9 invoke() {
            return (jg9) RetrofitInstance.a.h().b(jg9.class);
        }
    });

    public final pr3 a() {
        Object value = b.getValue();
        y45.i(value, "getValue(...)");
        return (pr3) value;
    }

    public final jg9 b() {
        Object value = d.getValue();
        y45.i(value, "getValue(...)");
        return (jg9) value;
    }

    public final gu9 c() {
        Object value = c.getValue();
        y45.i(value, "getValue(...)");
        return (gu9) value;
    }
}
