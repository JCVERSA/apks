package defpackage;

public abstract class rdb extends qdb {
    public static String a(byte[] bArr) {
        String strY0;
        return (bArr == null || (strY0 = i81.y0(aeb.b(bArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strY0;
    }

    public static String b(int[] iArr) {
        String strY0;
        return (iArr == null || (strY0 = i81.y0(leb.b(iArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strY0;
    }

    public static String c(short[] sArr) {
        String strY0;
        return (sArr == null || (strY0 = i81.y0(cfb.b(sArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strY0;
    }

    public static String d(long[] jArr) {
        String strY0;
        return (jArr == null || (strY0 = i81.y0(reb.b(jArr), ", ", "[", "]", 0, null, null, 56, null)) == null) ? "null" : strY0;
    }
}
