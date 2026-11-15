package org.libtorrent4j.alerts;

import org.libtorrent4j.Address;
import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.Operation;
import org.libtorrent4j.swig.listen_failed_alert;

public final class ListenFailedAlert extends AbstractAlert<listen_failed_alert> {
    public ListenFailedAlert(listen_failed_alert listen_failed_alertVar) {
        super(listen_failed_alertVar);
    }

    public Address address() {
        return new Address(((listen_failed_alert) this.alert).get_address());
    }

    public ErrorCode error() {
        return new ErrorCode(((listen_failed_alert) this.alert).getError());
    }

    public String listenInterface() {
        return ((listen_failed_alert) this.alert).listen_interface();
    }

    public Operation operation() {
        return Operation.fromSwig(((listen_failed_alert) this.alert).getOp());
    }

    public int port() {
        return ((listen_failed_alert) this.alert).getPort();
    }

    public SocketType socketType() {
        return SocketType.fromSwig(((listen_failed_alert) this.alert).get_socket_type());
    }
}
