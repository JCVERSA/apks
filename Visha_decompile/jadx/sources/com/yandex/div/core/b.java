package com.yandex.div.core;

import android.content.Context;
import com.yandex.div.core.dagger.DivKitComponent;
import com.yandex.div.core.dagger.Yatagan$DivKitComponent;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b {
    public static final a b = new a(null);
    public static final c c = new c.a().c();
    public static c d;
    public static volatile b e;
    public final DivKitComponent a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(Context context) {
            y45.j(context, "context");
            b bVar = b.e;
            if (bVar != null) {
                return bVar;
            }
            synchronized (this) {
                try {
                    b bVar2 = b.e;
                    if (bVar2 != null) {
                        return bVar2;
                    }
                    c cVar = b.d;
                    if (cVar == null) {
                        cVar = b.c;
                    }
                    b bVar3 = new b(context, cVar, null);
                    b.e = bVar3;
                    return bVar3;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final String b() {
            return "31.13.0";
        }

        public a() {
        }
    }

    public b(Context context, c cVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, cVar);
    }

    public final DivKitComponent e() {
        return this.a;
    }

    public b(Context context, c cVar) {
        DivKitComponent.Builder builder = Yatagan$DivKitComponent.builder();
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "context.applicationContext");
        this.a = builder.b(applicationContext).a(cVar).build();
    }
}
