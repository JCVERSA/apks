package org.libtorrent4j;

import org.libtorrent4j.swig.portmap_protocol;

public enum PortmapProtocol {
    NONE(portmap_protocol.none.swigValue()),
    TCP(portmap_protocol.tcp.swigValue()),
    UDP(portmap_protocol.udp.swigValue());

    private final int swigValue;

    PortmapProtocol(int i) {
        this.swigValue = i;
    }

    public static PortmapProtocol fromSwig(int i) {
        for (PortmapProtocol portmapProtocol : (PortmapProtocol[]) PortmapProtocol.class.getEnumConstants()) {
            if (portmapProtocol.swig() == i) {
                return portmapProtocol;
            }
        }
        throw new IllegalArgumentException("No enum " + PortmapProtocol.class + " with value " + i);
    }

    public int swig() {
        return this.swigValue;
    }
}
