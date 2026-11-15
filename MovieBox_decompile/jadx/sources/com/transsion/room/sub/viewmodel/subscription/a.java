package com.transsion.room.sub.viewmodel.subscription;

import android.app.Application;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import kg.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a extends b {

    public static final C0625a f49797e = new C0625a(null);

    private String f49798b;

    private final pp.a f49799c;

    private final b0 f49800d;

    public static final class C0625a {
        public C0625a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0625a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f49798b = "";
        this.f49799c = (pp.a) c.f63982e.a().h(pp.a.class);
        this.f49800d = new b0();
    }
}
