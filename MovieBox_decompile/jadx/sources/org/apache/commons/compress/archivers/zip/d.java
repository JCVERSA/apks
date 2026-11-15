package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

public final class d implements t {

    private static final ZipShort f67977a = new ZipShort(51966);

    private static final ZipShort f67978b = new ZipShort(0);

    private static final byte[] f67979c = new byte[0];

    private static final d f67980d = new d();

    @Override
    public ZipShort getHeaderId() {
        return f67977a;
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        parseFromLocalFileData(bArr, i10, i11);
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 != 0) {
            throw new ZipException("JarMarker doesn't expect any data");
        }
    }
}
