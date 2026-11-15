package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.session_error_alert;

public final class SessionErrorAlert extends AbstractAlert<session_error_alert> {
    public SessionErrorAlert(session_error_alert session_error_alertVar) {
        super(session_error_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((session_error_alert) this.alert).getError());
    }
}
