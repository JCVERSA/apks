package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.i2p_alert;

public final class I2pAlert extends AbstractAlert<i2p_alert> {
    public I2pAlert(i2p_alert i2p_alertVar) {
        super(i2p_alertVar);
    }

    public ErrorCode getError() {
        return new ErrorCode(((i2p_alert) this.alert).getError());
    }
}
