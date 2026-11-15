package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.socket_type_t;

public enum SocketType {
    TCP(socket_type_t.tcp.swigValue()),
    TCP_SSL(socket_type_t.tcp_ssl.swigValue()),
    UTP(socket_type_t.utp.swigValue()),
    I2P(socket_type_t.i2p.swigValue()),
    SOCKS5(socket_type_t.socks5.swigValue()),
    SOCKS5_SSL(socket_type_t.socks5_ssl.swigValue()),
    UTP_SSL(socket_type_t.utp_ssl.swigValue()),
    HTTP(socket_type_t.http.swigValue()),
    HTTP_SSL(socket_type_t.http_ssl.swigValue()),
    RTC(socket_type_t.rtc.swigValue()),
    UNKNOWN(-1);

    private final int swigValue;

    SocketType(int i) {
        this.swigValue = i;
    }

    public static SocketType fromSwig(int i) {
        for (SocketType socketType : (SocketType[]) SocketType.class.getEnumConstants()) {
            if (socketType.swig() == i) {
                return socketType;
            }
        }
        return UNKNOWN;
    }

    public int swig() {
        return this.swigValue;
    }
}
