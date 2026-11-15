package org.libtorrent4j.alerts;

import org.libtorrent4j.AddTorrentParams;
import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.add_torrent_alert;

public final class AddTorrentAlert extends TorrentAlert<add_torrent_alert> {
    public AddTorrentAlert(add_torrent_alert add_torrent_alertVar) {
        super(add_torrent_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((add_torrent_alert) this.alert).getError());
    }

    public AddTorrentParams params() {
        return new AddTorrentParams(((add_torrent_alert) this.alert).getParams());
    }
}
