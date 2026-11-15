package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Locale;

public final class xa2 extends RuntimeException {
    private final wa2 b;
    private final a c;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.xa2$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.xa2$a[]) from 0x0023: INVOKE (r0v1 com.yandex.mobile.ads.impl.xa2$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
    public static final class a {
        EF0("VERIFICATION_REJECTED"),
        c("VERIFICATION_NOT_SUPPORTED"),
        d("ERROR_RESOURCE_LOAD");

        private final int b;

        static {
            kotlin.enums.a.a(aVarArr);
        }

        private a(String str) {
            super(str, i);
            this.b = i;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) e.clone();
        }

        public final int a() {
            return this.b;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public xa2(wa2 wa2Var, a aVar) {
        y45.j(wa2Var, "verification");
        y45.j(aVar, "reason");
        String strName = aVar.name();
        Locale locale = Locale.US;
        y45.i(locale, "US");
        String lowerCase = strName.toLowerCase(locale);
        y45.i(lowerCase, "toLowerCase(...)");
        super("Verification not executed with reason = " + lowerCase);
        this.b = wa2Var;
        this.c = aVar;
    }

    public final a a() {
        return this.c;
    }

    public final wa2 b() {
        return this.b;
    }
}
