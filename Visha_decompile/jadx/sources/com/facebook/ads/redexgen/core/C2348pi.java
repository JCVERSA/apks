package com.facebook.ads.redexgen.core;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class C2348pi {
    public static String[] A02 = {"FI4CSn5g4hVI", "oUnbtikCS", "OTKcg3hD6eE6nFWotwGGZ5F", "qSmHeLCnLYm7Z6Tg4tQ0z3dsx", "SCLx27yKxe6yDyiZK0iEJT9ptP", "bFFCI01IIFvt0fl9DXgL6XUawg", "6J2GgEdIUlJLk3yvVentjGe1dkRWCLvM", "KM6GnpQ6vjKv"};
    public final Map<String, C2359pu> A00;
    public final Set<C2359pu> A01;

    public C2348pi() {
        this.A00 = new HashMap();
        this.A01 = new HashSet();
    }

    public Collection<C2359pu> A00() {
        return this.A01;
    }

    public Collection<C2359pu> A01() {
        return this.A00.values();
    }

    public void A04() {
        this.A00.clear();
        Iterator<C2359pu> it = this.A01.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A02;
            if (strArr[5].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            A02[6] = "aJOeJxsM87dt105FXzNZlrhAEbJ2aQd4";
            if (zHasNext) {
                C2359pu next = it.next();
                this.A00.put(next.A02, next);
            } else {
                this.A01.clear();
                return;
            }
        }
    }

    public boolean A06(C2359pu c2359pu) {
        if (this.A01.add(c2359pu)) {
            this.A00.remove(c2359pu.A02);
            return true;
        }
        return false;
    }
}
