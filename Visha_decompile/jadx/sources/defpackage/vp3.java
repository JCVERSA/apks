package defpackage;

import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.text.StringSubstitutor;

public final class vp3 {
    public final String a;
    public final Map b;

    public static final class b {
        public final String a;
        public Map b = null;

        public b(String str) {
            this.a = str;
        }

        public vp3 a() {
            return new vp3(this.a, this.b == null ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(this.b)));
        }

        public b b(Annotation annotation) {
            if (this.b == null) {
                this.b = new HashMap();
            }
            this.b.put(annotation.annotationType(), annotation);
            return this;
        }
    }

    public static b a(String str) {
        return new b(str);
    }

    public static vp3 d(String str) {
        return new vp3(str, Collections.emptyMap());
    }

    public String b() {
        return this.a;
    }

    public Annotation c(Class cls) {
        return (Annotation) this.b.get(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vp3)) {
            return false;
        }
        vp3 vp3Var = (vp3) obj;
        return this.a.equals(vp3Var.a) && this.b.equals(vp3Var.b);
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public String toString() {
        return "FieldDescriptor{name=" + this.a + ", properties=" + this.b.values() + StringSubstitutor.DEFAULT_VAR_END;
    }

    public vp3(String str, Map map) {
        this.a = str;
        this.b = map;
    }
}
