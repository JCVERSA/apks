package com.yandex.mobile.ads.impl;

import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class d01 {
    private final rz0 a;

    public static final class a {
        private final String a;
        private final EnumC0311a b;

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.d01$a$a[], still in use, count: 1, list:
          (r0v1 com.yandex.mobile.ads.impl.d01$a$a[]) from 0x001a: INVOKE (r0v1 com.yandex.mobile.ads.impl.d01$a$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
        public static final class EnumC0311a {
            b,
            c;

            static {
                kotlin.enums.a.a(enumC0311aArr);
            }

            private EnumC0311a() {
                super(str, i);
            }

            public static EnumC0311a valueOf(String str) {
                return (EnumC0311a) Enum.valueOf(EnumC0311a.class, str);
            }

            public static EnumC0311a[] values() {
                return (EnumC0311a[]) d.clone();
            }
        }

        public a(String str, EnumC0311a enumC0311a) {
            y45.j(str, "message");
            y45.j(enumC0311a, "type");
            this.a = str;
            this.b = enumC0311a;
        }

        public final String a() {
            return this.a;
        }

        public final EnumC0311a b() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && this.b == aVar.b;
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "MediationNetworkMessage(message=" + this.a + ", type=" + this.b + ")";
        }
    }

    public d01(rz0 rz0Var) {
        y45.j(rz0Var, "mediationNetworkValidator");
        this.a = rz0Var;
    }

    private static void a(ArrayList arrayList, String str) {
        int iMax = Math.max(4, 44 - str.length());
        int i = iMax / 2;
        String strJ = g1a.J("-", i);
        String strJ2 = g1a.J("-", (iMax % 2) + i);
        String strJ3 = g1a.J(" ", 1);
        arrayList.add(new a(strJ + strJ3 + str + strJ3 + strJ2, a.EnumC0311a.b));
    }

    private static void a(ArrayList arrayList, List list, String str, boolean z) {
        a.EnumC0311a enumC0311a;
        String str2;
        String str3;
        if (z) {
            enumC0311a = a.EnumC0311a.b;
            str2 = "ADAPTERS";
            str3 = "INTEGRATED SUCCESSFULLY";
        } else {
            enumC0311a = a.EnumC0311a.c;
            str2 = "MISSING ADAPTERS";
            str3 = "NOT INTEGRATED";
        }
        ArrayList arrayList2 = new ArrayList(defpackage.z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((qz0.c) it.next()).a());
        }
        arrayList.add(new a(defpackage.i81.y0(arrayList2, null, str2 + ": ", null, 0, null, null, 61, null), enumC0311a));
        arrayList.add(new a(str + ": " + str3, enumC0311a));
    }

    private static void a(ArrayList arrayList, String str, String str2) {
        if (str != null && !j1a.o0(str)) {
            arrayList.add(new a("SDK Version: " + str, a.EnumC0311a.b));
        }
        if (str2 == null || j1a.o0(str2)) {
            return;
        }
        arrayList.add(new a("ADAPTERS Version: " + str2, a.EnumC0311a.b));
    }

    public final ArrayList a(ArrayList arrayList) {
        y45.j(arrayList, "networks");
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            qz0 qz0Var = (qz0) it.next();
            a(arrayList2, qz0Var.d());
            String strE = qz0Var.e();
            String strB = ((qz0.c) defpackage.i81.o0(qz0Var.b())).b();
            this.a.getClass();
            boolean zA = rz0.a(qz0Var);
            if (zA) {
                a(arrayList2, strE, strB);
            }
            a(arrayList2, qz0Var.b(), qz0Var.d(), zA);
        }
        return arrayList2;
    }
}
