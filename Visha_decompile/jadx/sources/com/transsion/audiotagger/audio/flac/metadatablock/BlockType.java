package com.transsion.audiotagger.audio.flac.metadatablock;

public enum BlockType {
    STREAMINFO(0),
    PADDING(1),
    APPLICATION(2),
    SEEKTABLE(3),
    VORBIS_COMMENT(4),
    CUESHEET(5),
    PICTURE(6);

    private int id;

    BlockType(int i) {
        this.id = i;
    }

    public int getId() {
        return this.id;
    }
}
