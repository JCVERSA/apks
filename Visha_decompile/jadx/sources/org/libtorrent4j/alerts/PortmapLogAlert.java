package org.libtorrent4j.alerts;

import org.libtorrent4j.PortmapTransport;
import org.libtorrent4j.swig.portmap_log_alert;

public final class PortmapLogAlert extends AbstractAlert<portmap_log_alert> {
    public PortmapLogAlert(portmap_log_alert portmap_log_alertVar) {
        super(portmap_log_alertVar);
    }

    public String logMessage() {
        return ((portmap_log_alert) this.alert).log_message();
    }

    public PortmapTransport mapType() {
        return PortmapTransport.fromSwig(((portmap_log_alert) this.alert).getMap_transport().swigValue());
    }
}
