package defpackage;

import org.mozilla.classfile.ClassFileWriter;

public final class vw0 {
    public short a;
    public short b;
    public short c;
    public boolean d = false;
    public short e;
    public short f;
    public short g;
    public int h;

    public vw0(short s, short s2, short s3) {
        this.a = s;
        this.b = s2;
        this.c = s3;
    }

    public int a() {
        return !this.d ? 8 : 16;
    }

    public void b(short s, short s2, short s3, int i) {
        this.d = true;
        this.e = s;
        this.f = s2;
        this.g = s3;
        this.h = i;
    }

    public int c(byte[] bArr, int i) {
        int iPutInt16 = ClassFileWriter.putInt16(this.b, bArr, ClassFileWriter.putInt16(this.a, bArr, ClassFileWriter.putInt16(this.c, bArr, i)));
        if (!this.d) {
            return ClassFileWriter.putInt16(0, bArr, iPutInt16);
        }
        return ClassFileWriter.putInt16(this.h, bArr, ClassFileWriter.putInt16(this.g, bArr, ClassFileWriter.putInt16(this.f, bArr, ClassFileWriter.putInt16(this.e, bArr, ClassFileWriter.putInt16(1, bArr, iPutInt16)))));
    }
}
