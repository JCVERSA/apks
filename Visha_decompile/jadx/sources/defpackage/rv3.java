package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class rv3 {
    public static char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public final byte[] a;

    public rv3(byte[] bArr) {
        this(bArr, 160);
    }

    public static byte[] a(byte[] bArr, int i) {
        if (i % 8 != 0) {
            throw new IllegalArgumentException("bitLength must be a multiple of 8");
        }
        yx8 yx8Var = new yx8(256);
        yx8Var.update(bArr, 0, bArr.length);
        int i2 = i / 8;
        byte[] bArr2 = new byte[i2];
        yx8Var.f(bArr2, 0, i2);
        return bArr2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof rv3) {
            return ci.b(((rv3) obj).a, this.a);
        }
        return false;
    }

    public int hashCode() {
        return ci.v(this.a);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i != this.a.length; i++) {
            if (i > 0) {
                stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            }
            stringBuffer.append(b[(this.a[i] >>> 4) & 15]);
            stringBuffer.append(b[this.a[i] & 15]);
        }
        return stringBuffer.toString();
    }

    public rv3(byte[] bArr, int i) {
        this.a = a(bArr, i);
    }
}
