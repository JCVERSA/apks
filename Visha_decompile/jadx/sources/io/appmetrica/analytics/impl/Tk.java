package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class Tk {
    public final Ic a;
    public final Hc b;

    public Tk(PublicLogger publicLogger, String str) {
        this(new Ic(str, publicLogger), new Hc(str, publicLogger));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized boolean a(Lc lc, String str, String str2) {
        try {
            int size = lc.size();
            int i = this.a.c.a;
            if (size < i || (i == lc.size() && lc.containsKey(str))) {
                this.b.getClass();
                int length = lc.a;
                if (str2 != null) {
                    length += str2.length();
                }
                if (lc.containsKey(str)) {
                    String str3 = (String) lc.get(str);
                    if (str3 != null) {
                        length -= str3.length();
                    }
                } else {
                    length += str.length();
                }
                if (length <= 4500) {
                    lc.put(str, str2);
                    return true;
                }
                Hc hc = this.b;
                hc.b.warning("The %s has reached the total size limit that equals %d symbols. Item with key %s will be ignored", hc.a, 4500, str);
            } else {
                Ic ic = this.a;
                ic.d.warning("The %s has reached the limit of %d items. Item with key %s will be ignored", ic.e, Integer.valueOf(ic.c.a), str);
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean b(Lc lc, String str, String str2) {
        if (lc == null) {
            return false;
        }
        String strA = this.a.a.a(str);
        String strA2 = this.a.b.a(str2);
        if (!lc.containsKey(strA)) {
            if (strA2 != null) {
                return a(lc, strA, strA2);
            }
            return false;
        }
        String str3 = (String) lc.get(strA);
        if (strA2 == null || !strA2.equals(str3)) {
            return a(lc, strA, strA2);
        }
        return false;
    }

    public Tk(Ic ic, Hc hc) {
        this.a = ic;
        this.b = hc;
    }
}
