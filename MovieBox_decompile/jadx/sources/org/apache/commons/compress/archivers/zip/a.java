package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

public abstract class a implements t {

    private long f67962a;

    private byte[] f67963b;

    private byte[] f67964c;

    protected a() {
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        parseFromLocalFileData(bArr, i10, i11);
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 < 5) {
            throw new ZipException("UniCode path extra data must have at least 5 bytes.");
        }
        byte b10 = bArr[i10];
        if (b10 != 1) {
            throw new ZipException("Unsupported version [" + ((int) b10) + "] for UniCode path extra data.");
        }
        this.f67962a = ZipLong.getValue(bArr, i10 + 1);
        int i12 = i11 - 5;
        byte[] bArr2 = new byte[i12];
        this.f67963b = bArr2;
        System.arraycopy(bArr, i10 + 5, bArr2, 0, i12);
        this.f67964c = null;
    }
}
