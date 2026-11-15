package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;
import java.util.zip.ZipException;

public class o extends PKWareExtraHeader {

    private int f68008d;

    private PKWareExtraHeader.EncryptionAlgorithm f68009e;

    private int f68010f;

    private int f68011g;

    private long f68012h;

    private PKWareExtraHeader.HashAlgorithm f68013i;

    private int f68014j;

    private byte[] f68015k;

    private byte[] f68016l;

    private byte[] f68017m;

    private byte[] f68018n;

    private byte[] f68019o;

    private byte[] f68020p;

    public o() {
        super(new ZipShort(23));
    }

    private void d(String str, int i10, int i11, int i12) throws ZipException {
        if (i11 + i10 <= i12) {
            return;
        }
        throw new ZipException("Invalid X0017_StrongEncryptionHeader: " + str + " " + i10 + " doesn't fit into " + i12 + " bytes of data at position " + i11);
    }

    public void e(byte[] bArr, int i10, int i11) throws ZipException {
        a(12, i11);
        this.f68008d = ZipShort.getValue(bArr, i10);
        this.f68009e = PKWareExtraHeader.EncryptionAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i10 + 2));
        this.f68010f = ZipShort.getValue(bArr, i10 + 4);
        this.f68011g = ZipShort.getValue(bArr, i10 + 6);
        long value = ZipLong.getValue(bArr, i10 + 8);
        this.f68012h = value;
        if (value > 0) {
            a(16, i11);
            this.f68013i = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i10 + 12));
            this.f68014j = ZipShort.getValue(bArr, i10 + 14);
            for (long j10 = 0; j10 < this.f68012h; j10++) {
                for (int i12 = 0; i12 < this.f68014j; i12++) {
                }
            }
        }
    }

    public void f(byte[] bArr, int i10, int i11) throws ZipException {
        a(4, i11);
        int value = ZipShort.getValue(bArr, i10);
        d("ivSize", value, 4, i11);
        this.f68015k = Arrays.copyOfRange(bArr, i10 + 4, value);
        int i12 = value + 16;
        a(i12, i11);
        int i13 = i10 + value;
        this.f68008d = ZipShort.getValue(bArr, i13 + 6);
        this.f68009e = PKWareExtraHeader.EncryptionAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i13 + 8));
        this.f68010f = ZipShort.getValue(bArr, i13 + 10);
        this.f68011g = ZipShort.getValue(bArr, i13 + 12);
        int value2 = ZipShort.getValue(bArr, i13 + 14);
        d("erdSize", value2, i12, i11);
        int i14 = i13 + 16;
        this.f68016l = Arrays.copyOfRange(bArr, i14, value2);
        int i15 = value + 20 + value2;
        a(i15, i11);
        long value3 = ZipLong.getValue(bArr, i14 + value2);
        this.f68012h = value3;
        if (value3 == 0) {
            a(i15 + 2, i11);
            int value4 = ZipShort.getValue(bArr, i13 + 20 + value2);
            d("vSize", value4, value + 22 + value2, i11);
            if (value4 >= 4) {
                int i16 = i13 + 22 + value2;
                this.f68019o = Arrays.copyOfRange(bArr, i16, value4 - 4);
                this.f68020p = Arrays.copyOfRange(bArr, (i16 + value4) - 4, 4);
                return;
            } else {
                throw new ZipException("Invalid X0017_StrongEncryptionHeader: vSize " + value4 + " is too small to hold CRC");
            }
        }
        a(i15 + 6, i11);
        this.f68013i = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i13 + 20 + value2));
        int i17 = i13 + 22 + value2;
        this.f68014j = ZipShort.getValue(bArr, i17);
        int i18 = i13 + 24 + value2;
        int value5 = ZipShort.getValue(bArr, i18);
        int i19 = this.f68014j;
        this.f68017m = new byte[i19];
        if (value5 < i19) {
            throw new ZipException("Invalid X0017_StrongEncryptionHeader: resize " + value5 + " is too small to hold hashSize" + this.f68014j);
        }
        this.f68018n = new byte[value5 - i19];
        d("resize", value5, value + 24 + value2, i11);
        System.arraycopy(bArr, i18, this.f68017m, 0, this.f68014j);
        int i20 = this.f68014j;
        System.arraycopy(bArr, i18 + i20, this.f68018n, 0, value5 - i20);
        a(value + 26 + value2 + value5 + 2, i11);
        int value6 = ZipShort.getValue(bArr, i13 + 26 + value2 + value5);
        if (value6 < 4) {
            throw new ZipException("Invalid X0017_StrongEncryptionHeader: vSize " + value6 + " is too small to hold CRC");
        }
        d("vSize", value6, value + 22 + value2 + value5, i11);
        int i21 = value6 - 4;
        byte[] bArr2 = new byte[i21];
        this.f68019o = bArr2;
        this.f68020p = new byte[4];
        int i22 = i17 + value5;
        System.arraycopy(bArr, i22, bArr2, 0, i21);
        System.arraycopy(bArr, (i22 + value6) - 4, this.f68020p, 0, 4);
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        super.parseFromCentralDirectoryData(bArr, i10, i11);
        e(bArr, i10, i11);
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        super.parseFromLocalFileData(bArr, i10, i11);
        f(bArr, i10, i11);
    }
}
