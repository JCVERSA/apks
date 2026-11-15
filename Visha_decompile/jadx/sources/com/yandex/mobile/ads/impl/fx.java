package com.yandex.mobile.ads.impl;

import defpackage.y45;

public abstract class fx {
    private final String a;

    public static final class a extends fx {
        private final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super("Ad Units", 0);
            y45.j(str, "unitId");
            this.b = str;
        }

        public final String b() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && y45.e(this.b, ((a) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return "AdUnit(unitId=" + this.b + ")";
        }
    }

    public static final class b extends fx {
        private final iy.g b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(iy.g gVar) {
            super(gVar.f(), 0);
            y45.j(gVar, "adapter");
            this.b = gVar;
        }

        public final iy.g b() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && y45.e(this.b, ((b) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return "AdUnitMediationAdapter(adapter=" + this.b + ")";
        }
    }

    public static final class c extends fx {
        public static final c b = new c();

        private c() {
            super("Ad Units", 0);
        }
    }

    public static final class d extends fx {
        public static final d b = new d();

        private d() {
            super("Debug Panel", 0);
        }
    }

    public static final class e extends fx {
        private final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str) {
            super(str, 0);
            y45.j(str, "network");
            this.b = str;
        }

        public final String b() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && y45.e(this.b, ((e) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public final String toString() {
            return "MediationNetwork(network=" + this.b + ")";
        }
    }

    private fx(String str) {
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public fx(String str, int i) {
        this(str);
    }
}
