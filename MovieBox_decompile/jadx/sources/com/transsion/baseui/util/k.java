package com.transsion.baseui.util;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class k {

    public static final class a extends k {

        private final int f42348a;

        public a(int i10) {
            super(null);
            this.f42348a = i10;
        }

        public final int a() {
            return this.f42348a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && this.f42348a == ((a) obj).f42348a;
        }

        public int hashCode() {
            return this.f42348a;
        }

        public String toString() {
            return "Icon(iconRes=" + this.f42348a + ")";
        }
    }

    public static final class b extends k {

        private final String f42349a;

        private final Integer f42350b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String content, Integer num) {
            super(null);
            Intrinsics.h(content, "content");
            this.f42349a = content;
            this.f42350b = num;
        }

        public final String a() {
            return this.f42349a;
        }

        public final Integer b() {
            return this.f42350b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f42349a, bVar.f42349a) && Intrinsics.c(this.f42350b, bVar.f42350b);
        }

        public int hashCode() {
            int iHashCode = this.f42349a.hashCode() * 31;
            Integer num = this.f42350b;
            return iHashCode + (num == null ? 0 : num.hashCode());
        }

        public String toString() {
            return "Text(content=" + this.f42349a + ", textColorRes=" + this.f42350b + ")";
        }
    }

    public k(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private k() {
    }
}
