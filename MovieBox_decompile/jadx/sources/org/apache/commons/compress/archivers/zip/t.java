package org.apache.commons.compress.archivers.zip;

public interface t {
    ZipShort getHeaderId();

    void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11);

    void parseFromLocalFileData(byte[] bArr, int i10, int i11);
}
