package defpackage;

public abstract class bmb {
    public static String a(byte[] bArr) {
        return new rv3(bArr).toString();
    }

    public static boolean b(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return !b(bArr, bArr);
        }
        int i = 0;
        for (int i2 = 0; i2 != bArr.length; i2++) {
            i |= bArr[i2] ^ bArr2[i2];
        }
        return i == 0;
    }

    public static String c(String str, String str2, dj djVar) {
        byte[] encoded;
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        if (djVar instanceof bqc) {
            encoded = ((bqc) djVar).getEncoded();
        } else if (djVar instanceof f63) {
            encoded = ((f63) djVar).getEncoded();
        } else {
            encoded = djVar instanceof xpc ? ((xpc) djVar).getEncoded() : ((c63) djVar).getEncoded();
        }
        stringBuffer.append(str2);
        stringBuffer.append(" ");
        stringBuffer.append(str);
        stringBuffer.append(" [");
        stringBuffer.append(a(encoded));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("    public data: ");
        stringBuffer.append(jp4.f(encoded));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }
}
