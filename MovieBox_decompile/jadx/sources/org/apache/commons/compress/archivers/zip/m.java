package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

public class m extends PKWareExtraHeader {

    private int f68004d;

    private PKWareExtraHeader.HashAlgorithm f68005e;

    public m() {
        super(new ZipShort(21));
    }

    @Override
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        a(4, i11);
        super.parseFromCentralDirectoryData(bArr, i10, i11);
        this.f68004d = ZipShort.getValue(bArr, i10);
        this.f68005e = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i10 + 2));
    }
}
