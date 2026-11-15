package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public interface dy {

    public static final class a implements dy {
        public static final a a = new a();

        private a() {
        }
    }

    public static final class b implements dy {
        private final String a;

        public b(String str) {
            y45.j(str, TtmlNode.ATTR_ID);
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && y45.e(this.a, ((b) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "OnAdUnitClick(id=" + this.a + ")";
        }
    }

    public static final class c implements dy {
        public static final c a = new c();

        private c() {
        }
    }

    public static final class d implements dy {
        public static final d a = new d();

        private d() {
        }
    }

    public static final class e implements dy {
        private final boolean a;

        public e(boolean z) {
            this.a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && this.a == ((e) obj).a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.a);
        }

        public final String toString() {
            return "OnDebugErrorIndicatorSwitch(isChecked=" + this.a + ")";
        }
    }

    public static final class f implements dy {
        private final iy.g a;

        public f(iy.g gVar) {
            y45.j(gVar, "uiUnit");
            this.a = gVar;
        }

        public final iy.g a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof f) && y45.e(this.a, ((f) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "OnMediationNetworkClick(uiUnit=" + this.a + ")";
        }
    }

    public static final class g implements dy {
        public static final g a = new g();

        private g() {
        }
    }

    public static final class h implements dy {
        private final String a;

        public h(String str) {
            y45.j(str, "waring");
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof h) && y45.e(this.a, ((h) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "OnWarningButtonClick(waring=" + this.a + ")";
        }
    }
}
