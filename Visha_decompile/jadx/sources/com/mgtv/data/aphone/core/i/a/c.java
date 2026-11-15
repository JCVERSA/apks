package com.mgtv.data.aphone.core.i.a;

public class c {
    public a a;
    public byte[] b;

    public c(a aVar, byte[] bArr) {
        this.b = bArr;
        this.a = aVar;
    }

    public byte[] a() {
        byte[] bArr;
        byte[] bArrA = this.a.a();
        byte[] bArr2 = this.b;
        int i = 0;
        if (bArr2 != null) {
            bArr = new byte[bArr2.length + bArrA.length];
            int i2 = 0;
            int i3 = 0;
            while (i2 < bArrA.length) {
                bArr[i3] = bArrA[i2];
                i2++;
                i3++;
            }
            while (true) {
                byte[] bArr3 = this.b;
                if (i >= bArr3.length) {
                    break;
                }
                bArr[i3] = bArr3[i];
                i++;
                i3++;
            }
        } else {
            bArr = new byte[bArrA.length];
            int i4 = 0;
            while (i < bArrA.length) {
                bArr[i4] = bArrA[i];
                i++;
                i4++;
            }
        }
        return bArr;
    }
}
