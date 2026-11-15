package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.au1;
import defpackage.b92;
import defpackage.bq9;
import defpackage.bu1;
import defpackage.by6;
import defpackage.c74;
import defpackage.c92;
import defpackage.eh5;
import defpackage.ek3;
import defpackage.hcb;
import defpackage.i81;
import defpackage.md;
import defpackage.od;
import defpackage.ro8;
import defpackage.s82;
import defpackage.so8;
import defpackage.w82;
import defpackage.xt1;
import defpackage.xy4;
import defpackage.yt9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.l;

public abstract class a extends au1 implements e {
    public volatile c74 A;
    public final e B;
    public final CallableMemberDescriptor.Kind C;
    public e D;
    public Map E;
    public List f;
    public List g;
    public eh5 h;
    public List i;
    public ro8 j;
    public ro8 k;
    public Modality l;
    public c92 m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public Collection z;

    public class C0380a implements c74 {
        public final TypeSubstitutor b;

        public C0380a(TypeSubstitutor typeSubstitutor) {
            this.b = typeSubstitutor;
        }

        @Override
        public Collection invoke() {
            bq9 bq9Var = new bq9();
            Iterator it = a.this.e().iterator();
            while (it.hasNext()) {
                bq9Var.add(((e) it.next()).c(this.b));
            }
            return bq9Var;
        }
    }

    public static class b implements c74 {
        public final List b;

        public b(List list) {
            this.b = list;
        }

        @Override
        public List invoke() {
            return this.b;
        }
    }

    public class c implements e.a {
        public l a;
        public xt1 b;
        public Modality c;
        public c92 d;
        public e e;
        public CallableMemberDescriptor.Kind f;
        public List g;
        public List h;
        public ro8 i;
        public ro8 j;
        public eh5 k;
        public by6 l;
        public boolean m;
        public boolean n;
        public boolean o;
        public boolean p;
        public boolean q;
        public List r;
        public md s;
        public boolean t;
        public Map u;
        public Boolean v;
        public boolean w;
        public final a x;

        public c(a aVar, l lVar, xt1 xt1Var, Modality modality, c92 c92Var, CallableMemberDescriptor.Kind kind, List list, List list2, ro8 ro8Var, eh5 eh5Var, by6 by6Var) {
            if (lVar == null) {
                u(0);
            }
            if (xt1Var == null) {
                u(1);
            }
            if (modality == null) {
                u(2);
            }
            if (c92Var == null) {
                u(3);
            }
            if (kind == null) {
                u(4);
            }
            if (list == null) {
                u(5);
            }
            if (list2 == null) {
                u(6);
            }
            if (eh5Var == null) {
                u(7);
            }
            this.x = aVar;
            this.e = null;
            this.j = aVar.k;
            this.m = true;
            this.n = false;
            this.o = false;
            this.p = false;
            this.q = aVar.B0();
            this.r = null;
            this.s = null;
            this.t = aVar.P();
            this.u = new LinkedHashMap();
            this.v = null;
            this.w = false;
            this.a = lVar;
            this.b = xt1Var;
            this.c = modality;
            this.d = c92Var;
            this.f = kind;
            this.g = list;
            this.h = list2;
            this.i = ro8Var;
            this.k = eh5Var;
            this.l = by6Var;
        }

