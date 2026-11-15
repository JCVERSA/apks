package defpackage;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import org.mozilla.javascript.ES6Iterator;

public abstract class qp8 implements l65 {
    public static final a b = new a(null);
    public final by6 a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final qp8 a(Object obj, by6 by6Var) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            if (ReflectClassUtilKt.h(obj.getClass())) {
                return new cq8(by6Var, (Enum) obj);
            }
            if (obj instanceof Annotation) {
                return new rp8(by6Var, (Annotation) obj);
            }
            if (obj instanceof Object[]) {
                return new up8(by6Var, (Object[]) obj);
            }
            return obj instanceof Class ? new yp8(by6Var, (Class) obj) : new eq8(by6Var, obj);
        }

        public a() {
        }
    }

    public qp8(by6 by6Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(by6Var);
    }

    @Override
    public by6 getName() {
        return this.a;
    }

    public qp8(by6 by6Var) {
        this.a = by6Var;
    }
}
