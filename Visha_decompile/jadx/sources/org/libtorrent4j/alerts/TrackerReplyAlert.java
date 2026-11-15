package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.tracker_reply_alert;

public final class TrackerReplyAlert extends TrackerAlert<tracker_reply_alert> {
    public TrackerReplyAlert(tracker_reply_alert tracker_reply_alertVar) {
        super(tracker_reply_alertVar);
    }

    public int numPeers() {
        return ((tracker_reply_alert) this.alert).getNum_peers();
    }
}
