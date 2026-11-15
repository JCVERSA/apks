package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class r3 extends si2 {
    public static final int d = 0;
    private final x3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r3(x3 x3Var, xc1 xc1Var) {
        super(xc1Var);
        y45.j(x3Var, "reason");
        this.c = x3Var;
    }

    public final x3 a() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!y45.e(r3.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        y45.h(obj, "null cannot be cast to non-null type com.monetization.ads.base.AdFetchError");
        return this.c == ((r3) obj).c;
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public static final class a {
        /* JADX WARN: Code duplicated, block: B:26:0x0053  */
        /* JADX WARN: Code duplicated, block: B:28:0x0057  */
        /* JADX WARN: Code duplicated, block: B:29:0x005a  */
        /* JADX WARN: Code duplicated, block: B:31:0x005e  */
        /* JADX WARN: Code duplicated, block: B:32:0x0061  */
        /* JADX WARN: Code duplicated, block: B:37:0x006c A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:38:0x006e  */
        /* JADX WARN: Code duplicated, block: B:39:0x0071  */
        public static r3 a(xc1 xc1Var) {
            x3 x3Var;
            int i = xc1Var != null ? xc1Var.a : -1;
            sp0.b(Integer.valueOf(i));
            if (204 == i) {
                x3Var = x3.d;
            } else {
                Map<String, String> map = xc1Var != null ? xc1Var.c : null;
                Integer numValueOf = xc1Var != null ? Integer.valueOf(xc1Var.a) : null;
                if (numValueOf != null && 400 == numValueOf.intValue() && map != null) {
                    vh0 vh0Var = vh0.Y;
                    int i2 = nf0.b;
                    y45.j(map, "responseHeaders");
                    y45.j(vh0Var, "httpHeader");
                    String strA = nf0.a(map, vh0Var);
                    if (strA != null && Boolean.parseBoolean(strA)) {
                        x3Var = x3.h;
                    } else if (403 == i) {
                        x3Var = x3.g;
                    } else if (404 == i) {
                        x3Var = x3.b;
                    } else if (500 > i && i <= 599) {
                        x3Var = x3.f;
                    } else if (-1 == i) {
                        x3Var = x3.k;
                    } else {
                        x3Var = x3.e;
                    }
                } else if (403 == i) {
                    x3Var = x3.g;
                } else if (404 == i) {
                    x3Var = x3.b;
                } else if (500 > i) {
                    if (-1 == i) {
                        x3Var = x3.k;
                    } else {
                        x3Var = x3.e;
                    }
                } else if (-1 == i) {
                    x3Var = x3.k;
                } else {
                    x3Var = x3.e;
                }
            }
            return new r3(x3Var, xc1Var);
        }

        public static r3 a(si2 si2Var) {
            x3 x3Var;
            y45.j(si2Var, "volleyError");
            xc1 xc1Var = si2Var.b;
            Integer numValueOf = xc1Var != null ? Integer.valueOf(xc1Var.a) : null;
            if (numValueOf == null) {
                if (si2Var instanceof nd1) {
                    x3Var = x3.k;
                } else if (si2Var instanceof l52) {
                    x3Var = x3.l;
                } else if (si2Var instanceof ai) {
                    x3Var = x3.m;
                } else if (si2Var instanceof fp) {
                    x3Var = x3.n;
                } else {
                    x3Var = si2Var instanceof dg1 ? x3.o : x3.p;
                }
            } else {
                int iIntValue = numValueOf.intValue();
                x3Var = (500 > iIntValue || iIntValue > 599) ? x3.e : x3.f;
            }
            sp0.b(numValueOf);
            return new r3(x3Var, xc1Var);
        }
    }
}
