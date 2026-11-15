package org.apache.commons.compress.archivers.dump;

public enum DumpArchiveConstants$COMPRESSION_TYPE {
    ZLIB(0),
    BZLIB(1),
    LZO(2);

    int code;

    DumpArchiveConstants$COMPRESSION_TYPE(int i10) {
        this.code = i10;
    }

    public static DumpArchiveConstants$COMPRESSION_TYPE find(int i10) {
        for (DumpArchiveConstants$COMPRESSION_TYPE dumpArchiveConstants$COMPRESSION_TYPE : values()) {
            if (dumpArchiveConstants$COMPRESSION_TYPE.code == i10) {
                return dumpArchiveConstants$COMPRESSION_TYPE;
            }
        }
        return null;
    }
}
