package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.Operation;
import org.libtorrent4j.UdpEndpoint;
import org.libtorrent4j.swig.udp_error_alert;

public final class UdpErrorAlert extends AbstractAlert<udp_error_alert> {
    public UdpErrorAlert(udp_error_alert udp_error_alertVar) {
        super(udp_error_alertVar);
    }

    public UdpEndpoint endpoint() {
        return new UdpEndpoint(((udp_error_alert) this.alert).get_endpoint());
    }

    public ErrorCode error() {
        return new ErrorCode(((udp_error_alert) this.alert).getError());
    }

    public Operation operation() {
        return Operation.fromSwig(((udp_error_alert) this.alert).getOperation());
    }
}
