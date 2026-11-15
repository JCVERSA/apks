package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.exifinterface.media.ExifInterface;
import defpackage.by6;
import defpackage.cy6;
import defpackage.ee5;
import defpackage.eeb;
import defpackage.eh5;
import defpackage.ei9;
import defpackage.fb3;
import defpackage.gd;
import defpackage.gfb;
import defpackage.hd;
import defpackage.i81;
import defpackage.id;
import defpackage.j1a;
import defpackage.jd3;
import defpackage.jd5;
import defpackage.ld;
import defpackage.nr5;
import defpackage.peb;
import defpackage.pf1;
import defpackage.qo0;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.v71;
import defpackage.v82;
import defpackage.veb;
import defpackage.vg5;
import defpackage.vx9;
import defpackage.x15;
import defpackage.xw0;
import defpackage.y45;
import defpackage.yt9;
import defpackage.zw0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory;
import org.mozilla.javascript.ES6Iterator;

public final class b extends AbstractBinaryClassAnnotationAndConstantLoader {
    public final qq6 c;
    public final NotFoundClasses d;
    public final id e;
    public jd5 f;

    public abstract class a implements c.a {

        public static final class C0390a implements c.a {
            public final c.a a;
            public final c.a b;
            public final a c;
            public final by6 d;
            public final ArrayList e;

            public C0390a(c.a aVar, a aVar2, by6 by6Var, ArrayList arrayList) {
                this.b = aVar;
                this.c = aVar2;
                this.d = by6Var;
                this.e = arrayList;
                this.a = aVar;
            }

            @Override
            public void a(by6 by6Var, xw0 xw0Var, by6 by6Var2) {
                y45.j(xw0Var, "enumClassId");
                y45.j(by6Var2, "enumEntryName");
                this.a.a(by6Var, xw0Var, by6Var2);
            }

            @Override
            public c.a b(by6 by6Var, xw0 xw0Var) {
                y45.j(xw0Var, "classId");
                return this.a.b(by6Var, xw0Var);
            }

            @Override
            public void c(by6 by6Var, Object obj) {
                this.a.c(by6Var, obj);
            }

            @Override
            public void d(by6 by6Var, zw0 zw0Var) {
                y45.j(zw0Var, ES6Iterator.VALUE_PROPERTY);
                this.a.d(by6Var, zw0Var);
            }

            @Override
            public c.b e(by6 by6Var) {
                return this.a.e(by6Var);
            }

            @Override
            public void visitEnd() {
                this.b.visitEnd();
                this.c.g(this.d, new ld((gd) i81.O0(this.e)));
            }
        }

        public static final class C0391b implements c.b {
            public final ArrayList a = new ArrayList();
            public final b b;
            public final by6 c;
            public final a d;

            public static final class C0392a implements c.a {
                public final c.a a;
                public final c.a b;
                public final C0391b c;
                public final ArrayList d;

                public C0392a(c.a aVar, C0391b c0391b, ArrayList arrayList) {
                    this.b = aVar;
                    this.c = c0391b;
                    this.d = arrayList;
                    this.a = aVar;
                }

                @Override
                public void a(by6 by6Var, xw0 xw0Var, by6 by6Var2) {
                    y45.j(xw0Var, "enumClassId");
                    y45.j(by6Var2, "enumEntryName");
                    this.a.a(by6Var, xw0Var, by6Var2);
                }

                @Override
                public c.a b(by6 by6Var, xw0 xw0Var) {
                    y45.j(xw0Var, "classId");
                    return this.a.b(by6Var, xw0Var);
                }

                @Override
                public void c(by6 by6Var, Object obj) {
                    this.a.c(by6Var, obj);
                }

                @Override
                public void d(by6 by6Var, zw0 zw0Var) {
                    y45.j(zw0Var, ES6Iterator.VALUE_PROPERTY);
                    this.a.d(by6Var, zw0Var);
                }

                @Override
                public c.b e(by6 by6Var) {
                    return this.a.e(by6Var);
                }

