package id;

import android.content.Intent;
import com.google.zxing.BarcodeFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

public abstract class f {

    private static final Pattern f62055a = Pattern.compile(",");

    static final Set f62056b;

    static final Set f62057c;

    private static final Set f62058d;

    static final Set f62059e;

    static final Set f62060f;

    static final Set f62061g;

    static final Set f62062h;

    private static final Map f62063i;

    static {
        EnumSet enumSetOf = EnumSet.of(BarcodeFormat.QR_CODE);
        f62059e = enumSetOf;
        EnumSet enumSetOf2 = EnumSet.of(BarcodeFormat.DATA_MATRIX);
        f62060f = enumSetOf2;
        EnumSet enumSetOf3 = EnumSet.of(BarcodeFormat.AZTEC);
        f62061g = enumSetOf3;
        EnumSet enumSetOf4 = EnumSet.of(BarcodeFormat.PDF_417);
        f62062h = enumSetOf4;
        EnumSet enumSetOf5 = EnumSet.of(BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.EAN_13, BarcodeFormat.EAN_8, BarcodeFormat.RSS_14, BarcodeFormat.RSS_EXPANDED);
        f62056b = enumSetOf5;
        EnumSet enumSetOf6 = EnumSet.of(BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.ITF, BarcodeFormat.CODABAR);
        f62057c = enumSetOf6;
        EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) enumSetOf5);
        f62058d = enumSetCopyOf;
        enumSetCopyOf.addAll(enumSetOf6);
        HashMap map = new HashMap();
        f62063i = map;
        map.put("ONE_D_MODE", enumSetCopyOf);
        map.put("PRODUCT_MODE", enumSetOf5);
        map.put("QR_CODE_MODE", enumSetOf);
        map.put("DATA_MATRIX_MODE", enumSetOf2);
        map.put("AZTEC_MODE", enumSetOf3);
        map.put("PDF417_MODE", enumSetOf4);
    }

    public static Set a(Intent intent) {
        String stringExtra = intent.getStringExtra("SCAN_FORMATS");
        return b(stringExtra != null ? Arrays.asList(f62055a.split(stringExtra)) : null, intent.getStringExtra("SCAN_MODE"));
    }

    private static Set b(Iterable iterable, String str) {
        if (iterable != null) {
            EnumSet enumSetNoneOf = EnumSet.noneOf(BarcodeFormat.class);
            try {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    enumSetNoneOf.add(BarcodeFormat.valueOf((String) it.next()));
                }
                return enumSetNoneOf;
            } catch (IllegalArgumentException unused) {
            }
        }
        if (str != null) {
            return (Set) f62063i.get(str);
        }
        return null;
    }
}
