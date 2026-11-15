package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.PortmapTransport;
import org.libtorrent4j.swig.portmap_error_alert;

public final class PortmapErrorAlert extends AbstractAlert<portmap_error_alert> {
    public PortmapErrorAlert(portmap_error_alert portmap_error_alertVar) {
        super(portmap_error_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((portmap_error_alert) this.alert).getError());
    }

    public PortmapTransport mapTransport() {
        return PortmapTransport.fromSwig(((portmap_error_alert) this.alert).getMap_transport().swigValue());
    }

    public int mapping() {
        return ((portmap_error_alert) this.alert).get_mapping();
    }
}
