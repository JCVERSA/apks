package defpackage;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class u82 {
    public static final a c;
    public static int d;
    public static final int e;
    public static final int f;
    public static final int g;
    public static final int h;
    public static final int i;
    public static final int j;
    public static final int k;
    public static final int l;
    public static final int m;
    public static final int n;
    public static final u82 o;
    public static final u82 p;
    public static final u82 q;
    public static final u82 r;
    public static final u82 s;
    public static final u82 t;
    public static final u82 u;
    public static final u82 v;
    public static final u82 w;
    public static final u82 x;
    public static final List y;
    public static final List z;
    public final List a;
    public final int b;

    public static final class a {

        public static final class C0450a {
            public final int a;
            public final String b;

            public C0450a(int i, String str) {
                y45.j(str, "name");
                this.a = i;
                this.b = str;
            }

            public final int a() {
                return this.a;
            }

            public final String b() {
                return this.b;
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int b() {
            return u82.k;
        }

        public final int c() {
            return u82.l;
        }

        public final int d() {
            return u82.i;
        }

        public final int e() {
            return u82.e;
        }

        public final int f() {
            return u82.h;
        }

        public final int g() {
            return u82.f;
        }

        public final int h() {
            return u82.g;
        }

        public final int i() {
            return u82.j;
        }

        public final int j() {
            int i = u82.d;
            u82.d <<= 1;
            return i;
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        a.C0450a c0450a;
        a.C0450a c0450a2;
        a aVar = new a(null);
        c = aVar;
        d = 1;
        int iJ = aVar.j();
        e = iJ;
        int iJ2 = aVar.j();
        f = iJ2;
        int iJ3 = aVar.j();
        g = iJ3;
        int iJ4 = aVar.j();
        h = iJ4;
        int iJ5 = aVar.j();
        i = iJ5;
        int iJ6 = aVar.j();
        j = iJ6;
        int iJ7 = aVar.j() - 1;
        k = iJ7;
        int i2 = iJ | iJ2 | iJ3;
        l = i2;
        int i3 = iJ2 | iJ5 | iJ6;
        m = i3;
        int i4 = iJ5 | iJ6;
        n = i4;
        int i5 = 2;
        o = new u82(iJ7, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        p = new u82(i4, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        q = new u82(iJ, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        r = new u82(iJ2, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        s = new u82(iJ3, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        t = new u82(i2, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        u = new u82(iJ4, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        v = new u82(iJ5, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        w = new u82(iJ6, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        x = new u82(i3, 0 == true ? 1 : 0, i5, 0 == true ? 1 : 0);
        Field[] fields = u82.class.getFields();
        y45.i(fields, "T::class.java.fields");
        ArrayList<Field> arrayList = new ArrayList();
        for (Field field : fields) {
            if (Modifier.isStatic(field.getModifiers())) {
                arrayList.add(field);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Field field2 : arrayList) {
            Object obj = field2.get(null);
            u82 u82Var = obj instanceof u82 ? (u82) obj : null;
            if (u82Var != null) {
                int i6 = u82Var.b;
                String name = field2.getName();
                y45.i(name, "field.name");
                c0450a2 = new a.C0450a(i6, name);
            } else {
                c0450a2 = null;
            }
            if (c0450a2 != null) {
                arrayList2.add(c0450a2);
            }
        }
        y = arrayList2;
        Field[] fields2 = u82.class.getFields();
        y45.i(fields2, "T::class.java.fields");
        ArrayList arrayList3 = new ArrayList();
        for (Field field3 : fields2) {
            if (Modifier.isStatic(field3.getModifiers())) {
                arrayList3.add(field3);
            }
        }
        ArrayList<Field> arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (y45.e(((Field) obj2).getType(), Integer.TYPE)) {
                arrayList4.add(obj2);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (Field field4 : arrayList4) {
            Object obj3 = field4.get(null);
            y45.h(obj3, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue = ((Integer) obj3).intValue();
            if (iIntValue == ((-iIntValue) & iIntValue)) {
                String name2 = field4.getName();
                y45.i(name2, "field.name");
                c0450a = new a.C0450a(iIntValue, name2);
            } else {
                c0450a = null;
            }
            if (c0450a != null) {
                arrayList5.add(c0450a);
            }
        }
        z = arrayList5;
    }

    public u82(int i2, List list) {
        y45.j(list, "excludes");
        this.a = list;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i2 &= ~((t82) it.next()).a();
        }
        this.b = i2;
    }

    public final boolean a(int i2) {
        return (this.b & i2) != 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!y45.e(u82.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        y45.h(obj, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.DescriptorKindFilter");
        u82 u82Var = (u82) obj;
        return y45.e(this.a, u82Var.a) && this.b == u82Var.b;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b;
    }

    public final List l() {
        return this.a;
    }

    public final int m() {
        return this.b;
    }

    public final u82 n(int i2) {
        int i3 = i2 & this.b;
        if (i3 == 0) {
            return null;
        }
        return new u82(i3, this.a);
    }

    public String toString() {
        Object next;
        Iterator it = y.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((a.C0450a) next).a() != this.b);
        a.C0450a c0450a = (a.C0450a) next;
        String strB = c0450a != null ? c0450a.b() : null;
        if (strB == null) {
            List<a.C0450a> list = z;
            ArrayList arrayList = new ArrayList();
            for (a.C0450a c0450a2 : list) {
                String strB2 = a(c0450a2.a()) ? c0450a2.b() : null;
                if (strB2 != null) {
                    arrayList.add(strB2);
                }
            }
            strB = i81.y0(arrayList, " | ", null, null, 0, null, null, 62, null);
        }
        return "DescriptorKindFilter(" + strB + ", " + this.a + ')';
    }

    public u82(int i2, List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? y71.k() : list);
    }
}
