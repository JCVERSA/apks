package com.tn.tranpay;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final a f40526c = new a(null);

    private final int f40527a;

    private final String f40528b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static b b(a aVar, int i10, String str, String str2, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                str2 = null;
            }
            return aVar.a(i10, str, str2);
        }

        public final b a(int i10, String debugMessage, String str) {
            Intrinsics.h(debugMessage, "debugMessage");
            if (str != null) {
                debugMessage = debugMessage + " and serverCode: " + str;
            }
            return new b(i10, debugMessage);
        }

        private a() {
        }
    }

    public b(int i10, String debugMessage) {
        Intrinsics.h(debugMessage, "debugMessage");
        this.f40527a = i10;
        this.f40528b = debugMessage;
    }

    public final String a() {
        return this.f40528b;
    }

    public final int b() {
        return this.f40527a;
    }

    public String toString() {
        return "Response Code: " + this.f40527a + ", Debug Message: " + this.f40528b;
    }
}
