package p0;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c implements p0.a {

    public static final a f68957c = new a(null);

    public static final int f68958d = 8;

    private final float[] f68959a;

    private final float[] f68960b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float b(float f10, float[] fArr, float[] fArr2) {
            float f11;
            float f12;
            float f13;
            float fA;
            float fAbs = Math.abs(f10);
            float fSignum = Math.signum(f10);
            int iBinarySearch = Arrays.binarySearch(fArr, fAbs);
            if (iBinarySearch >= 0) {
                fA = fArr2[iBinarySearch];
            } else {
                int i10 = -(iBinarySearch + 1);
                int i11 = i10 - 1;
                float f14 = 0.0f;
                if (i11 >= fArr.length - 1) {
                    float f15 = fArr[fArr.length - 1];
                    float f16 = fArr2[fArr.length - 1];
                    if (f15 == 0.0f) {
                        return 0.0f;
                    }
                    return f10 * (f16 / f15);
                }
                if (i11 == -1) {
                    float f17 = fArr[0];
                    f13 = fArr2[0];
                    f12 = f17;
                    f11 = 0.0f;
                } else {
                    float f18 = fArr[i11];
                    float f19 = fArr[i10];
                    f11 = fArr2[i11];
                    f14 = f18;
                    f12 = f19;
                    f13 = fArr2[i10];
                }
                fA = d.f68961a.a(f11, f13, f14, f12, fAbs);
            }
            return fSignum * fA;
        }

        private a() {
        }
    }

    public c(float[] fArr, float[] fArr2) {
        if (fArr.length != fArr2.length || fArr.length == 0) {
            throw new IllegalArgumentException("Array lengths must match and be nonzero");
        }
        this.f68959a = fArr;
        this.f68960b = fArr2;
    }

    @Override
    public float a(float f10) {
        return f68957c.b(f10, this.f68960b, this.f68959a);
    }

    @Override
    public float b(float f10) {
        return f68957c.b(f10, this.f68959a, this.f68960b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Arrays.equals(this.f68959a, cVar.f68959a) && Arrays.equals(this.f68960b, cVar.f68960b);
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f68959a) * 31) + Arrays.hashCode(this.f68960b);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("FontScaleConverter{fromSpValues=");
        String string = Arrays.toString(this.f68959a);
        Intrinsics.g(string, "toString(this)");
        sb2.append(string);
        sb2.append(", toDpValues=");
        String string2 = Arrays.toString(this.f68960b);
        Intrinsics.g(string2, "toString(this)");
        sb2.append(string2);
        sb2.append('}');
        return sb2.toString();
    }
}
