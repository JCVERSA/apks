package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;

public class j implements t {

    private ZipShort f67995a;

    private byte[] f67996b;

    private byte[] f67997c;

    public void a(byte[] bArr) {
        this.f67997c = u.c(bArr);
    }

    public void b(ZipShort zipShort) {
        this.f67995a = zipShort;
    }

    public void c(byte[] bArr) {
        this.f67996b = u.c(bArr);
    }

    @Override
    public ZipShort getHeaderId() {
        return this.f67995a;
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i10, i11 + i10);
        a(bArrCopyOfRange);
        if (this.f67996b == null) {
            c(bArrCopyOfRange);
        }
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) {
        c(Arrays.copyOfRange(bArr, i10, i11 + i10));
    }
}
