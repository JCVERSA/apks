package defpackage;

import java.util.Hashtable;

public abstract class amb {
    public static final Hashtable a;

    static {
        Hashtable hashtable = new Hashtable();
        a = hashtable;
        hashtable.put("SHA-1", c35.d(128));
        hashtable.put("SHA-224", c35.d(192));
        hashtable.put("SHA-256", c35.d(256));
        hashtable.put("SHA-384", c35.d(256));
        hashtable.put("SHA-512", c35.d(256));
        hashtable.put("SHA-512/224", c35.d(192));
        hashtable.put("SHA-512/256", c35.d(256));
    }

    public static int a(sb2 sb2Var) {
        return ((Integer) a.get(sb2Var.c())).intValue();
    }

    public static int b(kx5 kx5Var) {
        String strC = kx5Var.c();
        return ((Integer) a.get(strC.substring(0, strC.indexOf("/")))).intValue();
    }

    public static byte[] c(sb2 sb2Var, byte[] bArr, int i) {
        int i2 = (i + 7) / 8;
        byte[] bArr2 = new byte[i2];
        int iG = i2 / sb2Var.g();
        int iG2 = sb2Var.g();
        byte[] bArr3 = new byte[iG2];
        int i3 = 1;
        int i4 = 0;
        for (int i5 = 0; i5 <= iG; i5++) {
            sb2Var.b((byte) i3);
            sb2Var.b((byte) (i >> 24));
            sb2Var.b((byte) (i >> 16));
            sb2Var.b((byte) (i >> 8));
            sb2Var.b((byte) i);
            sb2Var.update(bArr, 0, bArr.length);
            sb2Var.a(bArr3, 0);
            int i6 = i5 * iG2;
            int i7 = i2 - i6;
            if (i7 > iG2) {
                i7 = iG2;
            }
            System.arraycopy(bArr3, 0, bArr2, i6, i7);
            i3++;
        }
        int i8 = i % 8;
        if (i8 != 0) {
            int i9 = 8 - i8;
            int i10 = 0;
            while (i4 != i2) {
                int i11 = bArr2[i4] & 255;
                bArr2[i4] = (byte) ((i10 << (8 - i9)) | (i11 >>> i9));
                i4++;
                i10 = i11;
            }
        }
        return bArr2;
    }
}
