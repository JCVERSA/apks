package defpackage;

public class w64 implements cw0 {
    public static final short[] h;
    public static final short[] i;
    public static final short[] j;
    public static final w64 k;
    public static final w64 l;
    public static final w64 m;
    public static final w64 n;
    public static final w64 o;
    public static final w64 p;
    public final String b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final s64 g;

    static {
        short[] sArr = {4643, 13363, 20579, 25843, 29227, 31145, 32103, 32525, 32689, 32745, 32762, 32766, Short.MAX_VALUE};
        h = sArr;
        short[] sArr2 = {5638, 15915, 23689, 28571, 31116, 32217, 32613, 32731, 32760, 32766, Short.MAX_VALUE};
        i = sArr2;
        short[] sArr3 = {9142, 23462, 30338, 32361, 32725, 32765, Short.MAX_VALUE};
        j = sArr3;
        k = new w64("frodokem640aes", 640, 15, 2, sArr, new yx8(128), new u64.a(640, 32768));
        l = new w64("frodokem640shake", 640, 15, 2, sArr, new yx8(128), new u64.b(640, 32768));
        m = new w64("frodokem976aes", 976, 16, 3, sArr2, new yx8(256), new u64.a(976, 65536));
        n = new w64("frodokem976shake", 976, 16, 3, sArr2, new yx8(256), new u64.b(976, 65536));
        o = new w64("frodokem1344aes", 1344, 16, 4, sArr3, new yx8(256), new u64.a(1344, 65536));
        p = new w64("frodokem1344shake", 1344, 16, 4, sArr3, new yx8(256), new u64.b(1344, 65536));
    }

    public w64(String str, int i2, int i3, int i4, short[] sArr, csc cscVar, u64 u64Var) {
        this.b = str;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i4 * 64;
        this.g = new s64(i2, i3, i4, sArr, cscVar, u64Var);
    }

    public String a() {
        return this.b;
    }
}
