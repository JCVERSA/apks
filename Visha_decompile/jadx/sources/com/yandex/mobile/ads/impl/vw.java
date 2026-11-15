package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class vw {
    private final String a;
    private final String b;
    private final a c;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.vw$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.vw$a[]) from 0x001c: INVOKE (r0v1 com.yandex.mobile.ads.impl.vw$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
        EF0("error"),
        c("message");

        private final String b;

        static {
            kotlin.enums.a.a(aVarArr);
        }

        private a(String str) {
            super(str, i);
            this.b = str;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) d.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    public vw(String str, String str2, a aVar) {
        y45.j(aVar, "type");
        this.a = str;
        this.b = str2;
        this.c = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vw)) {
            return false;
        }
        vw vwVar = (vw) obj;
        return y45.e(this.a, vwVar.a) && y45.e(this.b, vwVar.b) && this.c == vwVar.c;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return this.c.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "DebugPanelAlertData(title=" + this.a + ", message=" + this.b + ", type=" + this.c + ")";
    }
}
