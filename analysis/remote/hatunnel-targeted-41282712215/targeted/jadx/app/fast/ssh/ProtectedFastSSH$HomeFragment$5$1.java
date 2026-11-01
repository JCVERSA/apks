package app.fast.ssh;

import java.util.Arrays;

public class ProtectedFastSSH$HomeFragment$5$1 {
    private final byte[] Gy;
    private int suH;

    public ProtectedFastSSH$HomeFragment$5$1(byte[] bArr) {
        this.Gy = bArr;
        this.suH = 0;
    }

    public ProtectedFastSSH$HomeFragment$5$1(byte[] bArr, int i) {
        this.Gy = bArr;
        this.suH = i;
    }

    void Cc(byte[] bArr, int i) {
        System.arraycopy(bArr, 0, this.Gy, this.suH + i, bArr.length);
    }

    void m(int i, byte b) {
        this.Gy[this.suH + i] = b;
    }

    public void r(int i, int i2) {
        byte[] bArr = this.Gy;
        int i3 = this.suH;
        Arrays.fill(bArr, i3, i3 + i2, (byte) i);
    }

    int tks(int i) {
        return ProtectedFastSSH$ExportActivity$2$8.rj(this.Gy[this.suH + i]);
    }

    public ProtectedFastSSH$HomeFragment$5$1 uiGk(int i) {
        return new ProtectedFastSSH$HomeFragment$5$1(this.Gy, this.suH + i);
    }

    byte[] xzy(int i, int i2) {
        byte[] bArr = new byte[i2];
        System.arraycopy(this.Gy, this.suH + i, bArr, 0, i2);
        return bArr;
    }

    byte yp(int i) {
        return this.Gy[this.suH + i];
    }

    public void zc(int i) {
        this.suH += i;
    }
}
