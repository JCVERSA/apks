package androidx.window.core;

import android.graphics.Rect;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final int f14960a;

    private final int f14961b;

    private final int f14962c;

    private final int f14963d;

    public b(int i10, int i11, int i12, int i13) {
        this.f14960a = i10;
        this.f14961b = i11;
        this.f14962c = i12;
        this.f14963d = i13;
    }

    public final int a() {
        return this.f14963d - this.f14961b;
    }

    public final int b() {
        return this.f14960a;
    }

    public final int c() {
        return this.f14961b;
    }

    public final int d() {
        return this.f14962c - this.f14960a;
    }

    public final boolean e() {
        return a() == 0 && d() == 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.c(b.class, obj == null ? null : obj.getClass())) {
            return false;
        }
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.window.core.Bounds");
        }
        b bVar = (b) obj;
        return this.f14960a == bVar.f14960a && this.f14961b == bVar.f14961b && this.f14962c == bVar.f14962c && this.f14963d == bVar.f14963d;
    }

    public final Rect f() {
        return new Rect(this.f14960a, this.f14961b, this.f14962c, this.f14963d);
    }

    public int hashCode() {
        return (((((this.f14960a * 31) + this.f14961b) * 31) + this.f14962c) * 31) + this.f14963d;
    }

    public String toString() {
        return ((Object) b.class.getSimpleName()) + " { [" + this.f14960a + ',' + this.f14961b + ',' + this.f14962c + ',' + this.f14963d + "] }";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(Rect rect) {
        this(rect.left, rect.top, rect.right, rect.bottom);
        Intrinsics.h(rect, "rect");
    }
}
