package defpackage;

import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public final class ns7 {
    public static final a b = new a(null);
    public static final ns7 c = new ns7(null);
    public final Object a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ns7 a() {
            return ns7.c;
        }

        public final ns7 b(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            return new ns7(obj, null);
        }

        public a() {
        }
    }

    public ns7(Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj);
    }

    public final Object b() {
        Object obj = this.a;
        if (obj != null) {
            return obj;
        }
        throw new NoSuchElementException("No value present");
    }

    public final boolean c() {
        return this.a != null;
    }

    public final Object d() {
        return this.a;
    }

    public ns7(Object obj) {
        this.a = obj;
    }
}
