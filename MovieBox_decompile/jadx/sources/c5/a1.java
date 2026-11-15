package c5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;

public class a1 implements z0 {

    public static a1 f16510a = new a1();

    @Override
    public final void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.l0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int i11 = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            j1Var.write(91);
            while (i11 < iArr.length) {
                if (i11 != 0) {
                    j1Var.write(44);
                }
                j1Var.e0(iArr[i11]);
                i11++;
            }
            j1Var.write(93);
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            j1Var.write(91);
            while (i11 < sArr.length) {
                if (i11 != 0) {
                    j1Var.write(44);
                }
                j1Var.e0(sArr[i11]);
                i11++;
            }
            j1Var.write(93);
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            j1Var.write(91);
            while (i11 < jArr.length) {
                if (i11 != 0) {
                    j1Var.write(44);
                }
                j1Var.g0(jArr[i11]);
                i11++;
            }
            j1Var.write(93);
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            j1Var.write(91);
            while (i11 < zArr.length) {
                if (i11 != 0) {
                    j1Var.write(44);
                }
                j1Var.q(zArr[i11]);
                i11++;
            }
            j1Var.write(93);
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            j1Var.write(91);
            while (i11 < fArr.length) {
                if (i11 != 0) {
                    j1Var.write(44);
                }
                float f10 = fArr[i11];
                if (Float.isNaN(f10)) {
                    j1Var.h0();
                } else {
                    j1Var.append(Float.toString(f10));
                }
                i11++;
            }
            j1Var.write(93);
            return;
        }
        if (!(obj instanceof double[])) {
            if (obj instanceof byte[]) {
                j1Var.r((byte[]) obj);
                return;
            } else {
                j1Var.p0((char[]) obj);
                return;
            }
        }
        double[] dArr = (double[]) obj;
        j1Var.write(91);
        while (i11 < dArr.length) {
            if (i11 != 0) {
                j1Var.write(44);
            }
            double d10 = dArr[i11];
            if (Double.isNaN(d10)) {
                j1Var.h0();
            } else {
                j1Var.append(Double.toString(d10));
            }
            i11++;
        }
        j1Var.write(93);
    }
}
