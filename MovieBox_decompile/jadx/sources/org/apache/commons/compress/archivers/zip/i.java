package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;

public final class i implements t {

    private static final ZipShort f67992c = new ZipShort(44225);

    private byte[] f67993a;

    private byte[] f67994b;

    @Override
    public ZipShort getHeaderId() {
        return f67992c;
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) {
        this.f67994b = Arrays.copyOfRange(bArr, i10, i10 + i11);
        if (this.f67993a == null) {
            parseFromLocalFileData(bArr, i10, i11);
        }
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) {
        this.f67993a = Arrays.copyOfRange(bArr, i10, i11 + i10);
    }
}
