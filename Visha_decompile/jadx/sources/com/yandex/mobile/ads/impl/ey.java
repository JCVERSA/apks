package com.yandex.mobile.ads.impl;

import android.net.Uri;
import defpackage.y45;

public interface ey {

    public static final class a implements ey {
        public static final a a = new a();

        private a() {
        }
    }

    public static final class b implements ey {
        public static final b a = new b();

        private b() {
        }
    }

    public static final class c implements ey {
        private final String a;

        public c(String str) {
            y45.j(str, "text");
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
            return this.a.hashCode();
        }

        public final String toString() {
            return "Message(text=" + this.a + ")";
        }
    }

    public static final class d implements ey {
        private final Uri a;

        public d(Uri uri) {
            y45.j(uri, "reportUri");
            this.a = uri;
        }

        public final Uri a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && y45.e(this.a, ((d) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "ShareReport(reportUri=" + this.a + ")";
        }
    }

    public static final class e implements ey {
        private final String a;
        private final String b;

        public e(String str) {
            y45.j("Warning", "title");
            y45.j(str, "message");
            this.a = "Warning";
            this.b = str;
        }

        public final String a() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return y45.e(this.a, eVar.a) && y45.e(this.b, eVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Warning(title=" + this.a + ", message=" + this.b + ")";
        }
    }
}
