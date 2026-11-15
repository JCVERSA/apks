package org.libtorrent4j.alerts;

import org.libtorrent4j.TorrentHandle;
import org.libtorrent4j.swig.torrent_alert;

public class TorrentAlert<T extends torrent_alert> extends AbstractAlert<T> {
    public TorrentAlert(T t) {
        super(t);
    }

    public TorrentHandle handle() {
        return new TorrentHandle(((torrent_alert) this.alert).getHandle());
    }
}
