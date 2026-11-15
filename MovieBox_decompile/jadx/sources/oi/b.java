package oi;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import kotlin.jvm.internal.Intrinsics;

public final class b implements HostnameVerifier {
    @Override
    public boolean verify(String s10, SSLSession sslSession) {
        Intrinsics.h(s10, "s");
        Intrinsics.h(sslSession, "sslSession");
        return true;
    }
}
