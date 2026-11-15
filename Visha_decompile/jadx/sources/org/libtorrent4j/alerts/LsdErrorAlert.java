package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.lsd_error_alert;

public final class LsdErrorAlert extends AbstractAlert<lsd_error_alert> {
    public LsdErrorAlert(lsd_error_alert lsd_error_alertVar) {
        super(lsd_error_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((lsd_error_alert) this.alert).getError());
    }
}
