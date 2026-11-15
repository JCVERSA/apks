package defpackage;

import org.proninyaroslav.libretorrent.core.model.data.TorrentStateCode;

public abstract class px9 {
    public static boolean a(TorrentStateCode torrentStateCode) {
        return torrentStateCode == TorrentStateCode.SEEDING || torrentStateCode == TorrentStateCode.FINISHED;
    }

    public static boolean b(TorrentStateCode torrentStateCode) {
        return torrentStateCode == TorrentStateCode.PAUSED || torrentStateCode == TorrentStateCode.STOPPED;
    }
}
