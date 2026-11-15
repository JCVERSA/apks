package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class m {

    public static final a f6116c = new a(null);

    private static final m f6117d = new m(1.0f, 0.0f);

    private final float f6118a;

    private final float f6119b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m a() {
            return m.f6117d;
        }

        private a() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public m() {
        float f10 = 0.0f;
        this(f10, f10, 3, null);
    }

    public final float b() {
        return this.f6118a;
    }

    public final float c() {
        return this.f6119b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f6118a == mVar.f6118a && this.f6119b == mVar.f6119b;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f6118a) * 31) + Float.floatToIntBits(this.f6119b);
    }

    public String toString() {
        return "TextGeometricTransform(scaleX=" + this.f6118a + ", skewX=" + this.f6119b + ')';
    }

    public m(float f10, float f11) {
        this.f6118a = f10;
        this.f6119b = f11;
    }

    public m(float f10, float f11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 1.0f : f10, (i10 & 2) != 0 ? 0.0f : f11);
    }
}