                @Override
                public void visitEnd() {
                    this.b.visitEnd();
                    this.c.a.add(new ld((gd) i81.O0(this.d)));
                }
            }

            public C0391b(b bVar, by6 by6Var, a aVar) {
                this.b = bVar;
                this.c = by6Var;
                this.d = aVar;
            }

            @Override
            public c.a a(xw0 xw0Var) {
                y45.j(xw0Var, "classId");
                ArrayList arrayList = new ArrayList();
                b bVar = this.b;
                yt9 yt9Var = yt9.a;
                y45.i(yt9Var, "NO_SOURCE");
                c.a aVarW = bVar.w(xw0Var, yt9Var, arrayList);
                y45.g(aVarW);
                return new C0392a(aVarW, this, arrayList);
            }

            @Override
            public void b(Object obj) {
                this.a.add(this.b.J(this.c, obj));
            }

            @Override
            public void c(zw0 zw0Var) {
                y45.j(zw0Var, ES6Iterator.VALUE_PROPERTY);
                this.a.add(new ee5(zw0Var));
            }

            @Override
            public void d(xw0 xw0Var, by6 by6Var) {
                y45.j(xw0Var, "enumClassId");
                y45.j(by6Var, "enumEntryName");
                this.a.add(new fb3(xw0Var, by6Var));
            }

            @Override
            public void visitEnd() {
                this.d.f(this.c, this.a);
            }
        }

        public a() {
        }

        @Override
        public void a(by6 by6Var, xw0 xw0Var, by6 by6Var2) {
            y45.j(xw0Var, "enumClassId");
            y45.j(by6Var2, "enumEntryName");
            g(by6Var, new fb3(xw0Var, by6Var2));
        }

        @Override
        public c.a b(by6 by6Var, xw0 xw0Var) {
            y45.j(xw0Var, "classId");
            ArrayList arrayList = new ArrayList();
            b bVar = b.this;
            yt9 yt9Var = yt9.a;
            y45.i(yt9Var, "NO_SOURCE");
            c.a aVarW = bVar.w(xw0Var, yt9Var, arrayList);
            y45.g(aVarW);
            return new C0390a(aVarW, this, by6Var, arrayList);
        }

        @Override
        public void c(by6 by6Var, Object obj) {
            g(by6Var, b.this.J(by6Var, obj));
        }

        @Override
        public void d(by6 by6Var, zw0 zw0Var) {
            y45.j(zw0Var, ES6Iterator.VALUE_PROPERTY);
            g(by6Var, new ee5(zw0Var));
        }

        @Override
        public c.b e(by6 by6Var) {
            return new C0391b(b.this, by6Var, this);
        }

        public abstract void f(by6 by6Var, ArrayList arrayList);

        public abstract void g(by6 by6Var, pf1 pf1Var);
    }

    public static final class C0393b extends a {
        public final HashMap b;
        public final qw0 d;
        public final xw0 e;
        public final List f;
        public final yt9 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0393b(qw0 qw0Var, xw0 xw0Var, List list, yt9 yt9Var) {
            super();
            this.d = qw0Var;
            this.e = xw0Var;
            this.f = list;
            this.g = yt9Var;
            this.b = new HashMap();
        }

