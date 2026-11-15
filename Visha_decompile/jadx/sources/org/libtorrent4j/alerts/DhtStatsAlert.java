package org.libtorrent4j.alerts;

import java.util.ArrayList;
import org.libtorrent4j.DhtLookup;
import org.libtorrent4j.DhtRoutingBucket;
import org.libtorrent4j.UdpEndpoint;
import org.libtorrent4j.swig.dht_lookup_vector;
import org.libtorrent4j.swig.dht_routing_bucket_vector;
import org.libtorrent4j.swig.dht_stats_alert;

public final class DhtStatsAlert extends AbstractAlert<dht_stats_alert> {
    public DhtStatsAlert(dht_stats_alert dht_stats_alertVar) {
        super(dht_stats_alertVar);
    }

    public ArrayList<DhtLookup> activeRequests() {
        dht_lookup_vector active_requests = ((dht_stats_alert) this.alert).getActive_requests();
        int size = active_requests.size();
        ArrayList<DhtLookup> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new DhtLookup(active_requests.get(i)));
        }
        return arrayList;
    }

    public UdpEndpoint localEndpoint() {
        return new UdpEndpoint(((dht_stats_alert) this.alert).get_local_endpoint());
    }

    public ArrayList<DhtRoutingBucket> routingTable() {
        dht_routing_bucket_vector routing_table = ((dht_stats_alert) this.alert).getRouting_table();
        int size = routing_table.size();
        ArrayList<DhtRoutingBucket> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new DhtRoutingBucket(routing_table.get(i)));
        }
        return arrayList;
    }
}
