package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.scrape_failed_alert;

public final class ScrapeFailedAlert extends TrackerAlert<scrape_failed_alert> {
    public ScrapeFailedAlert(scrape_failed_alert scrape_failed_alertVar) {
        super(scrape_failed_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((scrape_failed_alert) this.alert).getError());
    }

    public String errorMessage() {
        return ((scrape_failed_alert) this.alert).error_message();
    }
}
