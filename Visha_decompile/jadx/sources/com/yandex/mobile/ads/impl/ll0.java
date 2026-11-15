package com.yandex.mobile.ads.impl;

import android.net.Uri;
import defpackage.y45;

public interface ll0 {

    public static final class a implements ll0 {
        private final String a;

        public a(String str) {
            y45.j(str, "message");
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
            return this.a.hashCode();
        }

        public final String toString() {
            return "Failure(message=" + this.a + ")";
        }
    }

    public static final class b implements ll0 {
        public static final b a = new b();

        private b() {
        }
    }

    public static final class c implements ll0 {
        private final Uri a;

        public c(Uri uri) {
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
            return (obj instanceof c) && y45.e(this.a, ((c) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Success(reportUri=" + this.a + ")";
        }
    }
}
