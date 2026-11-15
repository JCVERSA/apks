package org.libtorrent4j;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.libtorrent4j.swig.address;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.udp_endpoint;

public final class UdpEndpoint implements Cloneable {
    private final udp_endpoint endp;

    public UdpEndpoint(udp_endpoint udp_endpointVar) {
        this.endp = udp_endpointVar;
    }

    public Address address() {
        return new Address(this.endp.address());
    }

    public int port() {
        return this.endp.port();
    }

    public udp_endpoint swig() {
        return this.endp;
    }

    public String toString() {
        return "udp://" + this.endp.address().to_string() + StringUtils.PROCESS_POSTFIX_DELIMITER + this.endp.port();
    }

    public UdpEndpoint clone() {
        return new UdpEndpoint(new udp_endpoint(this.endp));
    }

    public UdpEndpoint() {
        this(new udp_endpoint());
    }

    public UdpEndpoint(Address address, int i) {
        this(new udp_endpoint(address.swig(), i));
    }

    public UdpEndpoint(String str, int i) {
        error_code error_codeVar = new error_code();
        address addressVarFrom_string = address.from_string(str, error_codeVar);
        if (error_codeVar.value() == 0) {
            this.endp = new udp_endpoint(addressVarFrom_string, i);
            return;
        }
        throw new IllegalArgumentException(error_codeVar.message());
    }
}
