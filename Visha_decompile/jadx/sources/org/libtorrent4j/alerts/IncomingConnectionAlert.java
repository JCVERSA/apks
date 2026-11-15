package org.libtorrent4j.alerts;

import org.libtorrent4j.TcpEndpoint;
import org.libtorrent4j.swig.incoming_connection_alert;

public final class IncomingConnectionAlert extends AbstractAlert<incoming_connection_alert> {
    public IncomingConnectionAlert(incoming_connection_alert incoming_connection_alertVar) {
        super(incoming_connection_alertVar);
    }

    public TcpEndpoint endpoint() {
        return new TcpEndpoint(((incoming_connection_alert) this.alert).get_endpoint());
    }

    public SocketType socketType() {
        return SocketType.fromSwig(((incoming_connection_alert) this.alert).getSocket_type().swigValue());
    }
}
