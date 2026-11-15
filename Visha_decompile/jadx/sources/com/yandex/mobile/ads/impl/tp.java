package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class tp {
    private final a a;
    private final String b;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.tp$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.tp$a[]) from 0x001a: INVOKE (r0v1 com.yandex.mobile.ads.impl.tp$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
        b,
        c;

        static {
            kotlin.enums.a.a(aVarArr);
        }

        private a() {
            super(str, i);
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) d.clone();
        }
    }

    public tp(a aVar, String str) {
        y45.j(aVar, "type");
        this.a = aVar;
        this.b = str;
    }

    public final String a() {
        return this.b;
    }

    public final a b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tp)) {
            return false;
        }
        tp tpVar = (tp) obj;
        return this.a == tpVar.a && y45.e(this.b, tpVar.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "CloseButtonValue(type=" + this.a + ", text=" + this.b + ")";
    }
}
