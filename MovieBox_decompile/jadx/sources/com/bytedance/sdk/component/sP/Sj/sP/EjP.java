package com.bytedance.sdk.component.sP.Sj.sP;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;

public class EjP implements Serializable, Comparable<EjP> {
    final byte[] EjP;
    transient int HiB;
    transient String vS;
    static final char[] Sj = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final Charset sP = Charset.forName("UTF-8");
    public static final EjP TKC = Sj(new byte[0]);

    EjP(byte[] bArr) {
        this.EjP = bArr;
    }

    public static EjP Sj(byte... bArr) {
        if (bArr != null) {
            return new EjP((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public byte[] EjP() {
        return (byte[]) this.EjP.clone();
    }

    public int TKC() {
        return this.EjP.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof EjP) {
            EjP ejP = (EjP) obj;
            int iTKC = ejP.TKC();
            byte[] bArr = this.EjP;
            if (iTKC == bArr.length && ejP.Sj(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i10 = this.HiB;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Arrays.hashCode(this.EjP);
        this.HiB = iHashCode;
        return iHashCode;
    }

    public String sP() {
        byte[] bArr = this.EjP;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = Sj;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public String toString() {
        if (this.EjP.length == 0) {
            return "[size=0]";
        }
        String strSj = Sj();
        int iSj = Sj(strSj, 64);
        if (iSj == -1) {
            if (this.EjP.length <= 64) {
                return "[hex=" + sP() + "]";
            }
            return "[size=" + this.EjP.length + " hex=" + Sj(0, 64).sP() + "…]";
        }
        String strReplace = strSj.substring(0, iSj).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iSj >= strSj.length()) {
            return "[text=" + strReplace + "]";
        }
        return "[size=" + this.EjP.length + " text=" + strReplace + "…]";
    }

    public String Sj() {
        String str = this.vS;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.EjP, sP);
        this.vS = str2;
        return str2;
    }

    public EjP Sj(int i10, int i11) {
        if (i10 >= 0) {
            byte[] bArr = this.EjP;
            if (i11 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.EjP.length + ")");
            }
            int i12 = i11 - i10;
            if (i12 >= 0) {
                if (i10 == 0 && i11 == bArr.length) {
                    return this;
                }
                byte[] bArr2 = new byte[i12];
                System.arraycopy(bArr, i10, bArr2, 0, i12);
                return new EjP(bArr2);
            }
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public byte Sj(int i10) {
        return this.EjP[i10];
    }

    public boolean Sj(int i10, EjP ejP, int i11, int i12) {
        return ejP.Sj(i11, this.EjP, i10, i12);
    }

    public boolean Sj(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0) {
            return false;
        }
        byte[] bArr2 = this.EjP;
        return i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && uA.Sj(bArr2, i10, bArr, i11, i12);
    }

    @Override
    public int compareTo(EjP ejP) {
        int iTKC = TKC();
        int iTKC2 = ejP.TKC();
        int iMin = Math.min(iTKC, iTKC2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iSj = Sj(i10) & 255;
            int iSj2 = ejP.Sj(i10) & 255;
            if (iSj != iSj2) {
                return iSj < iSj2 ? -1 : 1;
            }
        }
        if (iTKC == iTKC2) {
            return 0;
        }
        return iTKC < iTKC2 ? -1 : 1;
    }

    static int Sj(String str, int i10) {
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
