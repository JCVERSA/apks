package com.cloud.sdk.commonutil.util;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class f {

    public static final class a extends f {

        private final Throwable f22527a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Throwable exception) {
            super(null);
            Intrinsics.h(exception, "exception");
            this.f22527a = exception;
        }

        public final Throwable a() {
            return this.f22527a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.c(this.f22527a, ((a) obj).f22527a);
        }

        public int hashCode() {
            return this.f22527a.hashCode();
        }

        public String toString() {
            return "Failure(exception=" + this.f22527a + ')';
        }
    }

    public static final class b extends f {

        private final Object f22528a;

        public b(Object obj) {
            super(null);
            this.f22528a = obj;
        }

        public final Object a() {
            return this.f22528a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.c(this.f22528a, ((b) obj).f22528a);
        }

        public int hashCode() {
            Object obj = this.f22528a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public String toString() {
            return "Success(value=" + this.f22528a + ')';
        }
    }

    public f(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private f() {
    }
}
