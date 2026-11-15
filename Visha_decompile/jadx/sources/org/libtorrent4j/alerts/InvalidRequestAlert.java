package org.libtorrent4j.alerts;

import org.libtorrent4j.PeerRequest;
import org.libtorrent4j.swig.invalid_request_alert;

public final class InvalidRequestAlert extends PeerAlert<invalid_request_alert> {
    public InvalidRequestAlert(invalid_request_alert invalid_request_alertVar) {
        super(invalid_request_alertVar);
    }

    public PeerRequest getRequest() {
        return new PeerRequest(((invalid_request_alert) this.alert).getRequest());
    }
}
