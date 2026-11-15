package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.trackerid_alert;

public final class TrackeridAlert extends TorrentAlert<trackerid_alert> {
    public TrackeridAlert(trackerid_alert trackerid_alertVar) {
        super(trackerid_alertVar);
    }

    public String trackerId() {
        return ((trackerid_alert) this.alert).tracker_id();
    }
}
