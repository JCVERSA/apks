package org.apache.tools.zip;

import java.util.zip.ZipException;

public final class JarMarker implements ZipExtraField {
    private static final ZipShort ID = new ZipShort(51966);
    private static final ZipShort NULL = new ZipShort(0);
    private static final byte[] NO_BYTES = new byte[0];
    private static final JarMarker DEFAULT = new JarMarker();

    public static JarMarker getInstance() {
        return DEFAULT;
    }

    @Override
    public byte[] getCentralDirectoryData() {
        return NO_BYTES;
    }

    @Override
    public ZipShort getCentralDirectoryLength() {
        return NULL;
    }

    @Override
    public ZipShort getHeaderId() {
        return ID;
    }

    @Override
    public byte[] getLocalFileDataData() {
        return NO_BYTES;
    }

    @Override
    public ZipShort getLocalFileDataLength() {
        return NULL;
    }

    @Override
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 != 0) {
            throw new ZipException("JarMarker doesn't expect any data");
        }
    }
}
