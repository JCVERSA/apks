package com.mbridge.msdk.thrid.okio;

import com.transsion.api.gateway.utils.EncoderUtil;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class f implements Serializable, Comparable<f> {

    static final char[] f37602d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final f f37603e = a(new byte[0]);

    final byte[] f37604a;

    transient int f37605b;

    transient String f37606c;

    f(byte[] bArr) {
        this.f37604a = bArr;
    }

    public static f a(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    private f b(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.f37604a));
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static f c(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        f fVar = new f(str.getBytes(u.f37647a));
        fVar.f37606c = str;
        return fVar;
    }

    public f d() {
        return b(EncoderUtil.ALGORITHM_SHA_256);
    }

    public int e() {
        return this.f37604a.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            int iE = fVar.e();
            byte[] bArr = this.f37604a;
            if (iE == bArr.length && fVar.a(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public f f() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f37604a;
            if (i10 >= bArr.length) {
                return this;
            }
            byte b10 = bArr[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < bArr2.length; i11++) {
                    byte b11 = bArr2[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        bArr2[i11] = (byte) (b11 + 32);
                    }
                }
                return new f(bArr2);
            }
            i10++;
        }
    }

    public byte[] g() {
        return (byte[]) this.f37604a.clone();
    }

    public String h() {
        String str = this.f37606c;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f37604a, u.f37647a);
        this.f37606c = str2;
        return str2;
    }

    public int hashCode() {
        int i10 = this.f37605b;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Arrays.hashCode(this.f37604a);
        this.f37605b = iHashCode;
        return iHashCode;
    }

    public String toString() {
        StringBuilder sb2;
        if (this.f37604a.length == 0) {
            return "[size=0]";
        }
        String strH = h();
        int iA = a(strH, 64);
        if (iA == -1) {
            if (this.f37604a.length <= 64) {
                return "[hex=" + b() + "]";
            }
            return "[size=" + this.f37604a.length + " hex=" + a(0, 64).b() + "…]";
        }
        String strReplace = strH.substring(0, iA).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iA < strH.length()) {
            sb2 = new StringBuilder();
            sb2.append("[size=");
            sb2.append(this.f37604a.length);
            sb2.append(" text=");
            sb2.append(strReplace);
            sb2.append("…]");
        } else {
            sb2 = new StringBuilder();
            sb2.append("[text=");
            sb2.append(strReplace);
            sb2.append("]");
        }
        return sb2.toString();
    }

    public String a() {
        return b.a(this.f37604a);
    }

    public String b() {
        byte[] bArr = this.f37604a;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = f37602d;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public static f a(String str) {
        if (str != null) {
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = i10 * 2;
                    bArr[i10] = (byte) ((a(str.charAt(i11)) << 4) + a(str.charAt(i11 + 1)));
                }
                return a(bArr);
            }
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        throw new IllegalArgumentException("hex == null");
    }

    public f c() {
        return b(EncoderUtil.ALGORITHM_SHA_1);
    }

    public final boolean b(f fVar) {
        return a(0, fVar, 0, fVar.e());
    }

    private static int a(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        if (c10 >= 'a' && c10 <= 'f') {
            return c10 - 'W';
        }
        if (c10 >= 'A' && c10 <= 'F') {
            return c10 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c10);
    }

    public f a(int i10, int i11) {
        if (i10 >= 0) {
            byte[] bArr = this.f37604a;
            if (i11 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.f37604a.length + ")");
            }
            int i12 = i11 - i10;
            if (i12 >= 0) {
                if (i10 == 0 && i11 == bArr.length) {
                    return this;
                }
                byte[] bArr2 = new byte[i12];
                System.arraycopy(bArr, i10, bArr2, 0, i12);
                return new f(bArr2);
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public byte a(int i10) {
        return this.f37604a[i10];
    }

    void a(c cVar) {
        byte[] bArr = this.f37604a;
        cVar.write(bArr, 0, bArr.length);
    }

    public boolean a(int i10, f fVar, int i11, int i12) {
        return fVar.a(i11, this.f37604a, i10, i12);
    }

    public boolean a(int i10, byte[] bArr, int i11, int i12) {
        if (i10 >= 0) {
            byte[] bArr2 = this.f37604a;
            if (i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && u.a(bArr2, i10, bArr, i11, i12)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int compareTo(f fVar) {
        int iE = e();
        int iE2 = fVar.e();
        int iMin = Math.min(iE, iE2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iA = a(i10) & 255;
            int iA2 = fVar.a(i10) & 255;
            if (iA != iA2) {
                return iA < iA2 ? -1 : 1;
            }
        }
        if (iE == iE2) {
            return 0;
        }
        return iE < iE2 ? -1 : 1;
    }

    static int a(String str, int i10) {
        int length = str.length();
        int iCharCount = 0;
        int i11 = 0;
        while (iCharCount < length) {
            if (i11 == i10) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i11++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }
}
