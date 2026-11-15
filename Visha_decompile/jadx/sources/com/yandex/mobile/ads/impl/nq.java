package com.yandex.mobile.ads.impl;

import defpackage.y45;

public abstract class nq {

    public static final class a extends nq {
        private final String a;

        public a(String str) {
            super(0);
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && y45.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            String str = this.a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return "AdditionalConsent(value=" + this.a + ")";
        }
    }

    public static final class b extends nq {
        private final boolean a;

        public b(boolean z) {
            super(0);
            this.a = z;
        }

        public final boolean a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && this.a == ((b) obj).a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.a);
        }

        public final String toString() {
            return "CmpPresent(value=" + this.a + ")";
        }
    }

    public static final class c extends nq {
        private final String a;

        public c(String str) {
            super(0);
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && y45.e(this.a, ((c) obj).a);
        }

        public final int hashCode() {
            String str = this.a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return "ConsentString(value=" + this.a + ")";
        }
    }

    public static final class d extends nq {
        private final String a;

        public d(String str) {
            super(0);
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && y45.e(this.a, ((d) obj).a);
        }

        public final int hashCode() {
            String str = this.a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return "Gdpr(value=" + this.a + ")";
        }
    }

    public static final class e extends nq {
        private final String a;

        public e(String str) {
            super(0);
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && y45.e(this.a, ((e) obj).a);
        }

        public final int hashCode() {
            String str = this.a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return "PurposeConsents(value=" + this.a + ")";
        }
    }

    public static final class f extends nq {
        private final String a;

        public f(String str) {
            super(0);
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof f) && y45.e(this.a, ((f) obj).a);
        }

        public final int hashCode() {
            String str = this.a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return "VendorConsents(value=" + this.a + ")";
        }
    }

    private nq() {
    }

    public nq(int i) {
        this();
    }
}
