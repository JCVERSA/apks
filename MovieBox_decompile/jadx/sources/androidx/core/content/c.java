package androidx.core.content;

import android.content.LocusId;
import android.os.Build;
import androidx.core.util.i;

public final class c {

    private final String f7829a;

    private final LocusId f7830b;

    private static class a {
        static LocusId a(String str) {
            return new LocusId(str);
        }

        static String b(LocusId locusId) {
            return locusId.getId();
        }
    }

    public c(String str) {
        this.f7829a = (String) i.j(str, "id cannot be empty");
        if (Build.VERSION.SDK_INT >= 29) {
            this.f7830b = a.a(str);
        } else {
            this.f7830b = null;
        }
    }

    private String a() {
        return this.f7829a.length() + "_chars";
    }

    public static c c(LocusId locusId) {
        i.h(locusId, "locusId cannot be null");
        return new c((String) i.j(a.b(locusId), "id cannot be empty"));
    }

    public LocusId b() {
        return this.f7830b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        String str = this.f7829a;
        if (str == null) {
            return cVar.f7829a == null;
        }
        return str.equals(cVar.f7829a);
    }

    public int hashCode() {
        String str = this.f7829a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "LocusIdCompat[" + a() + "]";
    }
}
