package org.proninyaroslav.libretorrent.core.model.data;

public enum TorrentStateCode {
    UNKNOWN(-1),
    ERROR(0),
    SEEDING(1),
    DOWNLOADING(2),
    PAUSED(3),
    STOPPED(4),
    CHECKING(5),
    DOWNLOADING_METADATA(6),
    FINISHED(7);

    private final int value;

    TorrentStateCode(int i) {
        this.value = i;
    }

    public static TorrentStateCode fromValue(int i) {
        for (TorrentStateCode torrentStateCode : (TorrentStateCode[]) TorrentStateCode.class.getEnumConstants()) {
            if (torrentStateCode.value() == i) {
                return torrentStateCode;
            }
        }
        return UNKNOWN;
    }

    public int value() {
        return this.value;
    }
}
