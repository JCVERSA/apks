package defpackage;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class lq8 implements o85 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final lq8 a(Type type) {
            y45.j(type, "type");
            boolean z = type instanceof Class;
            if (z) {
                Class cls = (Class) type;
                if (cls.isPrimitive()) {
                    return new jq8(cls);
                }
            }
            if ((type instanceof GenericArrayType) || (z && ((Class) type).isArray())) {
                return new vp8(type);
            }
            return type instanceof WildcardType ? new oq8((WildcardType) type) : new zp8(type);
        }

        public a() {
        }
    }

    public abstract Type O();

    @Override
    public k65 a(o54 o54Var) {
        Object obj;
        Object next;
        xw0 xw0VarC;
        y45.j(o54Var, "fqName");
        Iterator it = getAnnotations().iterator();
        do {
            obj = null;
            if (it.hasNext()) {
                next = it.next();
                xw0VarC = ((k65) next).c();
            }
            return (k65) obj;
        } while (!y45.e(xw0VarC != null ? xw0VarC.b() : null, o54Var));
        obj = next;
        return (k65) obj;
    }

    public boolean equals(Object obj) {
        return (obj instanceof lq8) && y45.e(O(), ((lq8) obj).O());
    }

    public int hashCode() {
        return O().hashCode();
    }

    public String toString() {
        return getClass().getName() + ": " + O();
    }
}
