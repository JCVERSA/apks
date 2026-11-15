package org.libtorrent4j.alerts;

import org.libtorrent4j.UdpEndpoint;
import org.libtorrent4j.Vectors;
import org.libtorrent4j.swig.dht_pkt_alert;

public final class DhtPktAlert extends AbstractAlert<dht_pkt_alert> {

    public enum Direction {
        INCOMING(dht_pkt_alert.direction_t.incoming.swigValue()),
        OUTGOING(dht_pkt_alert.direction_t.outgoing.swigValue()),
        UNKNOWN(-1);

        private final int swigValue;

        Direction(int i) {
            this.swigValue = i;
        }

        public static Direction fromSwig(int i) {
            for (Direction direction : (Direction[]) Direction.class.getEnumConstants()) {
                if (direction.swig() == i) {
                    return direction;
                }
            }
            return UNKNOWN;
        }

        public int swig() {
            return this.swigValue;
        }
    }

    public DhtPktAlert(dht_pkt_alert dht_pkt_alertVar) {
        super(dht_pkt_alertVar);
    }

    public Direction direction() {
        return Direction.fromSwig(((dht_pkt_alert) this.alert).getDirection().swigValue());
    }

    public UdpEndpoint node() {
        return new UdpEndpoint(((dht_pkt_alert) this.alert).get_node());
    }

    public byte[] pktBuf() {
        return Vectors.byte_vector2bytes(((dht_pkt_alert) this.alert).get_pkt_buf());
    }
}
