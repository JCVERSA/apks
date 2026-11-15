package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v2 com.yandex.mobile.ads.impl.pn0[], still in use, count: 1, list:
  (r1v2 com.yandex.mobile.ads.impl.pn0[]) from 0x001a: INVOKE (r1v2 com.yandex.mobile.ads.impl.pn0[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class pn0 {
    EF0("design_v1"),
    EF17("instream_design_v2");

    public static final a c;
    private static final pn0 d;
    private final String b;

    public static final class a {
        private a() {
        }

        public a(int i) {
            this();
        }
    }

    static {
        kotlin.enums.a.a(pn0VarArr);
        c = new a(0);
        d = pn0Var;
    }

    private pn0(String str) {
        super(str, i);
        this.b = str;
    }

    public static pn0 valueOf(String str) {
        return (pn0) Enum.valueOf(pn0.class, str);
    }

    public static pn0[] values() {
        return (pn0[]) e.clone();
    }

    public final String b() {
        return this.b;
    }
}
