package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.log_alert;

public final class LogAlert extends AbstractAlert<log_alert> {
    public LogAlert(log_alert log_alertVar) {
        super(log_alertVar);
    }

    public String logMessage() {
        return ((log_alert) this.alert).log_message();
    }
}
