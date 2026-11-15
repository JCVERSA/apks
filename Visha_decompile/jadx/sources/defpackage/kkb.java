package defpackage;

public abstract class kkb {
    public static final byte[] a(String[] strArr) {
        y45.j(strArr, "strings");
        int length = 0;
        for (String str : strArr) {
            length += str.length();
        }
        byte[] bArr = new byte[length];
        int i = 0;
        for (String str2 : strArr) {
            int length2 = str2.length();
            int i2 = 0;
            while (i2 < length2) {
                bArr[i] = (byte) str2.charAt(i2);
                i2++;
                i++;
            }
        }
        return bArr;
    }
}
