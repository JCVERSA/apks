package sd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.util.Collection;
import java.util.Map;
import java.util.regex.Pattern;

public abstract class q implements com.google.zxing.m {

    private static final Pattern f72026a = Pattern.compile("[0-9]+");

    protected static int b(boolean[] zArr, int i10, int[] iArr, boolean z10) {
        int i11 = 0;
        for (int i12 : iArr) {
            int i13 = 0;
            while (i13 < i12) {
                zArr[i10] = z10;
                i13++;
                i10++;
            }
            i11 += i12;
            z10 = !z10;
        }
        return i11;
    }

    protected static void c(String str) {
        if (!f72026a.matcher(str).matches()) {
            throw new IllegalArgumentException("Input should only contain digits 0-9");
        }
    }

    private static kd.b h(boolean[] zArr, int i10, int i11, int i12) {
        int length = zArr.length;
        int i13 = i12 + length;
        int iMax = Math.max(i10, i13);
        int iMax2 = Math.max(1, i11);
        int i14 = iMax / i13;
        int i15 = (iMax - (length * i14)) / 2;
        kd.b bVar = new kd.b(iMax, iMax2);
        int i16 = 0;
        while (i16 < length) {
            if (zArr[i16]) {
                bVar.s(i15, 0, i14, iMax2);
            }
            i16++;
            i15 += i14;
        }
        return bVar;
    }

    @Override
    public kd.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map map) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (i10 < 0 || i11 < 0) {
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i10 + 'x' + i11);
        }
        Collection collectionG = g();
        if (collectionG == null || collectionG.contains(barcodeFormat)) {
            int iF = f();
            if (map != null) {
                EncodeHintType encodeHintType = EncodeHintType.MARGIN;
                if (map.containsKey(encodeHintType)) {
                    iF = Integer.parseInt(map.get(encodeHintType).toString());
                }
            }
            return h(e(str, map), i10, i11, iF);
        }
        throw new IllegalArgumentException("Can only encode " + collectionG + ", but got " + barcodeFormat);
    }

    public abstract boolean[] d(String str);

    public boolean[] e(String str, Map map) {
        return d(str);
    }

    public int f() {
        return 10;
    }

    protected Collection g() {
        return null;
    }
}
