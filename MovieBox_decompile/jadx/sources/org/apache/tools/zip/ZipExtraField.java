package org.apache.tools.zip;

import java.util.zip.ZipException;

public interface ZipExtraField {
    byte[] getCentralDirectoryData();

    ZipShort getCentralDirectoryLength();

    ZipShort getHeaderId();

    byte[] getLocalFileDataData();

    ZipShort getLocalFileDataLength();

    void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException;
}
