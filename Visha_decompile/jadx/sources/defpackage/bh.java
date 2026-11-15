package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

public final class bh extends ah {
    public static final a d = new a(null);
    public Object[] b;
    public int c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b extends b3 {
        public int d = -1;

        public b() {
        }

        @Override
        public void b() {
            do {
                int i = this.d + 1;
                this.d = i;
                if (i >= bh.this.b.length) {
                    break;
                }
            } while (bh.this.b[this.d] == null);
            if (this.d >= bh.this.b.length) {
                c();
                return;
            }
            Object obj = bh.this.b[this.d];
            y45.h(obj, "null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl");
            d(obj);
        }
    }

    public bh(Object[] objArr, int i) {
        super(null);
        this.b = objArr;
        this.c = i;
    }

    private final void k(int i) {
        Object[] objArr = this.b;
        if (objArr.length <= i) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length * 2);
            y45.i(objArrCopyOf, "copyOf(this, newSize)");
            this.b = objArrCopyOf;
        }
    }

    @Override
    public int b() {
        return this.c;
    }

    @Override
    public void c(int i, Object obj) {
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        k(i);
        if (this.b[i] == null) {
            this.c = b() + 1;
        }
        this.b[i] = obj;
    }

    @Override
    public Object get(int i) {
        return hi.f0(this.b, i);
    }

    @Override
    public Iterator iterator() {
        return new b();
    }

    public bh() {
        this(new Object[20], 0);
    }
}
