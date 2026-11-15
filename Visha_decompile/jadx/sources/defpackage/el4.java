package defpackage;

import java.util.Hashtable;

public class el4 implements kx5 {
    public static Hashtable h;
    public sb2 a;
    public int b;
    public int c;
    public en6 d;
    public en6 e;
    public byte[] f;
    public byte[] g;

    static {
        Hashtable hashtable = new Hashtable();
        h = hashtable;
        hashtable.put("GOST3411", c35.d(32));
        h.put("MD2", c35.d(16));
        h.put("MD4", c35.d(64));
        h.put("MD5", c35.d(64));
        h.put("RIPEMD128", c35.d(64));
        h.put("RIPEMD160", c35.d(64));
        h.put("SHA-1", c35.d(64));
        h.put("SHA-224", c35.d(64));
        h.put("SHA-256", c35.d(64));
        h.put("SHA-384", c35.d(128));
        h.put("SHA-512", c35.d(128));
        h.put("Tiger", c35.d(64));
        h.put("Whirlpool", c35.d(64));
    }

    public el4(sb2 sb2Var) {
        this(sb2Var, f(sb2Var));
    }

    public static int f(sb2 sb2Var) {
        if (sb2Var instanceof zj3) {
            return ((zj3) sb2Var).h();
        }
        Integer num = (Integer) h.get(sb2Var.c());
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException("unknown digest passed: " + sb2Var.c());
    }

    public static void h(byte[] bArr, int i, byte b) {
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (bArr[i2] ^ b);
        }
    }

    @Override
    public int a(byte[] bArr, int i) {
        this.a.a(this.g, this.c);
        en6 en6Var = this.e;
        if (en6Var != null) {
            ((en6) this.a).e(en6Var);
            sb2 sb2Var = this.a;
            sb2Var.update(this.g, this.c, sb2Var.g());
        } else {
            sb2 sb2Var2 = this.a;
            byte[] bArr2 = this.g;
            sb2Var2.update(bArr2, 0, bArr2.length);
        }
        int iA = this.a.a(bArr, i);
        int i2 = this.c;
        while (true) {
            byte[] bArr3 = this.g;
            if (i2 >= bArr3.length) {
                break;
            }
            bArr3[i2] = 0;
            i2++;
        }
        en6 en6Var2 = this.d;
        if (en6Var2 != null) {
            ((en6) this.a).e(en6Var2);
        } else {
            sb2 sb2Var3 = this.a;
            byte[] bArr4 = this.f;
            sb2Var3.update(bArr4, 0, bArr4.length);
        }
        return iA;
    }

    @Override
    public void b(byte b) {
        this.a.b(b);
    }

    @Override
    public String c() {
        return this.a.c() + "/HMAC";
    }

    @Override
    public int d() {
        return this.b;
    }

    @Override
    public void e(cw0 cw0Var) {
        byte[] bArr;
        this.a.reset();
        byte[] bArrA = ((sf5) cw0Var).a();
        int length = bArrA.length;
        if (length > this.c) {
            this.a.update(bArrA, 0, length);
            this.a.a(this.f, 0);
            length = this.b;
        } else {
            System.arraycopy(bArrA, 0, this.f, 0, length);
        }
        while (true) {
            bArr = this.f;
            if (length >= bArr.length) {
                break;
            }
            bArr[length] = 0;
            length++;
        }
        System.arraycopy(bArr, 0, this.g, 0, this.c);
        h(this.f, this.c, (byte) 54);
        h(this.g, this.c, (byte) 92);
        sb2 sb2Var = this.a;
        if (sb2Var instanceof en6) {
            en6 en6VarD = ((en6) sb2Var).d();
            this.e = en6VarD;
            ((sb2) en6VarD).update(this.g, 0, this.c);
        }
        sb2 sb2Var2 = this.a;
        byte[] bArr2 = this.f;
        sb2Var2.update(bArr2, 0, bArr2.length);
        sb2 sb2Var3 = this.a;
        if (sb2Var3 instanceof en6) {
            this.d = ((en6) sb2Var3).d();
        }
    }

    public sb2 g() {
        return this.a;
    }

    @Override
    public void update(byte[] bArr, int i, int i2) {
        this.a.update(bArr, i, i2);
    }

    public el4(sb2 sb2Var, int i) {
        this.a = sb2Var;
        int iG = sb2Var.g();
        this.b = iG;
        this.c = i;
        this.f = new byte[i];
        this.g = new byte[i + iG];
    }
}
