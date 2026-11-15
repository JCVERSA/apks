package androidx.activity;

import android.window.BackEvent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final a f560e = new a(null);

    private final float f561a;

    private final float f562b;

    private final float f563c;

    private final int f564d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(float f10, float f11, float f12, int i10) {
        this.f561a = f10;
        this.f562b = f11;
        this.f563c = f12;
        this.f564d = i10;
    }

    public final float a() {
        return this.f563c;
    }

    public final int b() {
        return this.f564d;
    }

    public final float c() {
        return this.f562b;
    }

    public String toString() {
        return "BackEventCompat{touchX=" + this.f561a + ", touchY=" + this.f562b + ", progress=" + this.f563c + ", swipeEdge=" + this.f564d + '}';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public b(BackEvent backEvent) {
        Intrinsics.h(backEvent, "backEvent");
        androidx.activity.a aVar = androidx.activity.a.f559a;
        this(aVar.c(backEvent), aVar.d(backEvent), aVar.a(backEvent), aVar.b(backEvent));
    }
}
