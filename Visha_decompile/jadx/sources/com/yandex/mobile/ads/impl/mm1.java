package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.mm1[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.mm1[]) from 0x004e: INVOKE (r0v1 com.yandex.mobile.ads.impl.mm1[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class mm1 {
    d("http/1.0"),
    e("http/1.1"),
    f("spdy/3.1"),
    g("h2"),
    h("h2_prior_knowledge"),
    i("quic");

    public static final a c;
    private final String b;

    public static final class a {
        private a() {
        }

        public static mm1 a(String str) throws IOException {
            y45.j(str, "protocol");
            mm1 mm1Var = mm1.d;
            if (!y45.e(str, mm1Var.b)) {
                mm1Var = mm1.e;
                if (!y45.e(str, mm1Var.b)) {
                    mm1Var = mm1.h;
                    if (!y45.e(str, mm1Var.b)) {
                        mm1Var = mm1.g;
                        if (!y45.e(str, mm1Var.b)) {
                            mm1Var = mm1.f;
                            if (!y45.e(str, mm1Var.b)) {
                                mm1Var = mm1.i;
                                if (!y45.e(str, mm1Var.b)) {
                                    throw new IOException("Unexpected protocol: " + str);
                                }
                            }
                        }
                    }
                }
            }
            return mm1Var;
        }

        public a(int i) {
            this();
        }
    }

    static {
        kotlin.enums.a.a(mm1VarArr);
        c = new a(0);
    }

    private mm1(String str) {
        super(str, i);
        this.b = str;
    }

    public static mm1 valueOf(String str) {
        return (mm1) Enum.valueOf(mm1.class, str);
    }

    public static mm1[] values() {
        return (mm1[]) j.clone();
    }

    @Override
    public final String toString() {
        return this.b;
    }
}
