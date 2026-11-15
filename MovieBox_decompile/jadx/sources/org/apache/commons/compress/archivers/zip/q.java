package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

public class q implements t {

    static final ZipShort f68021f = new ZipShort(1);

    private static final byte[] f68022g = new byte[0];

    private ZipEightByteInteger f68023a;

    private ZipEightByteInteger f68024b;

    private ZipEightByteInteger f68025c;

    private ZipLong f68026d;

    private byte[] f68027e;

    @Override
    public ZipShort getHeaderId() {
        return f68021f;
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        byte[] bArr2 = new byte[i11];
        this.f68027e = bArr2;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        if (i11 >= 28) {
            parseFromLocalFileData(bArr, i10, i11);
            return;
        }
        if (i11 == 24) {
            this.f68023a = new ZipEightByteInteger(bArr, i10);
            this.f68024b = new ZipEightByteInteger(bArr, i10 + 8);
            this.f68025c = new ZipEightByteInteger(bArr, i10 + 16);
        } else if (i11 % 8 == 4) {
            this.f68026d = new ZipLong(bArr, (i10 + i11) - 4);
        }
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 == 0) {
            return;
        }
        if (i11 < 16) {
            throw new ZipException("Zip64 extended information must contain both size values in the local file header.");
        }
        this.f68023a = new ZipEightByteInteger(bArr, i10);
        this.f68024b = new ZipEightByteInteger(bArr, i10 + 8);
        int i12 = i10 + 16;
        int i13 = i11 - 16;
        if (i13 >= 8) {
            this.f68025c = new ZipEightByteInteger(bArr, i12);
            i12 = i10 + 24;
            i13 = i11 - 24;
        }
        if (i13 >= 4) {
            this.f68026d = new ZipLong(bArr, i12);
        }
    }
}
