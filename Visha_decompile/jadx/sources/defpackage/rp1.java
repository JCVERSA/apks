package defpackage;

public class rp1 extends c1 {
    public rp1(String str) {
        super(str);
    }

    public final byte[] I() {
        byte[] bArr = this.b;
        if (bArr[bArr.length - 1] != 90) {
            return bArr;
        }
        if (!E()) {
            byte[] bArr2 = this.b;
            byte[] bArr3 = new byte[bArr2.length + 4];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length - 1);
            System.arraycopy(u0a.e("0000Z"), 0, bArr3, this.b.length - 1, 5);
            return bArr3;
        }
        if (!F()) {
            byte[] bArr4 = this.b;
            byte[] bArr5 = new byte[bArr4.length + 2];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length - 1);
            System.arraycopy(u0a.e("00Z"), 0, bArr5, this.b.length - 1, 3);
            return bArr5;
        }
        if (!D()) {
            return this.b;
        }
        int length = this.b.length - 2;
        while (length > 0 && this.b[length] == 48) {
            length--;
        }
        byte[] bArr6 = this.b;
        if (bArr6[length] == 46) {
            byte[] bArr7 = new byte[length + 1];
            System.arraycopy(bArr6, 0, bArr7, 0, length);
            bArr7[length] = 90;
            return bArr7;
        }
        byte[] bArr8 = new byte[length + 2];
        int i = length + 1;
        System.arraycopy(bArr6, 0, bArr8, 0, i);
        bArr8[i] = 90;
        return bArr8;
    }

    @Override
    public void n(o1 o1Var, boolean z) {
        o1Var.o(z, 24, I());
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, I().length);
    }

    @Override
    public p1 u() {
        return this;
    }

    @Override
    public p1 v() {
        return this;
    }

    public rp1(byte[] bArr) {
        super(bArr);
    }
}
