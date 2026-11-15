package defpackage;

import org.mozilla.classfile.ClassFileWriter;

public final class ww0 {
    public String a;
    public String b;
    public short c;
    public short d;
    public short e;
    public byte[] f;

    public ww0(String str, short s, String str2, short s2, short s3) {
        this.a = str;
        this.c = s;
        this.b = str2;
        this.d = s2;
        this.e = s3;
    }

    public short a() {
        return this.e;
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public int d() {
        return this.f.length + 8;
    }

    public void e(byte[] bArr) {
        this.f = bArr;
    }

    public int f(byte[] bArr, int i) {
        int iPutInt16 = ClassFileWriter.putInt16(1, bArr, ClassFileWriter.putInt16(this.d, bArr, ClassFileWriter.putInt16(this.c, bArr, ClassFileWriter.putInt16(this.e, bArr, i))));
        byte[] bArr2 = this.f;
        System.arraycopy(bArr2, 0, bArr, iPutInt16, bArr2.length);
        return iPutInt16 + this.f.length;
    }
}
