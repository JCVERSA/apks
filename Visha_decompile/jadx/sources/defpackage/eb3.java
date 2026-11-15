package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.c;

public class eb3 extends rw0 {
    public final sbb j;
    public final MemberScope k;
    public final x17 l;
    public final md m;

    public class a extends dn6 {
        public final fn6 b;
        public final fn6 c;
        public final x17 d;
        public final eb3 e;

        public class C0340a implements e74 {
            public final eb3 b;

            public C0340a(eb3 eb3Var) {
                this.b = eb3Var;
            }

            @Override
            public Collection invoke(by6 by6Var) {
                return a.this.m(by6Var);
            }
        }

        public class b implements e74 {
            public final eb3 b;

            public b(eb3 eb3Var) {
                this.b = eb3Var;
            }

            @Override
            public Collection invoke(by6 by6Var) {
                return a.this.n(by6Var);
            }
        }

        public class c implements c74 {
            public final eb3 b;

            public c(eb3 eb3Var) {
                this.b = eb3Var;
            }

            @Override
            public Collection invoke() {
                return a.this.l();
            }
        }

        public class d extends q17 {
            public final Set a;

            public d(Set set) {
                this.a = set;
            }

            public static void f(int i) {
                Object[] objArr = new Object[3];
                if (i == 1) {
                    objArr[0] = "fromSuper";
                } else if (i != 2) {
                    objArr[0] = "fakeOverride";
                } else {
                    objArr[0] = "fromCurrent";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope$4";
                if (i == 1 || i == 2) {
                    objArr[2] = "conflict";
                } else {
                    objArr[2] = "addFakeOverride";
                }
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override
            public void a(CallableMemberDescriptor callableMemberDescriptor) {
                if (callableMemberDescriptor == null) {
                    f(0);
                }
                OverridingUtil.K(callableMemberDescriptor, null);
                this.a.add(callableMemberDescriptor);
            }

            @Override
            public void e(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
                if (callableMemberDescriptor == null) {
                    f(1);
                }
                if (callableMemberDescriptor2 == null) {
                    f(2);
                }
            }
        }

        public a(eb3 eb3Var, vx9 vx9Var) {
            if (vx9Var == null) {
                h(0);
            }
            this.e = eb3Var;
            this.b = vx9Var.i(new C0340a(eb3Var));
            this.c = vx9Var.i(new b(eb3Var));
            this.d = vx9Var.c(new c(eb3Var));
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0014  */
        public static void h(int i) {
            String str;
            int i2;
            if (i != 3 && i != 7 && i != 9 && i != 12) {
                switch (i) {
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                        str = "@NotNull method %s.%s must not return null";
                        break;
                    default:
                        str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                        break;
                }
            } else {
                str = "@NotNull method %s.%s must not return null";
            }
            if (i != 3 && i != 7 && i != 9 && i != 12) {
                switch (i) {
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
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
                case 4:
                case 5:
                case 8:
                case 10:
                    objArr[0] = "name";
                    break;
                case 2:
                case 6:
                    objArr[0] = "location";
                    break;
                case 3:
                case 7:
                case 9:
                case 12:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope";
                    break;
                case 11:
                    objArr[0] = "fromSupertypes";
                    break;
                case 13:
                    objArr[0] = "kindFilter";
                    break;
                case 14:
                    objArr[0] = "nameFilter";
                    break;
                case 20:
                    objArr[0] = TtmlNode.TAG_P;
                    break;
                default:
                    objArr[0] = "storageManager";
                    break;
            }
            if (i == 3) {
                objArr[1] = "getContributedVariables";
            } else if (i == 7) {
                objArr[1] = "getContributedFunctions";
            } else if (i == 9) {
                objArr[1] = "getSupertypeScope";
            } else if (i != 12) {
                switch (i) {
                    case 15:
                        objArr[1] = "getContributedDescriptors";
                        break;
                    case 16:
                        objArr[1] = "computeAllDeclarations";
                        break;
                    case 17:
                        objArr[1] = "getFunctionNames";
                        break;
                    case 18:
                        objArr[1] = "getClassifierNames";
                        break;
                    case 19:
                        objArr[1] = "getVariableNames";
                        break;
                    default:
                        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope";
                        break;
                }
            } else {
                objArr[1] = "resolveFakeOverrides";
            }
            switch (i) {
                case 1:
                case 2:
                    objArr[2] = "getContributedVariables";
                    break;
                case 3:
                case 7:
                case 9:
                case 12:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    break;
                case 4:
                    objArr[2] = "computeProperties";
                    break;
                case 5:
                case 6:
                    objArr[2] = "getContributedFunctions";
                    break;
                case 8:
                    objArr[2] = "computeFunctions";
                    break;
                case 10:
                case 11:
                    objArr[2] = "resolveFakeOverrides";
                    break;
                case 13:
                case 14:
                    objArr[2] = "getContributedDescriptors";
                    break;
                case 20:
                    objArr[2] = "printScopeStructure";
                    break;
                default:
                    objArr[2] = MethodDecl.initName;
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 3 && i != 7 && i != 9 && i != 12) {
                switch (i) {
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                        break;
                    default:
                        throw new IllegalArgumentException(str2);
                }
            }
            throw new IllegalStateException(str2);
        }

        @Override
        public Set a() {
            Set set = (Set) this.e.l.invoke();
            if (set == null) {
                h(17);
            }
            return set;
        }

        @Override
        public Collection b(by6 by6Var, or5 or5Var) {
            if (by6Var == null) {
                h(1);
            }
            if (or5Var == null) {
                h(2);
            }
            Collection collection = (Collection) this.c.invoke(by6Var);
            if (collection == null) {
                h(3);
            }
            return collection;
        }

        @Override
        public Collection c(by6 by6Var, or5 or5Var) {
            if (by6Var == null) {
                h(5);
            }
            if (or5Var == null) {
                h(6);
            }
            Collection collection = (Collection) this.b.invoke(by6Var);
            if (collection == null) {
                h(7);
            }
            return collection;
        }

        @Override
        public Set d() {
            Set set = (Set) this.e.l.invoke();
            if (set == null) {
                h(19);
            }
            return set;
        }

        @Override
        public Set e() {
            Set setEmptySet = Collections.emptySet();
            if (setEmptySet == null) {
                h(18);
            }
            return setEmptySet;
        }

        @Override
        public Collection g(u82 u82Var, e74 e74Var) {
            if (u82Var == null) {
                h(13);
            }
            if (e74Var == null) {
                h(14);
            }
            Collection collection = (Collection) this.d.invoke();
            if (collection == null) {
                h(15);
            }
            return collection;
        }

        public final Collection l() {
            HashSet hashSet = new HashSet();
            for (by6 by6Var : (Set) this.e.l.invoke()) {
                NoLookupLocation noLookupLocation = NoLookupLocation.FOR_NON_TRACKED_SCOPE;
                hashSet.addAll(c(by6Var, noLookupLocation));
                hashSet.addAll(b(by6Var, noLookupLocation));
            }
            return hashSet;
        }

        public final Collection m(by6 by6Var) {
            if (by6Var == null) {
                h(8);
            }
            return p(by6Var, o().c(by6Var, NoLookupLocation.FOR_NON_TRACKED_SCOPE));
        }

        public final Collection n(by6 by6Var) {
            if (by6Var == null) {
                h(4);
            }
            return p(by6Var, o().b(by6Var, NoLookupLocation.FOR_NON_TRACKED_SCOPE));
        }

        public final MemberScope o() {
            MemberScope memberScopeP = ((eh5) this.e.m().k().iterator().next()).p();
            if (memberScopeP == null) {
                h(9);
            }
            return memberScopeP;
        }

        public final Collection p(by6 by6Var, Collection collection) {
            if (by6Var == null) {
                h(10);
            }
            if (collection == null) {
                h(11);
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            OverridingUtil.f.v(by6Var, collection, Collections.emptySet(), this.e, new d(linkedHashSet));
            return linkedHashSet;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eb3(vx9 vx9Var, qw0 qw0Var, eh5 eh5Var, by6 by6Var, x17 x17Var, md mdVar, yt9 yt9Var) {
        super(vx9Var, qw0Var, by6Var, yt9Var, false);
        if (vx9Var == null) {
            l0(6);
        }
        if (qw0Var == null) {
            l0(7);
        }
        if (eh5Var == null) {
            l0(8);
        }
        if (by6Var == null) {
            l0(9);
        }
        if (x17Var == null) {
            l0(10);
        }
        if (mdVar == null) {
            l0(11);
        }
        if (yt9Var == null) {
            l0(12);
        }
        this.m = mdVar;
        this.j = new fx0(this, Collections.emptyList(), Collections.singleton(eh5Var), vx9Var);
        this.k = new a(this, vx9Var);
        this.l = x17Var;
    }

    public static eb3 G0(vx9 vx9Var, qw0 qw0Var, by6 by6Var, x17 x17Var, md mdVar, yt9 yt9Var) {
        if (vx9Var == null) {
            l0(0);
        }
        if (qw0Var == null) {
            l0(1);
        }
        if (by6Var == null) {
            l0(2);
        }
        if (x17Var == null) {
            l0(3);
        }
        if (mdVar == null) {
            l0(4);
        }
        if (yt9Var == null) {
            l0(5);
        }
        return new eb3(vx9Var, qw0Var, qw0Var.q(), by6Var, x17Var, mdVar, yt9Var);
    }

    private static void l0(int i) {
        String str;
        int i2;
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "enumClass";
                break;
            case 2:
            case 9:
                objArr[0] = "name";
                break;
            case 3:
            case 10:
                objArr[0] = "enumMemberNames";
                break;
            case 4:
            case 11:
                objArr[0] = "annotations";
                break;
            case 5:
            case 12:
                objArr[0] = "source";
                break;
            case 6:
            default:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "containingClass";
                break;
            case 8:
                objArr[0] = "supertype";
                break;
            case 13:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i) {
            case 14:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case 16:
                objArr[1] = "getConstructors";
                break;
            case 17:
                objArr[1] = "getTypeConstructor";
                break;
            case 18:
                objArr[1] = "getKind";
                break;
            case 19:
                objArr[1] = "getModality";
                break;
            case 20:
                objArr[1] = "getVisibility";
                break;
            case 21:
                objArr[1] = "getAnnotations";
                break;
            case 22:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 23:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = MethodDecl.initName;
                break;
            case 13:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                break;
            default:
                objArr[2] = "create";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override
    public boolean E0() {
        return false;
    }

    @Override
    public Collection T() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            l0(23);
        }
        return listEmptyList;
    }

    @Override
    public inb c0() {
        return null;
    }

    @Override
    public MemberScope d0(c cVar) {
        if (cVar == null) {
            l0(13);
        }
        MemberScope memberScope = this.k;
        if (memberScope == null) {
            l0(14);
        }
        return memberScope;
    }

    @Override
    public boolean f0() {
        return false;
    }

    @Override
    public boolean g() {
        return false;
    }

    @Override
    public md getAnnotations() {
        md mdVar = this.m;
        if (mdVar == null) {
            l0(21);
        }
        return mdVar;
    }

    @Override
    public ClassKind getKind() {
        ClassKind classKind = ClassKind.ENUM_ENTRY;
        if (classKind == null) {
            l0(18);
        }
        return classKind;
    }

    @Override
    public c92 getVisibility() {
        c92 c92Var = b92.e;
        if (c92Var == null) {
            l0(20);
        }
        return c92Var;
    }

    @Override
    public boolean h0() {
        return false;
    }

    @Override
    public boolean isInline() {
        return false;
    }

    @Override
    public Modality j() {
        Modality modality = Modality.FINAL;
        if (modality == null) {
            l0(19);
        }
        return modality;
    }

    @Override
    public boolean j0() {
        return false;
    }

    @Override
    public sbb m() {
        sbb sbbVar = this.j;
        if (sbbVar == null) {
            l0(17);
        }
        return sbbVar;
    }

    @Override
    public boolean m0() {
        return false;
    }

    @Override
    public Collection n() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            l0(16);
        }
        return listEmptyList;
    }

    @Override
    public MemberScope n0() {
        MemberScope.a aVar = MemberScope.a.b;
        if (aVar == null) {
            l0(15);
        }
        return aVar;
    }

    @Override
    public qw0 o0() {
        return null;
    }

    @Override
    public List r() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList == null) {
            l0(22);
        }
        return listEmptyList;
    }

    @Override
    public boolean s() {
        return false;
    }

    public String toString() {
        return "enum entry " + getName();
    }

    @Override
    public b w() {
        return null;
    }
}
