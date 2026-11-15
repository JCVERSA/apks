package com.tn.tranpay;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final a f40541c;

    private static e f40542d;

    private boolean f40543a;

    private int f40544b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(e theme) {
            Intrinsics.h(theme, "theme");
            e.f40542d = theme;
        }

        public final e b() {
            return e.f40542d;
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        f40541c = new a(defaultConstructorMarker);
        f40542d = new e(false, 0 == true ? 1 : 0, 3, defaultConstructorMarker);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e() {
        this(false, 0 == true ? 1 : 0, 3, null);
    }

    public final boolean c() {
        return this.f40543a;
    }

    public final int d() {
        return this.f40544b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f40543a == eVar.f40543a && this.f40544b == eVar.f40544b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z10 = this.f40543a;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return (r10 * 31) + this.f40544b;
    }

    public String toString() {
        return "TranPayTheme(showLoadingWhenLaunched=" + this.f40543a + ", tintColor=" + this.f40544b + ")";
    }

    public e(boolean z10, int i10) {
        this.f40543a = z10;
        this.f40544b = i10;
    }

    public e(boolean z10, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, (i11 & 2) != 0 ? -14696961 : i10);
    }
}
