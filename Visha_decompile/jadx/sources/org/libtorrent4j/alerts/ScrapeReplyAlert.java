package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.scrape_reply_alert;

public final class ScrapeReplyAlert extends TrackerAlert<scrape_reply_alert> {
    public ScrapeReplyAlert(scrape_reply_alert scrape_reply_alertVar) {
        super(scrape_reply_alertVar);
    }

    public int getComplete() {
        return ((scrape_reply_alert) this.alert).getComplete();
    }

    public int getIncomplete() {
        return ((scrape_reply_alert) this.alert).getIncomplete();
    }
}
