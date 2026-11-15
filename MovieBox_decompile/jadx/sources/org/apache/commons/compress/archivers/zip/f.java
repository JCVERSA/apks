package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

public class f implements t {

    public static final ZipShort f67986d = new ZipShort(41246);

    private short f67987a;

    private boolean f67988b;

    private int f67989c = 0;

    @Override
    public ZipShort getHeaderId() {
        return f67986d;
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 >= 2) {
            int value = ZipShort.getValue(bArr, i10);
            this.f67987a = (short) (value & 32767);
            this.f67988b = (value & 32768) != 0;
        } else {
            throw new ZipException("Too short content for ResourceAlignmentExtraField (0xa11e): " + i11);
        }
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        parseFromCentralDirectoryData(bArr, i10, i11);
        this.f67989c = i11 - 2;
    }
}
