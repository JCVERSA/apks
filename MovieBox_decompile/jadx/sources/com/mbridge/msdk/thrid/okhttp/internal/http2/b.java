package com.mbridge.msdk.thrid.okhttp.internal.http2;

public enum b {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8),
    COMPRESSION_ERROR(9),
    CONNECT_ERROR(10),
    ENHANCE_YOUR_CALM(11),
    INADEQUATE_SECURITY(12),
    HTTP_1_1_REQUIRED(13);


    public final int f37220a;

    b(int i10) {
        this.f37220a = i10;
    }

    public static b a(int i10) {
        for (b bVar : values()) {
            if (bVar.f37220a == i10) {
                return bVar;
            }
        }
        return null;
    }
}
