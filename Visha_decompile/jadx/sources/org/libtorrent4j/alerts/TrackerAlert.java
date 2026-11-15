package org.libtorrent4j.alerts;

import org.libtorrent4j.TcpEndpoint;
import org.libtorrent4j.swig.protocol_version;
import org.libtorrent4j.swig.tracker_alert;

public class TrackerAlert<T extends tracker_alert> extends TorrentAlert<T> {
    public TrackerAlert(T t) {
        super(t);
    }

    public protocol_version getVersion() {
        return ((tracker_alert) this.alert).getVersion();
    }

    public TcpEndpoint localEndpoint() {
        return new TcpEndpoint(((tracker_alert) this.alert).get_local_endpoint());
    }

    public String trackerUrl() {
        return ((tracker_alert) this.alert).tracker_url();
    }
}
