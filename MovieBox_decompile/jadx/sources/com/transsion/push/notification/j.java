package com.transsion.push.notification;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

public final class j extends b {

    public static final class a extends com.transsion.push.notification.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, int i10) {
            super(context, i10);
            Intrinsics.h(context, "context");
        }

        public final j P() {
            return new j(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(a builder) {
        super(builder);
        Intrinsics.h(builder, "builder");
    }
}
