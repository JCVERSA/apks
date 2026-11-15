package org.libtorrent4j.alerts;

import org.libtorrent4j.Address;
import org.libtorrent4j.swig.listen_succeeded_alert;

public final class ListenSucceededAlert extends AbstractAlert<listen_succeeded_alert> {
    public ListenSucceededAlert(listen_succeeded_alert listen_succeeded_alertVar) {
        super(listen_succeeded_alertVar);
    }

    public Address address() {
        return new Address(((listen_succeeded_alert) this.alert).get_address());
    }

    public int port() {
        return ((listen_succeeded_alert) this.alert).getPort();
    }

    public SocketType socketType() {
        return SocketType.fromSwig(((listen_succeeded_alert) this.alert).get_socket_type());
    }
}
