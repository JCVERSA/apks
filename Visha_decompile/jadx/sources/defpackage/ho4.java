package defpackage;

import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.util.Hashtable;

public class ho4 implements ky8 {
    public static final byte[] h = {1};
    public static final Hashtable i;
    public sb2 a;
    public byte[] b;
    public byte[] c;
    public long d;
    public ab3 e;
    public int f;
    public int g;

    static {
        Hashtable hashtable = new Hashtable();
        i = hashtable;
        hashtable.put("SHA-1", c35.d(TranSceneConfig.SCENE_TYPE_GAME_FF));
        hashtable.put("SHA-224", c35.d(TranSceneConfig.SCENE_TYPE_GAME_FF));
        hashtable.put("SHA-256", c35.d(TranSceneConfig.SCENE_TYPE_GAME_FF));
        hashtable.put("SHA-512/256", c35.d(TranSceneConfig.SCENE_TYPE_GAME_FF));
        hashtable.put("SHA-512/224", c35.d(TranSceneConfig.SCENE_TYPE_GAME_FF));
        hashtable.put("SHA-384", c35.d(888));
        hashtable.put("SHA-512", c35.d(888));
    }

    public ho4(sb2 sb2Var, int i2, ab3 ab3Var, byte[] bArr, byte[] bArr2) {
        if (i2 > amb.a(sb2Var)) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (ab3Var.c() < i2) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        this.a = sb2Var;
        this.e = ab3Var;
        this.f = i2;
        this.g = ((Integer) i.get(sb2Var.c())).intValue();
        byte[] bArrC = amb.c(this.a, ci.l(e(), bArr2, bArr), this.g);
        this.b = bArrC;
        byte[] bArr3 = new byte[bArrC.length + 1];
        System.arraycopy(bArrC, 0, bArr3, 1, bArrC.length);
        this.c = amb.c(this.a, bArr3, this.g);
        this.d = 1L;
    }

    private byte[] e() {
        byte[] bArrB = this.e.b();
        if (bArrB.length >= (this.f + 7) / 8) {
            return bArrB;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    @Override
    public int a(byte[] bArr, byte[] bArr2, boolean z) {
        int length = bArr.length * 8;
        if (length > 262144) {
            throw new IllegalArgumentException("Number of bits per request limited to 262144");
        }
        if (this.d > 140737488355328L) {
            return -1;
        }
        if (z) {
            b(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            byte[] bArr3 = this.b;
            byte[] bArr4 = new byte[bArr3.length + 1 + bArr2.length];
            bArr4[0] = 2;
            System.arraycopy(bArr3, 0, bArr4, 1, bArr3.length);
            System.arraycopy(bArr2, 0, bArr4, this.b.length + 1, bArr2.length);
            c(this.b, f(bArr4));
        }
        byte[] bArrG = g(this.b, length);
        byte[] bArr5 = this.b;
        byte[] bArr6 = new byte[bArr5.length + 1];
        System.arraycopy(bArr5, 0, bArr6, 1, bArr5.length);
        bArr6[0] = 3;
        c(this.b, f(bArr6));
        c(this.b, this.c);
        long j = this.d;
        c(this.b, new byte[]{(byte) (j >> 24), (byte) (j >> 16), (byte) (j >> 8), (byte) j});
        this.d++;
        System.arraycopy(bArrG, 0, bArr, 0, bArr.length);
        return length;
    }

    @Override
    public void b(byte[] bArr) {
        byte[] bArrC = amb.c(this.a, ci.m(h, this.b, e(), bArr), this.g);
        this.b = bArrC;
        byte[] bArr2 = new byte[bArrC.length + 1];
        bArr2[0] = 0;
        System.arraycopy(bArrC, 0, bArr2, 1, bArrC.length);
        this.c = amb.c(this.a, bArr2, this.g);
        this.d = 1L;
    }

    public final void c(byte[] bArr, byte[] bArr2) {
        int i2 = 0;
        for (int i3 = 1; i3 <= bArr2.length; i3++) {
            int i4 = (bArr[bArr.length - i3] & 255) + (bArr2[bArr2.length - i3] & 255) + i2;
            i2 = i4 > 255 ? 1 : 0;
            bArr[bArr.length - i3] = (byte) i4;
        }
        for (int length = bArr2.length + 1; length <= bArr.length; length++) {
            int i5 = (bArr[bArr.length - length] & 255) + i2;
            i2 = i5 > 255 ? 1 : 0;
            bArr[bArr.length - length] = (byte) i5;
        }
    }

    public final void d(byte[] bArr, byte[] bArr2) {
        this.a.update(bArr, 0, bArr.length);
        this.a.a(bArr2, 0);
    }

    public final byte[] f(byte[] bArr) {
        byte[] bArr2 = new byte[this.a.g()];
        d(bArr, bArr2);
        return bArr2;
    }

    public final byte[] g(byte[] bArr, int i2) {
        int i3 = i2 / 8;
        int iG = i3 / this.a.g();
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        byte[] bArr3 = new byte[i3];
        int iG2 = this.a.g();
        byte[] bArr4 = new byte[iG2];
        for (int i4 = 0; i4 <= iG; i4++) {
            d(bArr2, bArr4);
            int i5 = i4 * iG2;
            int i6 = i3 - i5;
            if (i6 > iG2) {
                i6 = iG2;
            }
            System.arraycopy(bArr4, 0, bArr3, i5, i6);
            c(bArr2, h);
        }
        return bArr3;
    }
}
