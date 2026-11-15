package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class pz5 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(int i) {
            if (i == 21) {
                return "allmusic";
            }
            if (i != 25) {
                return i != 26 ? "allmusic" : "artist";
            }
            return "album";
        }

        public final void b(int i) {
            p06.b0("vd_audiolist_order_manually_drag", kotlin.collections.a.q(abb.a("from", a(i))));
        }

        public final void c(int i) {
            p06.b0("vd_audiolist_order_manually_show", kotlin.collections.a.q(abb.a("from", a(i))));
        }

        public a() {
        }
    }

    public static final void a(int i) {
        a.b(i);
    }

    public static final void b(int i) {
        a.c(i);
    }
}
