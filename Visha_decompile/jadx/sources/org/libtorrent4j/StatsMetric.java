package org.libtorrent4j;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.libtorrent4j.swig.metric_type_t;
import org.libtorrent4j.swig.stats_metric;

public final class StatsMetric {
    public final String name;
    public final int type;
    public final int valueIndex;
    public static final String NET_SENT_PAYLOAD_BYTES_COUNTER_NAME = "net.sent_payload_bytes";
    public static final int NET_SENT_PAYLOAD_BYTES_COUNTER_INDEX = LibTorrent.findMetricIdx(NET_SENT_PAYLOAD_BYTES_COUNTER_NAME);
    public static final String NET_SENT_BYTES_COUNTER_NAME = "net.sent_bytes";
    public static final int NET_SENT_BYTES_COUNTER_INDEX = LibTorrent.findMetricIdx(NET_SENT_BYTES_COUNTER_NAME);
    public static final String NET_SENT_IP_OVERHEAD_BYTES_COUNTER_NAME = "net.sent_ip_overhead_bytes";
    public static final int NET_SENT_IP_OVERHEAD_BYTES_COUNTER_INDEX = LibTorrent.findMetricIdx(NET_SENT_IP_OVERHEAD_BYTES_COUNTER_NAME);
    public static final String NET_RECV_PAYLOAD_BYTES_COUNTER_NAME = "net.recv_payload_bytes";
    public static final int NET_RECV_PAYLOAD_BYTES_COUNTER_INDEX = LibTorrent.findMetricIdx(NET_RECV_PAYLOAD_BYTES_COUNTER_NAME);
    public static final String NET_RECV_BYTES_COUNTER_NAME = "net.recv_bytes";
    public static final int NET_RECV_BYTES_COUNTER_INDEX = LibTorrent.findMetricIdx(NET_RECV_BYTES_COUNTER_NAME);
    public static final String NET_RECV_IP_OVERHEAD_BYTES_COUNTER_NAME = "net.recv_ip_overhead_bytes";
    public static final int NET_RECV_IP_OVERHEAD_BYTES_COUNTER_INDEX = LibTorrent.findMetricIdx(NET_RECV_IP_OVERHEAD_BYTES_COUNTER_NAME);
    public static final String DHT_NODES_GAUGE_NAME = "dht.dht_nodes";
    public static final int DHT_NODES_GAUGE_INDEX = LibTorrent.findMetricIdx(DHT_NODES_GAUGE_NAME);
    public static final int TYPE_COUNTER = metric_type_t.counter.swigValue();
    public static final int TYPE_GAUGE = metric_type_t.gauge.swigValue();

    public StatsMetric(stats_metric stats_metricVar) {
        this.name = stats_metricVar.get_name();
        this.valueIndex = stats_metricVar.getValue_index();
        this.type = stats_metricVar.getType().swigValue();
    }

    private String typeStr() {
        int i = this.type;
        if (i == TYPE_COUNTER) {
            return "counter";
        }
        return i == TYPE_GAUGE ? "gauge" : "unknown";
    }

    public String toString() {
        return this.name + StringUtils.PROCESS_POSTFIX_DELIMITER + this.valueIndex + StringUtils.PROCESS_POSTFIX_DELIMITER + typeStr();
    }
}
