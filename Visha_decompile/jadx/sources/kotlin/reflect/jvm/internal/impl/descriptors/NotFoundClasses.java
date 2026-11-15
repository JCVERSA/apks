package kotlin.reflect.jvm.internal.impl.descriptors;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.b92;
import defpackage.bx0;
import defpackage.by6;
import defpackage.c92;
import defpackage.dv7;
import defpackage.e74;
import defpackage.fn6;
import defpackage.fx0;
import defpackage.i81;
import defpackage.icb;
import defpackage.inb;
import defpackage.md;
import defpackage.o54;
import defpackage.q15;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.rw0;
import defpackage.t93;
import defpackage.u15;
import defpackage.vx9;
import defpackage.wn8;
import defpackage.xe9;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import defpackage.yt9;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public final class NotFoundClasses {
    public final vx9 a;
    public final qq6 b;
    public final fn6 c;
    public final fn6 d;

    public static final class a {
        public final xw0 a;
        public final List b;

        public a(xw0 xw0Var, List list) {
            y45.j(xw0Var, "classId");
            y45.j(list, "typeParametersCount");
            this.a = xw0Var;
            this.b = list;
        }

        public final xw0 a() {
            return this.a;
        }

        public final List b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "ClassRequest(classId=" + this.a + ", typeParametersCount=" + this.b + ')';
        }
    }

    public static final class b extends rw0 {
        public final boolean j;
        public final List k;
        public final fx0 l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(vx9 vx9Var, xt1 xt1Var, by6 by6Var, boolean z, int i) {
            super(vx9Var, xt1Var, by6Var, yt9.a, false);
            y45.j(vx9Var, "storageManager");
            y45.j(xt1Var, TtmlNode.RUBY_CONTAINER);
            y45.j(by6Var, "name");
            this.j = z;
            u15 u15VarQ = wn8.q(0, i);
            ArrayList arrayList = new ArrayList(z71.v(u15VarQ, 10));
            Iterator it = u15VarQ.iterator();
            while (it.hasNext()) {
                int iNextInt = ((q15) it).nextInt();
                md mdVarB = md.u1.b();
                Variance variance = Variance.INVARIANT;
                StringBuilder sb = new StringBuilder();
                sb.append('T');
                sb.append(iNextInt);
                arrayList.add(icb.M0(this, mdVarB, false, variance, by6.g(sb.toString()), iNextInt, vx9Var));
            }
            this.k = arrayList;
            this.l = new fx0(this, TypeParameterUtilsKt.d(this), xe9.d(DescriptorUtilsKt.p(this).o().i()), vx9Var);
        }

        @Override
        public boolean E0() {
            return false;
        }

        @Override
        public MemberScope.a n0() {
            return MemberScope.a.b;
        }

        @Override
        public fx0 m() {
            return this.l;
        }

        @Override
        public MemberScope.a d0(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
            y45.j(cVar, "kotlinTypeRefiner");
            return MemberScope.a.b;
        }

        @Override
        public Collection T() {
            return y71.k();
        }

        @Override
        public inb c0() {
            return null;
        }

        @Override
        public boolean f0() {
            return false;
        }

        @Override
        public boolean g() {
            return this.j;
        }

        @Override
        public md getAnnotations() {
            return md.u1.b();
        }

        @Override
        public ClassKind getKind() {
            return ClassKind.CLASS;
        }

        @Override
        public c92 getVisibility() {
            c92 c92Var = b92.e;
            y45.i(c92Var, "PUBLIC");
            return c92Var;
        }

        @Override
        public boolean h0() {
            return false;
        }

        @Override
        public boolean isExternal() {
            return false;
        }

        @Override
        public boolean isInline() {
            return false;
        }

        @Override
        public Modality j() {
            return Modality.FINAL;
        }

        @Override
        public boolean j0() {
            return false;
        }

        @Override
        public boolean m0() {
            return false;
        }

        @Override
        public Collection n() {
            return ye9.f();
        }

        @Override
        public qw0 o0() {
            return null;
        }

        @Override
        public List r() {
            return this.k;
        }

        @Override
        public boolean s() {
            return false;
        }

        public String toString() {
            return "class " + getName() + " (not found)";
        }

        @Override
        public kotlin.reflect.jvm.internal.impl.descriptors.b w() {
            return null;
        }
    }

    public NotFoundClasses(vx9 vx9Var, qq6 qq6Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(qq6Var, "module");
        this.a = vx9Var;
        this.b = qq6Var;
        this.c = vx9Var.i(new e74() {
            {
                super(1);
            }

            @Override
            public final dv7 invoke(o54 o54Var) {
                y45.j(o54Var, "fqName");
                return new t93(this.this$0.b, o54Var);
            }
        });
        this.d = vx9Var.i(new e74() {
            {
                super(1);
            }

            @Override
            public final qw0 invoke(NotFoundClasses.a aVar) {
                xt1 xt1VarD;
                y45.j(aVar, "<name for destructuring parameter 0>");
                xw0 xw0VarA = aVar.a();
                List listB = aVar.b();
                if (xw0VarA.k()) {
                    throw new UnsupportedOperationException("Unresolved local class: " + xw0VarA);
                }
                xw0 xw0VarG = xw0VarA.g();
                if (xw0VarG == null || (xt1VarD = this.this$0.d(xw0VarG, i81.f0(listB, 1))) == null) {
                    fn6 fn6Var = this.this$0.c;
                    o54 o54VarH = xw0VarA.h();
                    y45.i(o54VarH, "classId.packageFqName");
                    xt1VarD = (bx0) fn6Var.invoke(o54VarH);
                }
                xt1 xt1Var = xt1VarD;
                boolean zL = xw0VarA.l();
                vx9 vx9Var2 = this.this$0.a;
                by6 by6VarJ = xw0VarA.j();
                y45.i(by6VarJ, "classId.shortClassName");
                Integer num = (Integer) i81.q0(listB);
                return new NotFoundClasses.b(vx9Var2, xt1Var, by6VarJ, zL, num != null ? num.intValue() : 0);
            }
        });
    }

    public final qw0 d(xw0 xw0Var, List list) {
        y45.j(xw0Var, "classId");
        y45.j(list, "typeParametersCount");
        return (qw0) this.d.invoke(new a(xw0Var, list));
    }
}
