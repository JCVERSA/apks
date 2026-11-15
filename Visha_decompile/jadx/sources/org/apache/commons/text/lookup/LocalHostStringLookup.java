package org.apache.commons.text.lookup;

import java.net.InetAddress;
import java.net.UnknownHostException;

final class LocalHostStringLookup extends AbstractStringLookup {
    static final LocalHostStringLookup INSTANCE = new LocalHostStringLookup();

    private LocalHostStringLookup() {
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0038  */
    @Override
    public String lookup(String str) {
        byte b;
        if (str == null) {
            return null;
        }
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != -1147692044) {
                if (iHashCode != 3373707) {
                    if (iHashCode == 1339224004 && str.equals("canonical-name")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (str.equals("name")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (str.equals("address")) {
                b = 2;
            } else {
                b = -1;
            }
            if (b == 0) {
                return InetAddress.getLocalHost().getHostName();
            }
            if (b == 1) {
                return InetAddress.getLocalHost().getCanonicalHostName();
            }
            if (b == 2) {
                return InetAddress.getLocalHost().getHostAddress();
            }
            throw new IllegalArgumentException(str);
        } catch (UnknownHostException unused) {
            return null;
        }
    }
}
