package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.Operation;
import org.libtorrent4j.swig.dht_error_alert;

public final class DhtErrorAlert extends AbstractAlert<dht_error_alert> {
    public DhtErrorAlert(dht_error_alert dht_error_alertVar) {
        super(dht_error_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((dht_error_alert) this.alert).getError());
    }

    public Operation operation() {
        return Operation.fromSwig(((dht_error_alert) this.alert).getOp());
    }
}
