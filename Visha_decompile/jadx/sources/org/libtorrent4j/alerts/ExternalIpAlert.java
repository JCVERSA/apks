package org.libtorrent4j.alerts;

import org.libtorrent4j.Address;
import org.libtorrent4j.swig.external_ip_alert;

public final class ExternalIpAlert extends AbstractAlert<external_ip_alert> {
    public ExternalIpAlert(external_ip_alert external_ip_alertVar) {
        super(external_ip_alertVar);
    }

    public Address externalAddress() {
        return new Address(((external_ip_alert) this.alert).get_external_address());
    }
}
