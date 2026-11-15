package org.apache.commons.compress.archivers.dump;

public enum DumpArchiveConstants$SEGMENT_TYPE {
    TAPE(1),
    INODE(2),
    BITS(3),
    ADDR(4),
    END(5),
    CLRI(6);

    int code;

    DumpArchiveConstants$SEGMENT_TYPE(int i10) {
        this.code = i10;
    }

    public static DumpArchiveConstants$SEGMENT_TYPE find(int i10) {
        for (DumpArchiveConstants$SEGMENT_TYPE dumpArchiveConstants$SEGMENT_TYPE : values()) {
            if (dumpArchiveConstants$SEGMENT_TYPE.code == i10) {
                return dumpArchiveConstants$SEGMENT_TYPE;
            }
        }
        return null;
    }
}
