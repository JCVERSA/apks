package defpackage;

public final class lke extends i8e {
    public lke(fch fchVar, long j, long j2) {
        super(new d8e(), new jke(fchVar, null), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    public static int h(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
