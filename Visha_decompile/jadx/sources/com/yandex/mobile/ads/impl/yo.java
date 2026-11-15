package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.yo[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.yo[]) from 0x001c: INVOKE (r0v1 com.yandex.mobile.ads.impl.yo[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class yo {
    EF0("browser"),
    d("webview");

    public static final a c;
    private final String b;

    public static final class a {
        private a() {
        }

        public a(int i) {
            this();
        }
    }

    static {
        kotlin.enums.a.a(yoVarArr);
        c = new a(0);
    }

    private yo(String str) {
        super(str, i);
        this.b = str;
    }

    public static yo valueOf(String str) {
        return (yo) Enum.valueOf(yo.class, str);
    }

    public static yo[] values() {
        return (yo[]) e.clone();
    }

    public final String a() {
        return this.b;
    }
}
