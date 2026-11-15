package dc;

import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class b {

    private final String f59001a;

    private final Map f59002b;

    public static final class C0704b {

        private final String f59003a;

        private Map f59004b = null;

        C0704b(String str) {
            this.f59003a = str;
        }

        public b a() {
            return new b(this.f59003a, this.f59004b == null ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(this.f59004b)));
        }

        public C0704b b(Annotation annotation) {
            if (this.f59004b == null) {
                this.f59004b = new HashMap();
            }
            this.f59004b.put(annotation.annotationType(), annotation);
            return this;
        }
    }

    public static C0704b a(String str) {
        return new C0704b(str);
    }

    public static b d(String str) {
        return new b(str, Collections.emptyMap());
    }

    public String b() {
        return this.f59001a;
    }

    public Annotation c(Class cls) {
        return (Annotation) this.f59002b.get(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f59001a.equals(bVar.f59001a) && this.f59002b.equals(bVar.f59002b);
    }

    public int hashCode() {
        return (this.f59001a.hashCode() * 31) + this.f59002b.hashCode();
    }

    public String toString() {
        return "FieldDescriptor{name=" + this.f59001a + ", properties=" + this.f59002b.values() + "}";
    }

    private b(String str, Map map) {
        this.f59001a = str;
        this.f59002b = map;
    }
}
