package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.metadata_failed_alert;

public final class MetadataFailedAlert extends TorrentAlert<metadata_failed_alert> {
    public MetadataFailedAlert(metadata_failed_alert metadata_failed_alertVar) {
        super(metadata_failed_alertVar);
    }

    public ErrorCode getError() {
        return new ErrorCode(((metadata_failed_alert) this.alert).getError());
    }
}