        @Override
        public void f(by6 by6Var, ArrayList arrayList) {
            y45.j(arrayList, "elements");
            if (by6Var == null) {
                return;
            }
            h hVarB = v82.b(by6Var, this.d);
            if (hVarB != null) {
                HashMap map = this.b;
                ConstantValueFactory constantValueFactory = ConstantValueFactory.a;
                List listC = v71.c(arrayList);
                eh5 type = hVarB.getType();
                y45.i(type, "parameter.type");
                map.put(by6Var, constantValueFactory.a(listC, type));
                return;
            }
            if (b.this.v(this.e) && y45.e(by6Var.b(), ES6Iterator.VALUE_PROPERTY)) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (obj instanceof ld) {
                        arrayList2.add(obj);
                    }
                }
                List list = this.f;
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    list.add((gd) ((ld) it.next()).b());
                }
            }
        }

        @Override
        public void g(by6 by6Var, pf1 pf1Var) {
            y45.j(pf1Var, ES6Iterator.VALUE_PROPERTY);
            if (by6Var != null) {
                this.b.put(by6Var, pf1Var);
            }
        }

        @Override
        public void visitEnd() {
            if (b.this.D(this.e, this.b) || b.this.v(this.e)) {
                return;
            }
            this.f.add(new hd(this.d.q(), this.b, this.g));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(qq6 qq6Var, NotFoundClasses notFoundClasses, vx9 vx9Var, vg5 vg5Var) {
        super(vx9Var, vg5Var);
        y45.j(qq6Var, "module");
        y45.j(notFoundClasses, "notFoundClasses");
        y45.j(vx9Var, "storageManager");
        y45.j(vg5Var, "kotlinClassFinder");
        this.c = qq6Var;
        this.d = notFoundClasses;
        this.e = new id(qq6Var, notFoundClasses);
        this.f = jd5.i;
    }

    public final pf1 J(by6 by6Var, Object obj) {
        pf1 pf1VarC = ConstantValueFactory.a.c(obj, this.c);
        if (pf1VarC != null) {
            return pf1VarC;
        }
        return jd3.b.a("Unsupported annotation argument: " + by6Var);
    }

    @Override
    public pf1 F(String str, Object obj) {
        y45.j(str, "desc");
        y45.j(obj, "initializer");
        if (j1a.X("ZBCS", str, false, 2, null)) {
            int iIntValue = ((Integer) obj).intValue();
            int iHashCode = str.hashCode();
            if (iHashCode == 66) {
                if (str.equals("B")) {
                    obj = Byte.valueOf((byte) iIntValue);
                }
                throw new AssertionError(str);
            }
            if (iHashCode == 67) {
                if (str.equals("C")) {
                    obj = Character.valueOf((char) iIntValue);
                }
                throw new AssertionError(str);
            }
            if (iHashCode == 83) {
                if (str.equals(ExifInterface.LATITUDE_SOUTH)) {
                    obj = Short.valueOf((short) iIntValue);
                }
                throw new AssertionError(str);
            }
            if (iHashCode == 90 && str.equals("Z")) {
                obj = Boolean.valueOf(iIntValue != 0);
            }
            throw new AssertionError(str);
        }
        return ConstantValueFactory.a.c(obj, this.c);
    }

    @Override
    public gd z(ProtoBuf$Annotation protoBuf$Annotation, cy6 cy6Var) {
        y45.j(protoBuf$Annotation, "proto");
        y45.j(cy6Var, "nameResolver");
        return this.e.a(protoBuf$Annotation, cy6Var);
    }

    public final qw0 M(xw0 xw0Var) {
        return FindClassInModuleKt.c(this.c, xw0Var, this.d);
    }

    public void N(jd5 jd5Var) {
        y45.j(jd5Var, "<set-?>");
        this.f = jd5Var;
    }

    @Override
    public pf1 H(pf1 pf1Var) {
        pf1 vebVar;
        y45.j(pf1Var, "constant");
        if (pf1Var instanceof qo0) {
            vebVar = new eeb(((Number) ((qo0) pf1Var).b()).byteValue());
        } else if (pf1Var instanceof ei9) {
            vebVar = new gfb(((Number) ((ei9) pf1Var).b()).shortValue());
        } else if (pf1Var instanceof x15) {
            vebVar = new peb(((Number) ((x15) pf1Var).b()).intValue());
        } else {
            if (!(pf1Var instanceof nr5)) {
                return pf1Var;
            }
            vebVar = new veb(((Number) ((nr5) pf1Var).b()).longValue());
        }
        return vebVar;
    }

    @Override
    public jd5 t() {
        return this.f;
    }

    @Override
    public c.a w(xw0 xw0Var, yt9 yt9Var, List list) {
        y45.j(xw0Var, "annotationClassId");
        y45.j(yt9Var, "source");
        y45.j(list, "result");
        return new C0393b(M(xw0Var), xw0Var, list, yt9Var);
    }
}
