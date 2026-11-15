package com.mbridge.msdk.thrid.okhttp;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

public interface m {

    public static final m f37449a = new a();

    static class a implements m {
        a() {
        }

        @Override
        public List<InetAddress> a(String str) throws UnknownHostException {
            if (str == null) {
                throw new UnknownHostException("hostname == null");
            }
            try {
                return Arrays.asList(InetAddress.getAllByName(str));
            } catch (NullPointerException e10) {
                UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + str);
                unknownHostException.initCause(e10);
                throw unknownHostException;
            }
        }
    }

    List<InetAddress> a(String str) throws UnknownHostException;
}
