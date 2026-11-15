package org.libtorrent4j.alerts;

import org.libtorrent4j.PortmapProtocol;
import org.libtorrent4j.PortmapTransport;
import org.libtorrent4j.swig.portmap_alert;

public final class PortmapAlert extends AbstractAlert<portmap_alert> {
    public PortmapAlert(portmap_alert portmap_alertVar) {
        super(portmap_alertVar);
    }

    public int externalPort() {
        return ((portmap_alert) this.alert).getExternal_port();
    }

    public PortmapProtocol mapProtocol() {
        return PortmapProtocol.fromSwig(((portmap_alert) this.alert).getMap_protocol().swigValue());
    }

    public PortmapTransport mapTransport() {
        return PortmapTransport.fromSwig(((portmap_alert) this.alert).getMap_transport().swigValue());
    }

    public int mapping() {
        return ((portmap_alert) this.alert).get_mapping();
    }
}
