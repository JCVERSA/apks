package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.url_seed_alert;

public final class UrlSeedAlert extends TorrentAlert<url_seed_alert> {
    public UrlSeedAlert(url_seed_alert url_seed_alertVar) {
        super(url_seed_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((url_seed_alert) this.alert).getError());
    }

    public String errorMessage() {
        return ((url_seed_alert) this.alert).error_message();
    }

    public String serverUrl() {
        return ((url_seed_alert) this.alert).server_url();
    }
}
