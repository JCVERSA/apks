package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.peer_log_alert;

public final class PeerLogAlert extends PeerAlert<peer_log_alert> {

    public enum Direction {
        INCOMING_MESSAGE(peer_log_alert.direction_t.incoming_message.swigValue()),
        OUTGOING_MESSAGE(peer_log_alert.direction_t.outgoing_message.swigValue()),
        INCOMING(peer_log_alert.direction_t.incoming.swigValue()),
        OUTGOING(peer_log_alert.direction_t.outgoing.swigValue()),
        INFO(peer_log_alert.direction_t.info.swigValue()),
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

    public PeerLogAlert(peer_log_alert peer_log_alertVar) {
        super(peer_log_alertVar);
    }

    public Direction direction() {
        return Direction.fromSwig(((peer_log_alert) this.alert).getDirection().swigValue());
    }

    public String eventType() {
        return ((peer_log_alert) this.alert).getEvent_type().toString();
    }

    public String logMessage() {
        return ((peer_log_alert) this.alert).log_message();
    }
}
