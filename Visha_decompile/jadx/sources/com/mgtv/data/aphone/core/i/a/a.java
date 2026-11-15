package com.mgtv.data.aphone.core.i.a;

public class a {
    public short a;
    public byte b;
    public int c = -1;

    public a(byte b, int i) {
        this.a = (short) i;
        this.b = b;
    }

    public static a a(byte[] bArr) {
        a aVar = new a(bArr[0], com.hunantv.imgo.log.a.a(bArr, 1));
        aVar.c = com.hunantv.imgo.log.a.b(bArr, 3);
        return aVar;
    }

    public static int c() {
        return 7;
    }

    public boolean b() {
        return this.a >= 0 && this.c == -1;
    }

    public String toString() {
        return "ProtocolStruct [length=" + ((int) this.a) + ", cmd=" + ((int) this.b) + ", eof=" + this.c + "]";
    }

    public byte[] a() {
        byte[] bArr = new byte[c()];
        bArr[0] = this.b;
        com.hunantv.imgo.log.a.a(bArr, this.a, 1);
        com.hunantv.imgo.log.a.a(bArr, -1, 3);
        return bArr;
    }
}
