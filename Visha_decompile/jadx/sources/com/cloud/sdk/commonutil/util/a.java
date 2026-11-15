package com.cloud.sdk.commonutil.util;

import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class a {

    public static final class C0054a extends a {
        public final Throwable a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0054a(Throwable th) {
            super(null);
            y45.j(th, "exception");
            this.a = th;
        }

        public final Throwable a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0054a) && y45.e(this.a, ((C0054a) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "Failure(exception=" + this.a + ')';
        }
    }

    public static final class b extends a {
        public final Object a;

        public b(Object obj) {
            super(null);
            this.a = obj;
        }

        public final Object a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && y45.e(this.a, ((b) obj).a);
        }

        public int hashCode() {
            Object obj = this.a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public String toString() {
            return "Success(value=" + this.a + ')';
        }
    }

    public a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public a() {
    }
}
