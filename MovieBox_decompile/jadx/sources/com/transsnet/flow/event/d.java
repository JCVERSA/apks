package com.transsnet.flow.event;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d implements c {

    public static final a f58033a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override
    public void log(String msg) {
        Intrinsics.h(msg, "msg");
    }

    @Override
    public void log(String msg, String th2) {
        Intrinsics.h(msg, "msg");
        Intrinsics.h(th2, "th");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(msg);
        sb2.append(",ex:");
        sb2.append(th2);
    }
}