        public static void u(int i) {
            String str;
            int i2;
            switch (i) {
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
            switch (i) {
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    i2 = 2;
                    break;
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    i2 = 3;
                    break;
            }
            Object[] objArr = new Object[i2];
            switch (i) {
                case 1:
                    objArr[0] = "newOwner";
                    break;
                case 2:
                    objArr[0] = "newModality";
                    break;
                case 3:
                    objArr[0] = "newVisibility";
                    break;
                case 4:
                case 14:
                    objArr[0] = "kind";
                    break;
                case 5:
                    objArr[0] = "newValueParameterDescriptors";
                    break;
                case 6:
                    objArr[0] = "newContextReceiverParameters";
                    break;
                case 7:
                    objArr[0] = "newReturnType";
                    break;
                case 8:
                    objArr[0] = "owner";
                    break;
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 10:
                    objArr[0] = "modality";
                    break;
                case 12:
                    objArr[0] = "visibility";
                    break;
                case 17:
                    objArr[0] = "name";
                    break;
                case 19:
                case 21:
                    objArr[0] = "parameters";
                    break;
                case 23:
                    objArr[0] = "type";
                    break;
                case 25:
                    objArr[0] = "contextReceiverParameters";
                    break;
                case 35:
                    objArr[0] = "additionalAnnotations";
                    break;
                case 37:
                default:
                    objArr[0] = "substitution";
                    break;
                case 39:
                    objArr[0] = "userDataKey";
                    break;
            }
            switch (i) {
                case 9:
                    objArr[1] = "setOwner";
                    break;
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 11:
                    objArr[1] = "setModality";
                    break;
                case 13:
                    objArr[1] = "setVisibility";
                    break;
                case 15:
                    objArr[1] = "setKind";
                    break;
                case 16:
                    objArr[1] = "setCopyOverrides";
                    break;
                case 18:
                    objArr[1] = "setName";
                    break;
                case 20:
                    objArr[1] = "setValueParameters";
                    break;
                case 22:
                    objArr[1] = "setTypeParameters";
                    break;
                case 24:
                    objArr[1] = "setReturnType";
                    break;
                case 26:
                    objArr[1] = "setContextReceiverParameters";
                    break;
                case 27:
                    objArr[1] = "setExtensionReceiverParameter";
                    break;
                case 28:
                    objArr[1] = "setDispatchReceiverParameter";
                    break;
                case 29:
                    objArr[1] = "setOriginal";
                    break;
                case 30:
                    objArr[1] = "setSignatureChange";
                    break;
                case 31:
                    objArr[1] = "setPreserveSourceElement";
                    break;
                case 32:
                    objArr[1] = "setDropOriginalInContainingParts";
                    break;
                case 33:
                    objArr[1] = "setHiddenToOvercomeSignatureClash";
                    break;
                case 34:
                    objArr[1] = "setHiddenForResolutionEverywhereBesideSupercalls";
                    break;
                case 36:
                    objArr[1] = "setAdditionalAnnotations";
                    break;
                case 38:
                    objArr[1] = "setSubstitution";
                    break;
                case 40:
                    objArr[1] = "putUserData";
                    break;
                case 41:
                    objArr[1] = "getSubstitution";
                    break;
                case 42:
                    objArr[1] = "setJustForTypeSubstitution";
                    break;
            }
            switch (i) {
                case 8:
                    objArr[2] = "setOwner";
                    break;
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    break;
                case 10:
                    objArr[2] = "setModality";
                    break;
                case 12:
                    objArr[2] = "setVisibility";
                    break;
                case 14:
                    objArr[2] = "setKind";
                    break;
                case 17:
                    objArr[2] = "setName";
                    break;
                case 19:
                    objArr[2] = "setValueParameters";
                    break;
                case 21:
                    objArr[2] = "setTypeParameters";
                    break;
                case 23:
                    objArr[2] = "setReturnType";
                    break;
                case 25:
                    objArr[2] = "setContextReceiverParameters";
                    break;
                case 35:
                    objArr[2] = "setAdditionalAnnotations";
                    break;
                case 37:
                    objArr[2] = "setSubstitution";
                    break;
                case 39:
                    objArr[2] = "putUserData";
                    break;
                default:
                    objArr[2] = MethodDecl.initName;
                    break;
            }
            String str2 = String.format(str, objArr);
            switch (i) {
                case 9:
                case 11:
                case 13:
                case 15:
                case 16:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 36:
                case 38:
                case 40:
                case 41:
                case 42:
                    throw new IllegalStateException(str2);
                case 10:
                case 12:
                case 14:
                case 17:
                case 19:
                case 21:
                case 23:
                case 25:
                case 35:
                case 37:
                case 39:
                default:
                    throw new IllegalArgumentException(str2);
            }
        }

        @Override
        public c p(md mdVar) {
            if (mdVar == null) {
                u(35);
            }
            this.s = mdVar;
            return this;
        }

        @Override
        public c h(boolean z) {
            this.m = z;
            return this;
        }

        @Override
        public c b(ro8 ro8Var) {
            this.j = ro8Var;
            return this;
        }

        @Override
        public c l() {
            this.p = true;
            return this;
        }

        @Override
        public c a(ro8 ro8Var) {
            this.i = ro8Var;
            return this;
        }

        public c G(boolean z) {
            this.v = Boolean.valueOf(z);
            return this;
        }

        @Override
        public c o() {
            this.t = true;
            return this;
        }

        @Override
        public c e() {
            this.q = true;
            return this;
        }

        public c J(boolean z) {
            this.w = z;
            return this;
        }

        @Override
        public c s(CallableMemberDescriptor.Kind kind) {
            if (kind == null) {
                u(14);
            }
            this.f = kind;
            return this;
        }

        @Override
        public c r(Modality modality) {
            if (modality == null) {
                u(10);
            }
            this.c = modality;
            return this;
        }

        @Override
        public c k(by6 by6Var) {
            if (by6Var == null) {
                u(17);
            }
            this.l = by6Var;
            return this;
        }

        @Override
        public c g(CallableMemberDescriptor callableMemberDescriptor) {
            this.e = (e) callableMemberDescriptor;
            return this;
        }

        @Override
        public c q(xt1 xt1Var) {
            if (xt1Var == null) {
                u(8);
            }
            this.b = xt1Var;
            return this;
        }

        @Override
        public c f() {
            this.o = true;
            return this;
        }

        @Override
        public c j(eh5 eh5Var) {
            if (eh5Var == null) {
                u(23);
            }
            this.k = eh5Var;
            return this;
        }

        @Override
        public c t() {
            this.n = true;
            return this;
        }

        @Override
        public c c(l lVar) {
            if (lVar == null) {
                u(37);
            }
            this.a = lVar;
            return this;
        }

        @Override
        public c i(List list) {
            if (list == null) {
                u(21);
            }
            this.r = list;
            return this;
        }

        @Override
        public c m(List list) {
            if (list == null) {
                u(19);
            }
            this.g = list;
            return this;
        }

        @Override
        public c n(c92 c92Var) {
            if (c92Var == null) {
                u(12);
            }
            this.d = c92Var;
            return this;
        }

        @Override
        public e build() {
            return this.x.H0(this);
        }

        @Override
        public e.a d(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a interfaceC0379a, Object obj) {
            if (interfaceC0379a == null) {
                u(39);
            }
            this.u.put(interfaceC0379a, obj);
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(xt1 xt1Var, e eVar, md mdVar, by6 by6Var, CallableMemberDescriptor.Kind kind, yt9 yt9Var) {
        super(xt1Var, mdVar, by6Var, yt9Var);
        if (xt1Var == null) {
            Q(0);
        }
        if (mdVar == null) {
            Q(1);
        }
        if (by6Var == null) {
            Q(2);
        }
        if (kind == null) {
            Q(3);
        }
        if (yt9Var == null) {
            Q(4);
        }
        this.m = b92.i;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = true;
        this.y = false;
        this.z = null;
        this.A = null;
        this.D = null;
        this.E = null;
        this.B = eVar == null ? this : eVar;
        this.C = kind;
    }

    public static List J0(e eVar, List list, TypeSubstitutor typeSubstitutor) {
        if (list == null) {
            Q(28);
        }
        if (typeSubstitutor == null) {
            Q(29);
        }
        return K0(eVar, list, typeSubstitutor, false, false, null);
    }

    public static List K0(e eVar, List list, TypeSubstitutor typeSubstitutor, boolean z, boolean z2, boolean[] zArr) {
        if (list == null) {
            Q(30);
        }
        if (typeSubstitutor == null) {
            Q(31);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            h hVar = (h) it.next();
            eh5 type = hVar.getType();
            Variance variance = Variance.IN_VARIANCE;
            eh5 eh5VarP = typeSubstitutor.p(type, variance);
            eh5 eh5VarX0 = hVar.x0();
            eh5 eh5VarP2 = eh5VarX0 == null ? null : typeSubstitutor.p(eh5VarX0, variance);
            if (eh5VarP == null) {
                return null;
            }
            if ((eh5VarP != hVar.getType() || eh5VarX0 != eh5VarP2) && zArr != null) {
                zArr[0] = true;
            }
            arrayList.add(ValueParameterDescriptorImpl.F0(eVar, z ? null : hVar, hVar.getIndex(), hVar.getAnnotations(), hVar.getName(), eh5VarP, hVar.N(), hVar.u0(), hVar.r0(), eh5VarP2, z2 ? hVar.getSource() : yt9.a, hVar instanceof ValueParameterDescriptorImpl.WithDestructuringDeclaration ? new b(((ValueParameterDescriptorImpl.WithDestructuringDeclaration) hVar).I0()) : null));
        }
        return arrayList;
    }

    private static void Q(int i) {
        String str;
        int i2;
        switch (i) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                i2 = 2;
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "source";
                break;
            case 5:
                objArr[0] = "contextReceiverParameters";
                break;
            case 6:
                objArr[0] = "typeParameters";
                break;
            case 7:
            case 28:
            case 30:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 8:
            case 10:
                objArr[0] = "visibility";
                break;
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 11:
                objArr[0] = "unsubstitutedReturnType";
                break;
            case 12:
                objArr[0] = "extensionReceiverParameter";
                break;
            case 17:
                objArr[0] = "overriddenDescriptors";
                break;
            case 22:
                objArr[0] = "originalSubstitutor";
                break;
            case 24:
            case 29:
            case 31:
                objArr[0] = "substitutor";
                break;
            case 25:
                objArr[0] = "configuration";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 9:
                objArr[1] = "initialize";
                break;
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 13:
                objArr[1] = "getContextReceiverParameters";
                break;
            case 14:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 15:
                objArr[1] = "getModality";
                break;
            case 16:
                objArr[1] = "getVisibility";
                break;
            case 18:
                objArr[1] = "getTypeParameters";
                break;
            case 19:
                objArr[1] = "getValueParameters";
                break;
            case 20:
                objArr[1] = "getOriginal";
                break;
            case 21:
                objArr[1] = "getKind";
                break;
            case 23:
                objArr[1] = "newCopyBuilder";
                break;
            case 26:
                objArr[1] = "copy";
                break;
            case 27:
                objArr[1] = "getSourceToUseForCopy";
                break;
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "initialize";
                break;
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                break;
            case 10:
                objArr[2] = "setVisibility";
                break;
            case 11:
                objArr[2] = "setReturnType";
                break;
            case 12:
                objArr[2] = "setExtensionReceiverParameter";
                break;
            case 17:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case 22:
                objArr[2] = "substitute";
                break;
            case 24:
                objArr[2] = "newCopyBuilder";
                break;
            case 25:
                objArr[2] = "doSubstitute";
                break;
            case 28:
            case 29:
            case 30:
            case 31:
                objArr[2] = "getSubstitutedValueParameters";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 9:
            case 13:
            case 14:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 26:
            case 27:
                throw new IllegalStateException(str2);
            case 10:
            case 11:
            case 12:
            case 17:
            case 22:
            case 24:
            case 25:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    private void Y0(e eVar) {
        this.D = eVar;
    }

    @Override
    public boolean B0() {
        return this.u;
    }

    public e F0(xt1 xt1Var, Modality modality, c92 c92Var, CallableMemberDescriptor.Kind kind, boolean z) {
        e eVarBuild = l().q(xt1Var).r(modality).n(c92Var).s(kind).h(z).build();
        if (eVarBuild == null) {
            Q(26);
        }
        return eVarBuild;
    }

    public abstract a G0(xt1 xt1Var, e eVar, CallableMemberDescriptor.Kind kind, by6 by6Var, md mdVar, yt9 yt9Var);

    public e H0(c cVar) {
        so8 so8Var;
        ro8 ro8Var;
        eh5 eh5VarP;
        if (cVar == null) {
            Q(25);
        }
        boolean[] zArr = new boolean[1];
        md mdVarA = cVar.s != null ? od.a(getAnnotations(), cVar.s) : getAnnotations();
        xt1 xt1Var = cVar.b;
        e eVar = cVar.e;
        a aVarG0 = G0(xt1Var, eVar, cVar.f, cVar.l, mdVarA, I0(cVar.o, eVar));
        List typeParameters = cVar.r == null ? getTypeParameters() : cVar.r;
        zArr[0] = zArr[0] | (!typeParameters.isEmpty());
        ArrayList arrayList = new ArrayList(typeParameters.size());
        TypeSubstitutor typeSubstitutorC = w82.c(typeParameters, cVar.a, aVarG0, arrayList, zArr);
        if (typeSubstitutorC == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        if (!cVar.h.isEmpty()) {
            int i = 0;
            for (ro8 ro8Var2 : cVar.h) {
                eh5 eh5VarP2 = typeSubstitutorC.p(ro8Var2.getType(), Variance.IN_VARIANCE);
                if (eh5VarP2 == null) {
                    return null;
                }
                int i2 = i + 1;
                arrayList2.add(s82.b(aVarG0, eh5VarP2, ((xy4) ro8Var2.getValue()).a(), ro8Var2.getAnnotations(), i));
                zArr[0] = zArr[0] | (eh5VarP2 != ro8Var2.getType());
                i = i2;
            }
        }
        ro8 ro8Var3 = cVar.i;
        if (ro8Var3 != null) {
            eh5 eh5VarP3 = typeSubstitutorC.p(ro8Var3.getType(), Variance.IN_VARIANCE);
            if (eh5VarP3 == null) {
                return null;
            }
            so8 so8Var2 = new so8(aVarG0, new ek3(aVarG0, eh5VarP3, cVar.i.getValue()), cVar.i.getAnnotations());
            zArr[0] = (eh5VarP3 != cVar.i.getType()) | zArr[0];
            so8Var = so8Var2;
        } else {
            so8Var = null;
        }
        ro8 ro8Var4 = cVar.j;
        if (ro8Var4 != null) {
            ro8 ro8VarC = ro8Var4.c(typeSubstitutorC);
            if (ro8VarC == null) {
                return null;
            }
            zArr[0] = zArr[0] | (ro8VarC != cVar.j);
            ro8Var = ro8VarC;
        } else {
            ro8Var = null;
        }
        List listK0 = K0(aVarG0, cVar.g, typeSubstitutorC, cVar.p, cVar.o, zArr);
        if (listK0 == null || (eh5VarP = typeSubstitutorC.p(cVar.k, Variance.OUT_VARIANCE)) == null) {
            return null;
        }
        boolean z = zArr[0] | (eh5VarP != cVar.k);
        zArr[0] = z;
        if (!z && cVar.w) {
            return this;
        }
        aVarG0.M0(so8Var, ro8Var, arrayList2, arrayList, listK0, eh5VarP, cVar.c, cVar.d);
        aVarG0.a1(this.n);
        aVarG0.X0(this.o);
        aVarG0.S0(this.p);
        aVarG0.Z0(this.q);
        aVarG0.d1(this.r);
        aVarG0.c1(this.w);
        aVarG0.R0(this.s);
        aVarG0.Q0(this.t);
        aVarG0.T0(this.x);
        aVarG0.W0(cVar.q);
        aVarG0.V0(cVar.t);
        aVarG0.U0(cVar.v != null ? cVar.v.booleanValue() : this.y);
        if (!cVar.u.isEmpty() || this.E != null) {
            Map map = cVar.u;
            Map map2 = this.E;
            if (map2 != null) {
                for (Map.Entry entry : map2.entrySet()) {
                    if (!map.containsKey(entry.getKey())) {
                        map.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            if (map.size() == 1) {
                aVarG0.E = Collections.singletonMap(map.keySet().iterator().next(), map.values().iterator().next());
            } else {
                aVarG0.E = map;
            }
        }
        if (cVar.n || v0() != null) {
            aVarG0.Y0((v0() != null ? v0() : this).c(typeSubstitutorC));
        }
        if (cVar.m && !a().e().isEmpty()) {
            if (cVar.a.f()) {
                c74 c74Var = this.A;
                if (c74Var != null) {
                    aVarG0.A = c74Var;
                } else {
                    aVarG0.O(e());
                }
            } else {
                aVarG0.A = new C0380a(typeSubstitutorC);
            }
        }
        return aVarG0;
    }

    public final yt9 I0(boolean z, e eVar) {
        yt9 source;
        if (z) {
            if (eVar == null) {
                eVar = a();
            }
            source = eVar.getSource();
        } else {
            source = yt9.a;
        }
        if (source == null) {
            Q(27);
        }
        return source;
    }

    @Override
    public Object K(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a interfaceC0379a) {
        Map map = this.E;
        if (map == null) {
            return null;
        }
        return map.get(interfaceC0379a);
    }

    public boolean L0() {
        return this.x;
    }

    public a M0(ro8 ro8Var, ro8 ro8Var2, List list, List list2, List list3, eh5 eh5Var, Modality modality, c92 c92Var) {
        if (list == null) {
            Q(5);
        }
        if (list2 == null) {
            Q(6);
        }
        if (list3 == null) {
            Q(7);
        }
        if (c92Var == null) {
            Q(8);
        }
        this.f = i81.b1(list2);
        this.g = i81.b1(list3);
        this.h = eh5Var;
        this.l = modality;
        this.m = c92Var;
        this.j = ro8Var;
        this.k = ro8Var2;
        this.i = list;
        for (int i = 0; i < list2.size(); i++) {
            hcb hcbVar = (hcb) list2.get(i);
            if (hcbVar.getIndex() != i) {
                throw new IllegalStateException(hcbVar + " index is " + hcbVar.getIndex() + " but position is " + i);
            }
        }
        for (int i2 = 0; i2 < list3.size(); i2++) {
            h hVar = (h) list3.get(i2);
            if (hVar.getIndex() != i2) {
                throw new IllegalStateException(hVar + "index is " + hVar.getIndex() + " but position is " + i2);
            }
        }
        return this;
    }

    public c N0(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            Q(24);
        }
        return new c(this, typeSubstitutor.j(), b(), j(), getVisibility(), getKind(), f(), y0(), b0(), getReturnType(), null);
    }

    @Override
    public void O(Collection collection) {
        if (collection == null) {
            Q(17);
        }
        this.z = collection;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (((e) it.next()).P()) {
                this.v = true;
                return;
            }
        }
    }

    public final void O0() {
        c74 c74Var = this.A;
        if (c74Var != null) {
            this.z = (Collection) c74Var.invoke();
            this.A = null;
        }
    }

    @Override
    public boolean P() {
        return this.v;
    }

    public void P0(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a interfaceC0379a, Object obj) {
        if (this.E == null) {
            this.E = new LinkedHashMap();
        }
        this.E.put(interfaceC0379a, obj);
    }

    public void Q0(boolean z) {
        this.t = z;
    }

    public void R0(boolean z) {
        this.s = z;
    }

    public void S0(boolean z) {
        this.p = z;
    }

    public void T0(boolean z) {
        this.x = z;
    }

    public void U0(boolean z) {
        this.y = z;
    }

    public final void V0(boolean z) {
        this.v = z;
    }

    public final void W0(boolean z) {
        this.u = z;
    }

    public void X0(boolean z) {
        this.o = z;
    }

    @Override
    public ro8 Z() {
        return this.k;
    }

    public void Z0(boolean z) {
        this.q = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.e] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    @Override
    public e a() {
        e eVarA;
        e eVar = this.B;
        ?? r1 = this;
        if (eVar != this) {
            eVarA = eVar.a();
        }
        if (r1 == 0) {
            r1 = eVarA;
            Q(20);
        }
        r1 = eVarA;
        return r1;
    }

    public void a1(boolean z) {
        this.n = z;
    }

    @Override
    public ro8 b0() {
        return this.j;
    }

    public void b1(eh5 eh5Var) {
        if (eh5Var == null) {
            Q(11);
        }
        this.h = eh5Var;
    }

    public void c1(boolean z) {
        this.w = z;
    }

    public void d1(boolean z) {
        this.r = z;
    }

    @Override
    public Collection e() {
        O0();
        Collection collectionEmptyList = this.z;
        if (collectionEmptyList == null) {
            collectionEmptyList = Collections.emptyList();
        }
        if (collectionEmptyList == null) {
            Q(14);
        }
        return collectionEmptyList;
    }

    public void e1(c92 c92Var) {
        if (c92Var == null) {
            Q(10);
        }
        this.m = c92Var;
    }

    @Override
    public List f() {
        List list = this.g;
        if (list == null) {
            Q(19);
        }
        return list;
    }

    @Override
    public boolean f0() {
        return this.t;
    }

    @Override
    public CallableMemberDescriptor.Kind getKind() {
        CallableMemberDescriptor.Kind kind = this.C;
        if (kind == null) {
            Q(21);
        }
        return kind;
    }

    public eh5 getReturnType() {
        return this.h;
    }

    @Override
    public List getTypeParameters() {
        List list = this.f;
        if (list != null) {
            return list;
        }
        throw new IllegalStateException("typeParameters == null for " + this);
    }

    @Override
    public c92 getVisibility() {
        c92 c92Var = this.m;
        if (c92Var == null) {
            Q(16);
        }
        return c92Var;
    }

    public boolean isExternal() {
        return this.p;
    }

    @Override
    public boolean isInfix() {
        if (this.o) {
            return true;
        }
        Iterator it = a().e().iterator();
        while (it.hasNext()) {
            if (((e) it.next()).isInfix()) {
                return true;
            }
        }
        return false;
    }

    public boolean isInline() {
        return this.q;
    }

    @Override
    public boolean isOperator() {
        if (this.n) {
            return true;
        }
        Iterator it = a().e().iterator();
        while (it.hasNext()) {
            if (((e) it.next()).isOperator()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isSuspend() {
        return this.w;
    }

    @Override
    public Modality j() {
        Modality modality = this.l;
        if (modality == null) {
            Q(15);
        }
        return modality;
    }

    @Override
    public boolean k0() {
        return this.y;
    }

    public e.a l() {
        c cVarN0 = N0(TypeSubstitutor.b);
        if (cVarN0 == null) {
            Q(23);
        }
        return cVarN0;
    }

    @Override
    public boolean m0() {
        return this.s;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        return bu1Var.l(this, obj);
    }

    public boolean v() {
        return this.r;
    }

    @Override
    public e v0() {
        return this.D;
    }

    @Override
    public List y0() {
        List list = this.i;
        if (list == null) {
            Q(13);
        }
        return list;
    }

    @Override
    public e c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            Q(22);
        }
        return typeSubstitutor.k() ? this : N0(typeSubstitutor).g(a()).f().J(true).build();
    }
}
