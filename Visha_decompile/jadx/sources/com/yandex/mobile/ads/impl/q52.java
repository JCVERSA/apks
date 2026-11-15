package com.yandex.mobile.ads.impl;

import defpackage.y45;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.q52[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.q52[]) from 0x0042: INVOKE (r0v1 com.yandex.mobile.ads.impl.q52[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class q52 {
    d("TLSv1.3"),
    e("TLSv1.2"),
    f("TLSv1.1"),
    g("TLSv1"),
    h("SSLv3");

    public static final a c;
    private final String b;

    public static final class a {
        private a() {
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public static q52 a(String str) {
            y45.j(str, "javaName");
            int iHashCode = str.hashCode();
            if (iHashCode != 79201641) {
                if (iHashCode != 79923350) {
                    switch (iHashCode) {
                        case -503070503:
                            if (str.equals("TLSv1.1")) {
                                return q52.f;
                            }
                            break;
                        case -503070502:
                            if (str.equals("TLSv1.2")) {
                                return q52.e;
                            }
                            break;
                        case -503070501:
                            if (str.equals("TLSv1.3")) {
                                return q52.d;
                            }
                            break;
                    }
                } else if (str.equals("TLSv1")) {
                    return q52.g;
                }
            } else if (str.equals("SSLv3")) {
                return q52.h;
            }
            throw new IllegalArgumentException("Unexpected TLS version: " + str);
        }

        public a(int i) {
            this();
        }
    }

    static {
        kotlin.enums.a.a(q52VarArr);
        c = new a(0);
    }

    private q52(String str) {
        super(str, i);
        this.b = str;
    }

    public static q52 valueOf(String str) {
        return (q52) Enum.valueOf(q52.class, str);
    }

    public static q52[] values() {
        return (q52[]) i.clone();
    }

    public final String a() {
        return this.b;
    }
}
