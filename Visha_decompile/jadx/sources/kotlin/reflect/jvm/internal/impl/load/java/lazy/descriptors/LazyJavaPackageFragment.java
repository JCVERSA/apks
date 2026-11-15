package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.abb;
import defpackage.af5;
import defpackage.bh5;
import defpackage.c74;
import defpackage.ev7;
import defpackage.fd5;
import defpackage.fj5;
import defpackage.gj5;
import defpackage.j92;
import defpackage.jd5;
import defpackage.lv7;
import defpackage.md;
import defpackage.o54;
import defpackage.qw0;
import defpackage.s65;
import defpackage.ux9;
import defpackage.wg5;
import defpackage.x17;
import defpackage.xq8;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.y75;
import defpackage.yt9;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;

public final class LazyJavaPackageFragment extends ev7 {
    public static final af5[] p = {xq8.j(new PropertyReference1Impl(xq8.b(LazyJavaPackageFragment.class), "binaryClasses", "getBinaryClasses$descriptors_jvm()Ljava/util/Map;")), xq8.j(new PropertyReference1Impl(xq8.b(LazyJavaPackageFragment.class), "partToFacade", "getPartToFacade()Ljava/util/HashMap;"))};
    public final y75 h;
    public final gj5 i;
    public final jd5 j;
    public final x17 k;
    public final JvmPackageScope l;
    public final x17 m;
    public final md n;
    public final x17 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageFragment(gj5 gj5Var, y75 y75Var) {
        super(gj5Var.d(), y75Var.d());
        y45.j(gj5Var, "outerContext");
        y45.j(y75Var, "jPackage");
        this.h = y75Var;
        gj5 gj5VarD = ContextKt.d(gj5Var, this, null, 0, 6, null);
        this.i = gj5VarD;
        this.j = j92.a(gj5Var.a().b().d().g());
        this.k = gj5VarD.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Map<String, c> invoke() {
                lv7 lv7VarO = this.this$0.i.a().o();
                String strB = this.this$0.d().b();
                y45.i(strB, "fqName.asString()");
                List<String> listA = lv7VarO.a(strB);
                LazyJavaPackageFragment lazyJavaPackageFragment = this.this$0;
                ArrayList arrayList = new ArrayList();
                for (String str : listA) {
                    xw0 xw0VarM = xw0.m(fd5.d(str).e());
                    y45.i(xw0VarM, "topLevel(JvmClassName.by…velClassMaybeWithDollars)");
                    c cVarA = wg5.a(lazyJavaPackageFragment.i.a().j(), xw0VarM, lazyJavaPackageFragment.j);
                    Pair pairA = cVarA != null ? abb.a(str, cVarA) : null;
                    if (pairA != null) {
                        arrayList.add(pairA);
                    }
                }
                return kotlin.collections.a.y(arrayList);
            }
        });
        this.l = new JvmPackageScope(gj5VarD, y75Var, this);
        this.m = gj5VarD.e().h(new c74() {
            {
                super(0);
            }

            @Override
            public final List<o54> invoke() {
                Collection collectionR = this.this$0.h.r();
                ArrayList arrayList = new ArrayList(z71.v(collectionR, 10));
                Iterator it = collectionR.iterator();
                while (it.hasNext()) {
                    arrayList.add(((y75) it.next()).d());
                }
                return arrayList;
            }
        }, y71.k());
        this.n = gj5VarD.a().i().b() ? md.u1.b() : fj5.a(gj5VarD, y75Var);
        this.o = gj5VarD.e().c(new c74() {

            public class a {
                public static final int[] a;

                static {
                    int[] iArr = new int[KotlinClassHeader.Kind.values().length];
                    try {
                        iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS_PART.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[KotlinClassHeader.Kind.FILE_FACADE.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    a = iArr;
                }
            }

            {
                super(0);
            }

            @Override
            public final HashMap<fd5, fd5> invoke() {
                HashMap<fd5, fd5> map = new HashMap<>();
                for (Map.Entry entry : this.this$0.I0().entrySet()) {
                    String str = (String) entry.getKey();
                    c cVar = (c) entry.getValue();
                    fd5 fd5VarD = fd5.d(str);
                    y45.i(fd5VarD, "byInternalName(partInternalName)");
                    KotlinClassHeader kotlinClassHeaderB = cVar.b();
                    int i = a.a[kotlinClassHeaderB.c().ordinal()];
                    if (i == 1) {
                        String strE = kotlinClassHeaderB.e();
                        if (strE != null) {
                            fd5 fd5VarD2 = fd5.d(strE);
                            y45.i(fd5VarD2, "byInternalName(header.mu…: continue@kotlinClasses)");
                            map.put(fd5VarD, fd5VarD2);
                        }
                    } else if (i == 2) {
                        map.put(fd5VarD, fd5VarD);
                    }
                }
                return map;
            }
        });
    }

    public final qw0 H0(s65 s65Var) {
        y45.j(s65Var, "jClass");
        return this.l.j().P(s65Var);
    }

    public final Map I0() {
        return (Map) ux9.a(this.k, this, p[0]);
    }

    @Override
    public JvmPackageScope p() {
        return this.l;
    }

    public final List K0() {
        return (List) this.m.invoke();
    }

    @Override
    public md getAnnotations() {
        return this.n;
    }

    @Override
    public yt9 getSource() {
        return new bh5(this);
    }

    @Override
    public String toString() {
        return "Lazy Java package fragment: " + d() + " of module " + this.i.a().m();
    }
}
