package org.libtorrent4j;

import org.libtorrent4j.swig.portmap_transport;

public enum PortmapTransport {
    NAT_PMP(portmap_transport.natpmp.swigValue()),
    UPNP(portmap_transport.upnp.swigValue());

    private final int swigValue;

    PortmapTransport(int i) {
        this.swigValue = i;
    }

    public static PortmapTransport fromSwig(int i) {
        for (PortmapTransport portmapTransport : (PortmapTransport[]) PortmapTransport.class.getEnumConstants()) {
            if (portmapTransport.swig() == i) {
                return portmapTransport;
            }
        }
        throw new IllegalArgumentException("No enum " + PortmapTransport.class + " with value " + i);
    }

    public int swig() {
        return this.swigValue;
    }
}
