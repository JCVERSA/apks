package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class ay {
    private final a a;
    private final List<String> b;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.ay$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.ay$a[]) from 0x0024: INVOKE (r0v1 com.yandex.mobile.ads.impl.ay$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
        c,
        d;

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
            return (a[]) e.clone();
        }
    }

    public ay(a aVar, List<String> list) {
        y45.j(aVar, "status");
        this.a = aVar;
        this.b = list;
    }

    public final List<String> a() {
        return this.b;
    }

    public final a b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ay)) {
            return false;
        }
        ay ayVar = (ay) obj;
        return this.a == ayVar.a && y45.e(this.b, ayVar.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        List<String> list = this.b;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        return "DebugPanelSdkIntegrationStatusData(status=" + this.a + ", messages=" + this.b + ")";
    }
}
