package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.tracker_warning_alert;

public final class TrackerWarningAlert extends TrackerAlert<tracker_warning_alert> {
    public TrackerWarningAlert(tracker_warning_alert tracker_warning_alertVar) {
        super(tracker_warning_alertVar);
    }

    public String warningMessage() {
        return ((tracker_warning_alert) this.alert).warning_message();
    }
}
