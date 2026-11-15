package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.t50[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.t50[]) from 0x0088: INVOKE (r0v1 com.yandex.mobile.ads.impl.t50[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class t50 {
    d("NO_ERROR"),
    e("PROTOCOL_ERROR"),
    f("INTERNAL_ERROR"),
    g("FLOW_CONTROL_ERROR"),
    EF4("SETTINGS_TIMEOUT"),
    EF5("STREAM_CLOSED"),
    EF6("FRAME_SIZE_ERROR"),
    h("REFUSED_STREAM"),
    i("CANCEL"),
    EF91("COMPRESSION_ERROR"),
    EF100("CONNECT_ERROR"),
    EF109("ENHANCE_YOUR_CALM"),
    EF118("INADEQUATE_SECURITY"),
    EF127("HTTP_1_1_REQUIRED");

    public static final a c;
    private final int b;

    public static final class a {
        private a() {
        }

        public static t50 a(int i) {
            for (t50 t50Var : t50.values()) {
                if (t50Var.a() == i) {
                    return t50Var;
                }
            }
            return null;
        }

        public a(int i) {
            this();
        }
    }

    static {
        kotlin.enums.a.a(t50VarArr);
        c = new a(0);
    }

    private t50(String str) {
        super(str, i);
        this.b = i;
    }

    public static t50 valueOf(String str) {
        return (t50) Enum.valueOf(t50.class, str);
    }

    public static t50[] values() {
        return (t50[]) j.clone();
    }

    public final int a() {
        return this.b;
    }
}
