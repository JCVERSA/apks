package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.tracker_error_alert;

public final class TrackerErrorAlert extends TrackerAlert<tracker_error_alert> {
    public TrackerErrorAlert(tracker_error_alert tracker_error_alertVar) {
        super(tracker_error_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((tracker_error_alert) this.alert).getError());
    }

    public String errorMessage() {
        return ((tracker_error_alert) this.alert).error_message();
    }

    public int timesInRow() {
        return ((tracker_error_alert) this.alert).getTimes_in_row();
    }
}
