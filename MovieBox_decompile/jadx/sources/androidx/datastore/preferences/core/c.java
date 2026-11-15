package androidx.datastore.preferences.core;

import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class c {

    public static final class a {

        private final String f8344a;

        public a(String name) {
            Intrinsics.h(name, "name");
            this.f8344a = name;
        }

        public final String a() {
            return this.f8344a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Intrinsics.c(this.f8344a, ((a) obj).f8344a);
            }
            return false;
        }

        public int hashCode() {
            return this.f8344a.hashCode();
        }

        public String toString() {
            return this.f8344a;
        }
    }

    public static final class b {
    }

    public abstract Map a();

    public abstract Object b(a aVar);

    public final MutablePreferences c() {
        return new MutablePreferences(MapsKt.w(a()), false);
    }

    public final c d() {
        return new MutablePreferences(MapsKt.w(a()), true);
    }
}
