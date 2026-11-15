package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.d;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.l;

public class ui8 extends d implements ti8 {
    public boolean A;
    public wp3 B;
    public wp3 C;
    public final Modality j;
    public c92 k;
    public Collection l;
    public final ti8 m;
    public final CallableMemberDescriptor.Kind n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public List u;
    public ro8 v;
    public ro8 w;
    public List x;
    public wi8 y;
    public xi8 z;

    public class a {
        public xt1 a;
        public Modality b;
        public c92 c;
        public CallableMemberDescriptor.Kind f;
        public ro8 i;
        public by6 k;
        public eh5 l;
        public ti8 d = null;
        public boolean e = false;
        public l g = l.b;
        public boolean h = true;
        public List j = null;

        public a() {
            this.a = ui8.this.b();
            this.b = ui8.this.j();
            this.c = ui8.this.getVisibility();
            this.f = ui8.this.getKind();
            this.i = ui8.this.v;
            this.k = ui8.this.getName();
            this.l = ui8.this.getType();
        }

        public static void a(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11 || i == 19 || i == 13 || i == 14 || i == 16 || i == 17) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11 || i == 19 || i == 13 || i == 14 || i == 16 || i == 17) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 13:
                case 14:
                case 16:
                case 17:
                case 19:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
                    break;
                case 4:
                    objArr[0] = "type";
                    break;
                case 6:
                    objArr[0] = "modality";
                    break;
                case 8:
                    objArr[0] = "visibility";
                    break;
                case 10:
                    objArr[0] = "kind";
                    break;
                case 12:
                    objArr[0] = "typeParameters";
                    break;
                case 15:
                    objArr[0] = "substitution";
                    break;
                case 18:
                    objArr[0] = "name";
                    break;
                default:
                    objArr[0] = "owner";
                    break;
            }
            if (i == 1) {
                objArr[1] = "setOwner";
            } else if (i == 2) {
                objArr[1] = "setOriginal";
            } else if (i == 3) {
                objArr[1] = "setPreserveSourceElement";
            } else if (i == 5) {
                objArr[1] = "setReturnType";
            } else if (i == 7) {
                objArr[1] = "setModality";
            } else if (i == 9) {
                objArr[1] = "setVisibility";
            } else if (i == 11) {
                objArr[1] = "setKind";
            } else if (i == 19) {
                objArr[1] = "setName";
            } else if (i == 13) {
                objArr[1] = "setTypeParameters";
            } else if (i == 14) {
                objArr[1] = "setDispatchReceiverParameter";
            } else if (i == 16) {
                objArr[1] = "setSubstitution";
            } else if (i != 17) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
            } else {
                objArr[1] = "setCopyOverrides";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 13:
                case 14:
                case 16:
                case 17:
                case 19:
                    break;
                case 4:
                    objArr[2] = "setReturnType";
                    break;
                case 6:
                    objArr[2] = "setModality";
                    break;
                case 8:
                    objArr[2] = "setVisibility";
                    break;
                case 10:
                    objArr[2] = "setKind";
                    break;
                case 12:
                    objArr[2] = "setTypeParameters";
                    break;
                case 15:
                    objArr[2] = "setSubstitution";
                    break;
                case 18:
                    objArr[2] = "setName";
                    break;
                default:
                    objArr[2] = "setOwner";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3 && i != 5 && i != 7 && i != 9 && i != 11 && i != 19 && i != 13 && i != 14 && i != 16 && i != 17) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public ti8 n() {
            return ui8.this.L0(this);
        }

        public vi8 o() {
            ti8 ti8Var = this.d;
            if (ti8Var == null) {
                return null;
            }
            return ti8Var.getGetter();
        }

        public xi8 p() {
            ti8 ti8Var = this.d;
            if (ti8Var == null) {
                return null;
            }
            return ti8Var.getSetter();
        }

        public a q(boolean z) {
            this.h = z;
            return this;
        }

        public a r(CallableMemberDescriptor.Kind kind) {
            if (kind == null) {
                a(10);
            }
            this.f = kind;
            return this;
        }

        public a s(Modality modality) {
            if (modality == null) {
                a(6);
            }
            this.b = modality;
            return this;
        }

        public a t(CallableMemberDescriptor callableMemberDescriptor) {
            this.d = (ti8) callableMemberDescriptor;
            return this;
        }

        public a u(xt1 xt1Var) {
            if (xt1Var == null) {
                a(0);
            }
            this.a = xt1Var;
            return this;
        }

        public a v(l lVar) {
            if (lVar == null) {
                a(15);
            }
            this.g = lVar;
            return this;
        }

        public a w(c92 c92Var) {
            if (c92Var == null) {
                a(8);
            }
            this.c = c92Var;
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ui8(xt1 xt1Var, ti8 ti8Var, md mdVar, Modality modality, c92 c92Var, boolean z, by6 by6Var, CallableMemberDescriptor.Kind kind, yt9 yt9Var, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        super(xt1Var, mdVar, by6Var, null, z, yt9Var);
        if (xt1Var == null) {
            Q(0);
        }
        if (mdVar == null) {
            Q(1);
        }
        if (modality == null) {
            Q(2);
        }
        if (c92Var == null) {
            Q(3);
        }
        if (by6Var == null) {
            Q(4);
        }
        if (kind == null) {
            Q(5);
        }
        if (yt9Var == null) {
            Q(6);
        }
        this.l = null;
        this.u = Collections.emptyList();
        this.j = modality;
        this.k = c92Var;
        this.m = ti8Var == null ? this : ti8Var;
        this.n = kind;
        this.o = z2;
        this.p = z3;
        this.q = z4;
        this.r = z5;
        this.s = z6;
        this.t = z7;
    }

    public static ui8 J0(xt1 xt1Var, md mdVar, Modality modality, c92 c92Var, boolean z, by6 by6Var, CallableMemberDescriptor.Kind kind, yt9 yt9Var, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        if (xt1Var == null) {
            Q(7);
        }
        if (mdVar == null) {
            Q(8);
        }
        if (modality == null) {
            Q(9);
        }
        if (c92Var == null) {
            Q(10);
        }
        if (by6Var == null) {
            Q(11);
        }
        if (kind == null) {
            Q(12);
        }
        if (yt9Var == null) {
            Q(13);
        }
        return new ui8(xt1Var, null, mdVar, modality, c92Var, z, by6Var, kind, yt9Var, z2, z3, z4, z5, z6, z7);
    }

    public static e O0(TypeSubstitutor typeSubstitutor, f fVar) {
        if (typeSubstitutor == null) {
            Q(30);
        }
        if (fVar == null) {
            Q(31);
        }
        if (fVar.v0() != null) {
            return fVar.v0().c(typeSubstitutor);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    private static void Q(int i) {
        String str;
        int i2;
        if (i != 28 && i != 38 && i != 39 && i != 41 && i != 42) {
            switch (i) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 28 && i != 38 && i != 39 && i != 41 && i != 42) {
            switch (i) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    i2 = 2;
                    break;
                default:
                    i2 = 3;
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 8:
                objArr[0] = "annotations";
                break;
            case 2:
            case 9:
                objArr[0] = "modality";
                break;
            case 3:
            case 10:
            case 20:
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case 35:
                objArr[0] = "kind";
                break;
            case 6:
            case 13:
            case 37:
                objArr[0] = "source";
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 14:
                objArr[0] = "inType";
                break;
            case 15:
            case 17:
                objArr[0] = "outType";
                break;
            case 16:
            case 18:
                objArr[0] = "typeParameters";
                break;
            case 19:
                objArr[0] = "contextReceiverParameters";
                break;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 28:
            case 38:
            case 39:
            case 41:
            case 42:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl";
                break;
            case 27:
                objArr[0] = "originalSubstitutor";
                break;
            case 29:
                objArr[0] = "copyConfiguration";
                break;
            case 30:
                objArr[0] = "substitutor";
                break;
            case 31:
                objArr[0] = "accessorDescriptor";
                break;
            case 32:
                objArr[0] = "newOwner";
                break;
            case 33:
                objArr[0] = "newModality";
                break;
            case 34:
                objArr[0] = "newVisibility";
                break;
            case 36:
                objArr[0] = "newName";
                break;
            case 40:
                objArr[0] = "overriddenDescriptors";
                break;
        }
        if (i == 28) {
            objArr[1] = "getSourceToUseForCopy";
        } else if (i == 38) {
            objArr[1] = "getOriginal";
        } else if (i == 39) {
            objArr[1] = "getKind";
        } else if (i == 41) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i != 42) {
            switch (i) {
                case 21:
                    objArr[1] = "getTypeParameters";
                    break;
                case 22:
                    objArr[1] = "getContextReceiverParameters";
                    break;
                case 23:
                    objArr[1] = "getReturnType";
                    break;
                case 24:
                    objArr[1] = "getModality";
                    break;
                case 25:
                    objArr[1] = "getVisibility";
                    break;
                case 26:
                    objArr[1] = "getAccessors";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl";
                    break;
            }
        } else {
            objArr[1] = "copy";
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[2] = "create";
                break;
            case 14:
                objArr[2] = "setInType";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[2] = "setType";
                break;
            case 20:
                objArr[2] = "setVisibility";
                break;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 28:
            case 38:
            case 39:
            case 41:
            case 42:
                break;
            case 27:
                objArr[2] = "substitute";
                break;
            case 29:
                objArr[2] = "doSubstitute";
                break;
            case 30:
            case 31:
                objArr[2] = "getSubstitutedInitialSignatureDescriptor";
                break;
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 40:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 28 && i != 38 && i != 39 && i != 41 && i != 42) {
            switch (i) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    public static c92 T0(c92 c92Var, CallableMemberDescriptor.Kind kind) {
        return (kind == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && b92.g(c92Var.f())) ? b92.h : c92Var;
    }

    public static ro8 Y0(TypeSubstitutor typeSubstitutor, ti8 ti8Var, ro8 ro8Var) {
        eh5 eh5VarP = typeSubstitutor.p(ro8Var.getType(), Variance.IN_VARIANCE);
        if (eh5VarP == null) {
            return null;
        }
        return new so8(ti8Var, new sh1(ti8Var, eh5VarP, ((xy4) ro8Var.getValue()).a(), ro8Var.getValue()), ro8Var.getAnnotations());
    }

    public static ro8 Z0(TypeSubstitutor typeSubstitutor, ti8 ti8Var, ro8 ro8Var) {
        eh5 eh5VarP = typeSubstitutor.p(ro8Var.getType(), Variance.IN_VARIANCE);
        if (eh5VarP == null) {
            return null;
        }
        return new so8(ti8Var, new ek3(ti8Var, eh5VarP, ro8Var.getValue()), ro8Var.getAnnotations());
    }

    @Override
    public ti8 J(xt1 xt1Var, Modality modality, c92 c92Var, CallableMemberDescriptor.Kind kind, boolean z) {
        ti8 ti8VarN = S0().u(xt1Var).t(null).s(modality).w(c92Var).r(kind).q(z).n();
        if (ti8VarN == null) {
            Q(42);
        }
        return ti8VarN;
    }

    public Object K(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a interfaceC0379a) {
        return null;
    }

    public ui8 K0(xt1 xt1Var, Modality modality, c92 c92Var, ti8 ti8Var, CallableMemberDescriptor.Kind kind, by6 by6Var, yt9 yt9Var) {
        if (xt1Var == null) {
            Q(32);
        }
        if (modality == null) {
            Q(33);
        }
        if (c92Var == null) {
            Q(34);
        }
        if (kind == null) {
            Q(35);
        }
        if (by6Var == null) {
            Q(36);
        }
        if (yt9Var == null) {
            Q(37);
        }
        return new ui8(xt1Var, ti8Var, getAnnotations(), modality, c92Var, y(), by6Var, kind, yt9Var, z0(), isConst(), m0(), f0(), isExternal(), U());
    }

    @Override
    public wp3 L() {
        return this.B;
    }

    public ti8 L0(a aVar) {
        ro8 ro8Var;
        c74 c74Var;
        if (aVar == null) {
            Q(29);
        }
        ui8 ui8VarK0 = K0(aVar.a, aVar.b, aVar.c, aVar.d, aVar.f, aVar.k, N0(aVar.e, aVar.d));
        List typeParameters = aVar.j == null ? getTypeParameters() : aVar.j;
        ArrayList arrayList = new ArrayList(typeParameters.size());
        TypeSubstitutor typeSubstitutorB = w82.b(typeParameters, aVar.g, ui8VarK0, arrayList);
        eh5 eh5Var = aVar.l;
        eh5 eh5VarP = typeSubstitutorB.p(eh5Var, Variance.OUT_VARIANCE);
        if (eh5VarP == null) {
            return null;
        }
        eh5 eh5VarP2 = typeSubstitutorB.p(eh5Var, Variance.IN_VARIANCE);
        if (eh5VarP2 != null) {
            ui8VarK0.U0(eh5VarP2);
        }
        ro8 ro8Var2 = aVar.i;
        if (ro8Var2 != null) {
            ro8 ro8VarC = ro8Var2.c(typeSubstitutorB);
            if (ro8VarC == null) {
                return null;
            }
            ro8Var = ro8VarC;
        } else {
            ro8Var = null;
        }
        ro8 ro8Var3 = this.w;
        ro8 ro8VarZ0 = ro8Var3 != null ? Z0(typeSubstitutorB, ui8VarK0, ro8Var3) : null;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = this.u.iterator();
        while (it.hasNext()) {
            ro8 ro8VarY0 = Y0(typeSubstitutorB, ui8VarK0, (ro8) it.next());
            if (ro8VarY0 != null) {
                arrayList2.add(ro8VarY0);
            }
        }
        ui8VarK0.W0(eh5VarP, arrayList, ro8Var, ro8VarZ0, arrayList2);
        wi8 wi8Var = this.y == null ? null : new wi8(ui8VarK0, this.y.getAnnotations(), aVar.b, T0(this.y.getVisibility(), aVar.f), this.y.V(), this.y.isExternal(), this.y.isInline(), aVar.f, aVar.o(), yt9.a);
        if (wi8Var != null) {
            eh5 returnType = this.y.getReturnType();
            wi8Var.H0(O0(typeSubstitutorB, this.y));
            wi8Var.K0(returnType != null ? typeSubstitutorB.p(returnType, Variance.OUT_VARIANCE) : null);
        }
        yi8 yi8Var = this.z == null ? null : new yi8(ui8VarK0, this.z.getAnnotations(), aVar.b, T0(this.z.getVisibility(), aVar.f), this.z.V(), this.z.isExternal(), this.z.isInline(), aVar.f, aVar.p(), yt9.a);
        if (yi8Var != null) {
            List listK0 = kotlin.reflect.jvm.internal.impl.descriptors.impl.a.K0(yi8Var, this.z.f(), typeSubstitutorB, false, false, null);
            if (listK0 == null) {
                ui8VarK0.V0(true);
                listK0 = Collections.singletonList(yi8.J0(yi8Var, DescriptorUtilsKt.j(aVar.a).H(), ((h) this.z.f().get(0)).getAnnotations()));
            }
            if (listK0.size() != 1) {
                throw new IllegalStateException();
            }
            yi8Var.H0(O0(typeSubstitutorB, this.z));
            yi8Var.L0((h) listK0.get(0));
        }
        wp3 wp3Var = this.B;
        xp3 xp3Var = wp3Var == null ? null : new xp3(wp3Var.getAnnotations(), ui8VarK0);
        wp3 wp3Var2 = this.C;
        ui8VarK0.Q0(wi8Var, yi8Var, xp3Var, wp3Var2 != null ? new xp3(wp3Var2.getAnnotations(), ui8VarK0) : null);
        if (aVar.h) {
            cq9 cq9VarB = cq9.b();
            Iterator it2 = e().iterator();
            while (it2.hasNext()) {
                cq9VarB.add(((ti8) it2.next()).c(typeSubstitutorB));
            }
            ui8VarK0.O(cq9VarB);
        }
        if (isConst() && (c74Var = this.i) != null) {
            ui8VarK0.F0(this.h, c74Var);
        }
        return ui8VarK0;
    }

    @Override
    public wi8 getGetter() {
        return this.y;
    }

    public final yt9 N0(boolean z, ti8 ti8Var) {
        yt9 source;
        if (z) {
            if (ti8Var == null) {
                ti8Var = a();
            }
            source = ti8Var.getSource();
        } else {
            source = yt9.a;
        }
        if (source == null) {
            Q(28);
        }
        return source;
    }

    @Override
    public void O(Collection collection) {
        if (collection == null) {
            Q(40);
        }
        this.l = collection;
    }

    public void P0(wi8 wi8Var, xi8 xi8Var) {
        Q0(wi8Var, xi8Var, null, null);
    }

    public void Q0(wi8 wi8Var, xi8 xi8Var, wp3 wp3Var, wp3 wp3Var2) {
        this.y = wi8Var;
        this.z = xi8Var;
        this.B = wp3Var;
        this.C = wp3Var2;
    }

    public boolean R0() {
        return this.A;
    }

    public a S0() {
        return new a();
    }

    @Override
    public boolean U() {
        return this.t;
    }

    public void U0(eh5 eh5Var) {
        if (eh5Var == null) {
            Q(14);
        }
    }

    public void V0(boolean z) {
        this.A = z;
    }

    public void W0(eh5 eh5Var, List list, ro8 ro8Var, ro8 ro8Var2, List list2) {
        if (eh5Var == null) {
            Q(17);
        }
        if (list == null) {
            Q(18);
        }
        if (list2 == null) {
            Q(19);
        }
        C0(eh5Var);
        this.x = new ArrayList(list);
        this.w = ro8Var2;
        this.v = ro8Var;
        this.u = list2;
    }

    public void X0(c92 c92Var) {
        if (c92Var == null) {
            Q(20);
        }
        this.k = c92Var;
    }

    @Override
    public ro8 Z() {
        return this.v;
    }

    @Override
    public ro8 b0() {
        return this.w;
    }

    @Override
    public Collection e() {
        Collection collectionEmptyList = this.l;
        if (collectionEmptyList == null) {
            collectionEmptyList = Collections.emptyList();
        }
        if (collectionEmptyList == null) {
            Q(41);
        }
        return collectionEmptyList;
    }

    @Override
    public boolean f0() {
        return this.r;
    }

    @Override
    public CallableMemberDescriptor.Kind getKind() {
        CallableMemberDescriptor.Kind kind = this.n;
        if (kind == null) {
            Q(39);
        }
        return kind;
    }

    @Override
    public eh5 getReturnType() {
        eh5 type = getType();
        if (type == null) {
            Q(23);
        }
        return type;
    }

    @Override
    public xi8 getSetter() {
        return this.z;
    }

    @Override
    public List getTypeParameters() {
        List list = this.x;
        if (list != null) {
            return list;
        }
        throw new IllegalStateException("typeParameters == null for " + toString());
    }

    @Override
    public c92 getVisibility() {
        c92 c92Var = this.k;
        if (c92Var == null) {
            Q(25);
        }
        return c92Var;
    }

    public boolean isConst() {
        return this.p;
    }

    public boolean isExternal() {
        return this.s;
    }

    @Override
    public Modality j() {
        Modality modality = this.j;
        if (modality == null) {
            Q(24);
        }
        return modality;
    }

    @Override
    public boolean m0() {
        return this.q;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return bu1Var.i(this, obj);
    }

    @Override
    public List t() {
        ArrayList arrayList = new ArrayList(2);
        wi8 wi8Var = this.y;
        if (wi8Var != null) {
            arrayList.add(wi8Var);
        }
        xi8 xi8Var = this.z;
        if (xi8Var != null) {
            arrayList.add(xi8Var);
        }
        return arrayList;
    }

    @Override
    public List y0() {
        List list = this.u;
        if (list == null) {
            Q(22);
        }
        return list;
    }

    @Override
    public wp3 z() {
        return this.C;
    }

    @Override
    public boolean z0() {
        return this.o;
    }

    @Override
    public ti8 c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            Q(27);
        }
        return typeSubstitutor.k() ? this : S0().v(typeSubstitutor.j()).t(a()).n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [ti8] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    @Override
    public ti8 a() {
        ti8 ti8VarA;
        ti8 ti8Var = this.m;
        ?? r1 = this;
        if (ti8Var != this) {
            ti8VarA = ti8Var.a();
        }
        if (r1 == 0) {
            r1 = ti8VarA;
            Q(38);
        }
        r1 = ti8VarA;
        return r1;
    }
}
