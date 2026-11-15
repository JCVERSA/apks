package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.peer_blocked_alert;

public final class PeerBlockedAlert extends TorrentAlert<peer_blocked_alert> {

    public enum Reason {
        IP_FILTER(peer_blocked_alert.reason_t.ip_filter.swigValue()),
        PORT_FILTER(peer_blocked_alert.reason_t.port_filter.swigValue()),
        I2P_MIXED(peer_blocked_alert.reason_t.i2p_mixed.swigValue()),
        PRIVILEGED_PORTS(peer_blocked_alert.reason_t.privileged_ports.swigValue()),
        UTP_DISABLED(peer_blocked_alert.reason_t.utp_disabled.swigValue()),
        TCP_DISABLED(peer_blocked_alert.reason_t.tcp_disabled.swigValue()),
        INVALID_LOCAL_INTERFACE(peer_blocked_alert.reason_t.invalid_local_interface.swigValue()),
        SSRF_MITIGATION(peer_blocked_alert.reason_t.ssrf_mitigation.swigValue()),
        UNKNOWN(-1);

        private final int swigValue;

        Reason(int i) {
            this.swigValue = i;
        }

        public static Reason fromSwig(int i) {
            for (Reason reason : (Reason[]) Reason.class.getEnumConstants()) {
                if (reason.swig() == i) {
                    return reason;
                }
            }
            return UNKNOWN;
        }

        public int swig() {
            return this.swigValue;
        }
    }

    public PeerBlockedAlert(peer_blocked_alert peer_blocked_alertVar) {
        super(peer_blocked_alertVar);
    }

    public Reason reason() {
        return Reason.fromSwig(((peer_blocked_alert) this.alert).getReason());
    }
}
