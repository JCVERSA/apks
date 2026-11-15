package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

public class n extends PKWareExtraHeader {

    private int f68006d;

    private PKWareExtraHeader.HashAlgorithm f68007e;

    public n() {
        super(new ZipShort(22));
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        a(4, i11);
        this.f68006d = ZipShort.getValue(bArr, i10);
        this.f68007e = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i10 + 2));
    }
}
