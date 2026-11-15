package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.peer_connect_alert;

public final class PeerConnectAlert extends PeerAlert<peer_connect_alert> {

    public enum Direction {
        IN(peer_connect_alert.direction_t.in.swigValue()),
        OUT(peer_connect_alert.direction_t.out.swigValue()),
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

    public PeerConnectAlert(peer_connect_alert peer_connect_alertVar) {
        super(peer_connect_alertVar);
    }

    public Direction direction() {
        return Direction.fromSwig(((peer_connect_alert) this.alert).getDirection().swigValue());
    }

    public SocketType socketType() {
        return SocketType.fromSwig(((peer_connect_alert) this.alert).getSocket_type().swigValue());
    }
}
