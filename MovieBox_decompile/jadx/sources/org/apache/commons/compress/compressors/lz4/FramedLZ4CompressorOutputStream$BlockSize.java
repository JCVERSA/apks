package org.apache.commons.compress.compressors.lz4;

public enum FramedLZ4CompressorOutputStream$BlockSize {
    K64(65536, 4),
    K256(262144, 5),
    M1(1048576, 6),
    M4(4194304, 7);

    private final int index;
    private final int size;

    FramedLZ4CompressorOutputStream$BlockSize(int i10, int i11) {
        this.size = i10;
        this.index = i11;
    }

    int getIndex() {
        return this.index;
    }

    int getSize() {
        return this.size;
    }
}
