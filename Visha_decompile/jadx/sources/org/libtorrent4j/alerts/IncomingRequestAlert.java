package org.libtorrent4j.alerts;

import org.libtorrent4j.PeerRequest;
import org.libtorrent4j.swig.incoming_request_alert;

public final class IncomingRequestAlert extends PeerAlert<incoming_request_alert> {
    public IncomingRequestAlert(incoming_request_alert incoming_request_alertVar) {
        super(incoming_request_alertVar);
    }

    public PeerRequest request() {
        return new PeerRequest(((incoming_request_alert) this.alert).getReq());
    }
}
