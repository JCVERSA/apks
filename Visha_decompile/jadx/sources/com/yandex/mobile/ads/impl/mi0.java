package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class mi0 {
    private final String a;

    public static final class a {
        private String a;

        public final a a(String str) {
            return this;
        }

        public final a b(String str) {
            ce2.a(str);
            return this;
        }

        public final a c(String str) {
            ce2.b(str);
            return this;
        }

        public final a d(String str) {
            b bVar;
            b[] bVarArrValues = b.values();
            int length = bVarArrValues.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    bVar = null;
                    break;
                }
                bVar = bVarArrValues[i];
                if (y45.e(bVar.a(), str)) {
                    break;
                }
                i++;
            }
            if (bVar == null) {
                bVar = b.c;
            }
            if (bVar == b.c) {
                ce2.b(str);
            }
            return this;
        }

        public final a e(String str) {
            ce2.a(str);
            return this;
        }

        public final a f(String str) {
            this.a = str;
            return this;
        }

        public final a g(String str) {
            c[] cVarArrValues = c.values();
            int length = cVarArrValues.length;
            for (int i = 0; i < length && !y45.e(cVarArrValues[i].a(), str); i++) {
            }
            return this;
        }

        public final void h(String str) {
        }

        public final a i(String str) {
            d dVar;
            d[] dVarArrValues = d.values();
            int length = dVarArrValues.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    dVar = null;
                    break;
                }
                dVar = dVarArrValues[i];
                if (y45.e(dVar.a(), str)) {
                    break;
                }
                i++;
            }
            if (dVar == null) {
                dVar = d.c;
            }
            if (dVar == d.c) {
                ce2.b(str);
            }
            return this;
        }

        public final a j(String str) {
            ce2.b(str);
            return this;
        }

        public final mi0 a() {
            return new mi0(this.a, 0);
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.mi0$b[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.mi0$b[]) from 0x0026: INVOKE (r0v1 com.yandex.mobile.ads.impl.mi0$b[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
    public static final class b {
        EF0(TtmlNode.LEFT),
        EF1(TtmlNode.RIGHT),
        c("leftOffset");

        private final String b;

        static {
            kotlin.enums.a.a(bVarArr);
        }

        private b(String str) {
            super(str, i);
            this.b = str;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) d.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.mi0$c[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.mi0$c[]) from 0x0024: INVOKE (r0v1 com.yandex.mobile.ads.impl.mi0$c[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
    public static final class c {
        EF7("StaticResource"),
        EF17("IFrameResource"),
        EF27("HTMLResource");

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
            kotlin.enums.a.a(cVarArr);
            c = new a(0);
        }

        private c(String str) {
            super(str, i);
            this.b = str;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) d.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.mi0$d[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.mi0$d[]) from 0x0026: INVOKE (r0v1 com.yandex.mobile.ads.impl.mi0$d[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
    public static final class d {
        EF0("top"),
        EF1("bottom"),
        c("topOffset");

        private final String b;

        static {
            kotlin.enums.a.a(dVarArr);
        }

        private d(String str) {
            super(str, i);
            this.b = str;
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) d.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    private mi0(String str) {
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public mi0(String str, int i) {
        this(str);
    }
}
