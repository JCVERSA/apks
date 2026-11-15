package org.libtorrent4j;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.libtorrent4j.swig.address;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.tcp_endpoint;

public final class TcpEndpoint implements Cloneable {
    private final tcp_endpoint endp;

    public TcpEndpoint(tcp_endpoint tcp_endpointVar) {
        this.endp = tcp_endpointVar;
    }

    public Address address() {
        return new Address(this.endp.address());
    }

    public int port() {
        return this.endp.port();
    }

    public tcp_endpoint swig() {
        return this.endp;
    }

    public String toString() {
        address addressVarAddress = this.endp.address();
        String str = addressVarAddress.to_string();
        StringBuilder sb = new StringBuilder();
        sb.append("tcp://");
        if (!addressVarAddress.is_v4()) {
            str = "[" + str + "]";
        }
        sb.append(str);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        sb.append(this.endp.port());
        return sb.toString();
    }

    public TcpEndpoint clone() {
        return new TcpEndpoint(new tcp_endpoint(this.endp));
    }

    public TcpEndpoint() {
        this(new tcp_endpoint());
    }

    public TcpEndpoint(Address address, int i) {
        this(new tcp_endpoint(address.swig(), i));
    }

    public TcpEndpoint(String str, int i) {
        error_code error_codeVar = new error_code();
        address addressVarFrom_string = address.from_string(str, error_codeVar);
        if (error_codeVar.value() == 0) {
            this.endp = new tcp_endpoint(addressVarFrom_string, i);
            return;
        }
        throw new IllegalArgumentException(error_codeVar.message());
    }
}
