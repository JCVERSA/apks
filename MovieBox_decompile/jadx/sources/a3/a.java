package a3;

import androidx.media3.common.util.j0;

public final class a extends b {

    public final long f85a;

    public final long f86b;

    public final byte[] f87c;

    private a(long j10, byte[] bArr, long j11) {
        this.f85a = j11;
        this.f86b = j10;
        this.f87c = bArr;
    }

    static a b(j0 j0Var, int i10, long j10) {
        long J = j0Var.J();
        int i11 = i10 - 4;
        byte[] bArr = new byte[i11];
        j0Var.l(bArr, 0, i11);
        return new a(J, bArr, j10);
    }

    @Override
    public String toString() {
        return "SCTE-35 PrivateCommand { ptsAdjustment=" + this.f85a + ", identifier= " + this.f86b + " }";
    }
}
