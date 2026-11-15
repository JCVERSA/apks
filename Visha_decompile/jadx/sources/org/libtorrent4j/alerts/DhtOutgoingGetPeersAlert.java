package org.libtorrent4j.alerts;

import org.libtorrent4j.Sha1Hash;
import org.libtorrent4j.UdpEndpoint;
import org.libtorrent4j.swig.dht_outgoing_get_peers_alert;

public final class DhtOutgoingGetPeersAlert extends AbstractAlert<dht_outgoing_get_peers_alert> {
    public DhtOutgoingGetPeersAlert(dht_outgoing_get_peers_alert dht_outgoing_get_peers_alertVar) {
        super(dht_outgoing_get_peers_alertVar);
    }

    public UdpEndpoint endpoint() {
        return new UdpEndpoint(((dht_outgoing_get_peers_alert) this.alert).get_endpoint());
    }

    public Sha1Hash infoHash() {
        return new Sha1Hash(((dht_outgoing_get_peers_alert) this.alert).getInfo_hash());
    }

    public Sha1Hash obfuscatedInfoHash() {
        return new Sha1Hash(((dht_outgoing_get_peers_alert) this.alert).getObfuscated_info_hash());
    }
}
