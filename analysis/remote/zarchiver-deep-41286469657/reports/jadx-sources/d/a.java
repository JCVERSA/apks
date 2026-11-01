package d;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;

public final class a {
    /* JADX WARN: Code duplicated, block: B:11:0x002e  */
    /* JADX WARN: Code duplicated, block: B:17:0x0044  */
    /* JADX WARN: Code duplicated, block: B:39:0x008f A[PHI: r15
      0x008f: PHI (r15v3 boolean) = (r15v1 boolean), (r15v1 boolean), (r15v6 boolean) binds: [B:28:0x0077, B:31:0x007d, B:37:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:45:0x009b A[Catch: NumberFormatException -> 0x00c4, TryCatch #0 {NumberFormatException -> 0x00c4, blocks: (B:22:0x0056, B:25:0x006b, B:27:0x0071, B:31:0x007d, B:43:0x0095, B:45:0x009b, B:48:0x00ab, B:51:0x00b2, B:52:0x00be, B:53:0x00c3), top: B:68:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ab A[Catch: NumberFormatException -> 0x00c4, TryCatch #0 {NumberFormatException -> 0x00c4, blocks: (B:22:0x0056, B:25:0x006b, B:27:0x0071, B:31:0x007d, B:43:0x0095, B:45:0x009b, B:48:0x00ab, B:51:0x00b2, B:52:0x00be, B:53:0x00c3), top: B:68:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00de  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
    
        if (r17 == false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C0005a[] a(String str) {
        int i2;
        String strTrim;
        int i3;
        float[] fArr;
        int i4;
        ArrayList arrayList = new ArrayList();
        int i5 = 0;
        int i6 = 1;
        int i7 = 0;
        while (i6 < str.length()) {
            while (i6 < str.length()) {
                char cCharAt = str.charAt(i6);
                if ((cCharAt - 'Z') * (cCharAt - 'A') > 0) {
                    if ((cCharAt - 'z') * (cCharAt - 'a') > 0) {
                        continue;
                    } else if (cCharAt != 'e' && cCharAt != 'E') {
                        strTrim = str.substring(i7, i6).trim();
                        if (strTrim.length() <= 0) {
                            if (strTrim.charAt(i5) != 'z' || strTrim.charAt(i5) == 'Z') {
                                i3 = 0;
                                fArr = new float[0];
                            } else {
                                try {
                                    int length = strTrim.length();
                                    float[] fArr2 = new float[length];
                                    int length2 = strTrim.length();
                                    int i8 = 0;
                                    for (int i9 = 1; i9 < length2; i9 = i4) {
                                        i4 = i9;
                                        boolean z2 = false;
                                        boolean z3 = false;
                                        boolean z4 = false;
                                        boolean z5 = false;
                                        while (i4 < strTrim.length()) {
                                            char cCharAt2 = strTrim.charAt(i4);
                                            if (cCharAt2 == ' ') {
                                                z2 = true;
                                                z5 = false;
                                            } else if (cCharAt2 == 'E' || cCharAt2 == 'e') {
                                                z5 = true;
                                            } else {
                                                switch (cCharAt2) {
                                                    case ',':
                                                        z2 = true;
                                                        break;
                                                    case '-':
                                                        if (i4 != i9) {
                                                        }
                                                        break;
                                                    case '.':
                                                        if (z4) {
                                                            z3 = true;
                                                            z2 = true;
                                                        } else {
                                                            z4 = true;
                                                        }
                                                        break;
                                                }
                                                z5 = false;
                                            }
                                            if (z2) {
                                                if (i9 < i4) {
                                                    fArr2[i8] = Float.parseFloat(strTrim.substring(i9, i4));
                                                    i8++;
                                                }
                                                if (z3) {
                                                    i4++;
                                                }
                                            } else {
                                                i4++;
                                            }
                                        }
                                        if (i9 < i4) {
                                            fArr2[i8] = Float.parseFloat(strTrim.substring(i9, i4));
                                            i8++;
                                        }
                                        if (z3) {
                                            i4++;
                                        }
                                    }
                                    if (i8 < 0) {
                                        throw new IllegalArgumentException();
                                    }
                                    fArr = new float[i8];
                                    System.arraycopy(fArr2, 0, fArr, 0, Math.min(i8, length));
                                    i3 = 0;
                                } catch (NumberFormatException e2) {
                                    throw new RuntimeException("error in parsing \"" + strTrim + "\"", e2);
                                }
                            }
                            arrayList.add(new C0005a(strTrim.charAt(i3), fArr));
                        }
                        i7 = i6;
                        i5 = 0;
                        i6++;
                    }
                } else if (cCharAt != 'e') {
                    continue;
                }
                i6++;
            }
            strTrim = str.substring(i7, i6).trim();
            if (strTrim.length() <= 0) {
                if (strTrim.charAt(i5) != 'z') {
                    i3 = 0;
                    fArr = new float[0];
                } else {
                    i3 = 0;
                    fArr = new float[0];
                }
                arrayList.add(new C0005a(strTrim.charAt(i3), fArr));
            }
            i7 = i6;
            i5 = 0;
            i6++;
        }
        if (i6 - i7 != 1 || i7 >= str.length()) {
            i2 = 0;
        } else {
            i2 = 0;
            arrayList.add(new C0005a(str.charAt(i7), new float[0]));
        }
        return (C0005a[]) arrayList.toArray(new C0005a[i2]);
    }

    public static class C0005a {

        public final char f517a;

        public final float[] f518b;

        public C0005a(char c2, float[] fArr) {
            this.f517a = c2;
            this.f518b = fArr;
        }

        public static void a(Path path, float f2, float f3, float f4, float f5, float f6, float f7, float f8, boolean z2, boolean z3) {
            double d2;
            double d3;
            double radians = Math.toRadians(f8);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d4 = f2;
            Double.isNaN(d4);
            Double.isNaN(d4);
            double d5 = f3;
            Double.isNaN(d5);
            Double.isNaN(d5);
            double d6 = (d5 * dSin) + (d4 * dCos);
            double d7 = d4;
            double d8 = f6;
            Double.isNaN(d8);
            Double.isNaN(d8);
            double d9 = d6 / d8;
            double d10 = -f2;
            Double.isNaN(d10);
            Double.isNaN(d10);
            Double.isNaN(d5);
            Double.isNaN(d5);
            double d11 = (d5 * dCos) + (d10 * dSin);
            double d12 = f7;
            Double.isNaN(d12);
            Double.isNaN(d12);
            double d13 = d11 / d12;
            double d14 = d5;
            double d15 = f4;
            Double.isNaN(d15);
            Double.isNaN(d15);
            double d16 = f5;
            Double.isNaN(d16);
            Double.isNaN(d16);
            Double.isNaN(d8);
            Double.isNaN(d8);
            double d17 = ((d16 * dSin) + (d15 * dCos)) / d8;
            double d18 = -f4;
            Double.isNaN(d18);
            Double.isNaN(d18);
            Double.isNaN(d16);
            Double.isNaN(d16);
            Double.isNaN(d12);
            Double.isNaN(d12);
            double d19 = ((d16 * dCos) + (d18 * dSin)) / d12;
            double d20 = d9 - d17;
            double d21 = d13 - d19;
            double d22 = (d9 + d17) / 2.0d;
            double d23 = (d13 + d19) / 2.0d;
            double d24 = (d21 * d21) + (d20 * d20);
            if (d24 == 0.0d) {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d25 = (1.0d / d24) - 0.25d;
            if (d25 < 0.0d) {
                Log.w("PathParser", "Points are too far apart " + d24);
                float fSqrt = (float) (Math.sqrt(d24) / 1.99999d);
                a(path, f2, f3, f4, f5, f6 * fSqrt, f7 * fSqrt, f8, z2, z3);
                return;
            }
            double dSqrt = Math.sqrt(d25);
            double d26 = d20 * dSqrt;
            double d27 = dSqrt * d21;
            if (z2 == z3) {
                d2 = d22 - d27;
                d3 = d23 + d26;
            } else {
                d2 = d22 + d27;
                d3 = d23 - d26;
            }
            double dAtan2 = Math.atan2(d13 - d3, d9 - d2);
            double dAtan3 = Math.atan2(d19 - d3, d17 - d2) - dAtan2;
            int i2 = 0;
            if (z3 != (dAtan3 >= 0.0d)) {
                dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
            }
            Double.isNaN(d8);
            Double.isNaN(d8);
            double d28 = d2 * d8;
            Double.isNaN(d12);
            Double.isNaN(d12);
            double d29 = d3 * d12;
            double d30 = (d28 * dCos) - (d29 * dSin);
            double d31 = (d29 * dCos) + (d28 * dSin);
            int iCeil = (int) Math.ceil(Math.abs((dAtan3 * 4.0d) / 3.141592653589793d));
            double dCos2 = Math.cos(radians);
            double dSin2 = Math.sin(radians);
            double dCos3 = Math.cos(dAtan2);
            double dSin3 = Math.sin(dAtan2);
            Double.isNaN(d8);
            Double.isNaN(d8);
            double d32 = -d8;
            double d33 = d32 * dCos2;
            Double.isNaN(d12);
            Double.isNaN(d12);
            double d34 = d12 * dSin2;
            double d35 = (d33 * dSin3) - (d34 * dCos3);
            double d36 = d32 * dSin2;
            Double.isNaN(d12);
            Double.isNaN(d12);
            double d37 = d12 * dCos2;
            double d38 = (dCos3 * d37) + (dSin3 * d36);
            double d39 = iCeil;
            Double.isNaN(d39);
            Double.isNaN(d39);
            Double.isNaN(d39);
            double d40 = dAtan3 / d39;
            double d41 = dAtan2;
            while (i2 < iCeil) {
                double d42 = d41 + d40;
                double dSin4 = Math.sin(d42);
                double dCos4 = Math.cos(d42);
                Double.isNaN(d8);
                Double.isNaN(d8);
                double d43 = d40;
                double d44 = (((d8 * dCos2) * dCos4) + d30) - (d34 * dSin4);
                Double.isNaN(d8);
                Double.isNaN(d8);
                double d45 = d30;
                double d46 = (d37 * dSin4) + (d8 * dSin2 * dCos4) + d31;
                double d47 = (d33 * dSin4) - (d34 * dCos4);
                double d48 = (dCos4 * d37) + (dSin4 * d36);
                double d49 = d42 - d41;
                double dTan = Math.tan(d49 / 2.0d);
                double dSqrt2 = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d49)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d35 * dSqrt2) + d7), (float) ((d38 * dSqrt2) + d14), (float) (d44 - (dSqrt2 * d47)), (float) (d46 - (dSqrt2 * d48)), (float) d44, (float) d46);
                i2++;
                d37 = d37;
                d36 = d36;
                iCeil = iCeil;
                dCos2 = dCos2;
                d41 = d42;
                d8 = d8;
                d38 = d48;
                d35 = d47;
                d7 = d44;
                d14 = d46;
                d40 = d43;
                d30 = d45;
            }
        }

        public C0005a(C0005a c0005a) {
            this.f517a = c0005a.f517a;
            float[] fArr = c0005a.f518b;
            int length = fArr.length;
            if (length >= 0) {
                int iMin = Math.min(length, fArr.length);
                float[] fArr2 = new float[length];
                System.arraycopy(fArr, 0, fArr2, 0, iMin);
                this.f518b = fArr2;
                return;
            }
            throw new IllegalArgumentException();
        }
    }
}
