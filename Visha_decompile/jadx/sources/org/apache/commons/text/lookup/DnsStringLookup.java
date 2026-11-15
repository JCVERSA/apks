package org.apache.commons.text.lookup;

import java.net.InetAddress;
import java.net.UnknownHostException;

final class DnsStringLookup extends AbstractStringLookup {
    static final DnsStringLookup INSTANCE = new DnsStringLookup();

    private DnsStringLookup() {
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0056  */
    @Override
    public String lookup(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.trim().split("\\|");
        int length = strArrSplit.length;
        byte b = 0;
        String strTrim = strArrSplit[0].trim();
        if (length >= 2) {
            str = strArrSplit[1].trim();
        }
        try {
            InetAddress byName = InetAddress.getByName(str);
            int iHashCode = strTrim.hashCode();
            if (iHashCode != -1147692044) {
                if (iHashCode != 3373707) {
                    if (iHashCode == 1339224004 && strTrim.equals("canonical-name")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                } else if (!strTrim.equals("name")) {
                    b = -1;
                }
            } else if (strTrim.equals("address")) {
                b = 2;
            } else {
                b = -1;
            }
            if (b == 0) {
                return byName.getHostName();
            }
            if (b != 1) {
                return b != 2 ? byName.getHostAddress() : byName.getHostAddress();
            }
            return byName.getCanonicalHostName();
        } catch (UnknownHostException unused) {
            return null;
        }
    }
}
