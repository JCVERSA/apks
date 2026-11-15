package org.libtorrent4j.alerts;

import org.libtorrent4j.BDecodeNode;
import org.libtorrent4j.UdpEndpoint;
import org.libtorrent4j.swig.dht_direct_response_alert;

public final class DhtDirectResponseAlert extends AbstractAlert<dht_direct_response_alert> {
    public DhtDirectResponseAlert(dht_direct_response_alert dht_direct_response_alertVar) {
        super(dht_direct_response_alertVar);
    }

    public UdpEndpoint endpoint() {
        return new UdpEndpoint(((dht_direct_response_alert) this.alert).get_endpoint());
    }

    public BDecodeNode response() {
        return new BDecodeNode(((dht_direct_response_alert) this.alert).response());
    }

    public long userdata() {
        return ((dht_direct_response_alert) this.alert).getUserdata().get();
    }
}
