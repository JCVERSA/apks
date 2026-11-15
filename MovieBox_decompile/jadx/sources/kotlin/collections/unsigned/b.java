package kotlin.collections.unsigned;

import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.collections.CollectionsKt;

public class b extends a {
    public static String a(byte[] bArr) {
        String strS0;
        return (bArr == null || (strS0 = CollectionsKt.s0(UByteArray.a(bArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strS0;
    }

    public static String b(int[] iArr) {
        String strS0;
        return (iArr == null || (strS0 = CollectionsKt.s0(UIntArray.a(iArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strS0;
    }

    public static String c(short[] sArr) {
        String strS0;
        return (sArr == null || (strS0 = CollectionsKt.s0(UShortArray.a(sArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strS0;
    }

    public static String d(long[] jArr) {
        String strS0;
        return (jArr == null || (strS0 = CollectionsKt.s0(ULongArray.a(jArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strS0;
    }
}
