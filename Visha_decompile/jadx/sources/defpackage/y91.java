package defpackage;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class y91 {
    public static final a c = new a(null);
    public static final y91 d = new y91(new int[0], 0 == true ? 1 : 0, 2, 0 == true ? 1 : 0);
    public final int[] a;
    public final float[] b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public y91(int[] iArr, float[] fArr) {
        y45.j(iArr, "colors");
        this.a = iArr;
        this.b = fArr;
        if (iArr.length != (fArr != null ? fArr.length : iArr.length)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final int[] a() {
        return this.a;
    }

    public final float[] b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!y45.e(y91.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        y45.h(obj, "null cannot be cast to non-null type com.yandex.div.internal.graphics.Colormap");
        y91 y91Var = (y91) obj;
        return Arrays.equals(this.a, y91Var.a) && Arrays.equals(this.b, y91Var.b);
    }

    public int hashCode() {
        int iHashCode = Arrays.hashCode(this.a) * 31;
        float[] fArr = this.b;
        return iHashCode + (fArr != null ? Arrays.hashCode(fArr) : 0);
    }

    public y91(int[] iArr, float[] fArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(iArr, (i & 2) != 0 ? null : fArr);
    }
}
