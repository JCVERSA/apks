package kotlin.reflect.jvm.internal.impl.types;

import defpackage.abb;
import defpackage.c74;
import defpackage.ddb;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fn6;
import defpackage.fy3;
import defpackage.gd3;
import defpackage.hcb;
import defpackage.i81;
import defpackage.id3;
import defpackage.jcb;
import defpackage.ky5;
import defpackage.mcb;
import defpackage.mgb;
import defpackage.oc3;
import defpackage.pc3;
import defpackage.px0;
import defpackage.qw0;
import defpackage.r45;
import defpackage.scb;
import defpackage.sm9;
import defpackage.wn8;
import defpackage.xe9;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class TypeParameterUpperBoundEraser {
    public static final a f = new a(null);
    public final oc3 a;
    public final jcb b;
    public final LockBasedStorageManager c;
    public final yi5 d;
    public final fn6 e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:20:0x008a  */
        /* JADX WARN: Code duplicated, block: B:24:0x0094  */
        /* JADX WARN: Code duplicated, block: B:29:0x00aa  */
        /* JADX WARN: Code duplicated, block: B:48:0x0122  */
        /* JADX WARN: Code duplicated, block: B:52:0x012c  */
        /* JADX WARN: Code duplicated, block: B:57:0x0142  */
        /* JADX WARN: Code duplicated, block: B:79:0x01c1  */
        /* JADX WARN: Code duplicated, block: B:83:0x01cb  */
        /* JADX WARN: Code duplicated, block: B:88:0x01e1  */
        public final eh5 a(eh5 eh5Var, TypeSubstitutor typeSubstitutor, Set set, boolean z) {
            mgb mgbVarF;
            boolean z2;
            eh5 type;
            boolean z3;
            eh5 type2;
            boolean z4;
            eh5 type3;
            y45.j(eh5Var, "<this>");
            y45.j(typeSubstitutor, "substitutor");
            mgb mgbVarL0 = eh5Var.L0();
            if (mgbVarL0 instanceof fy3) {
                fy3 fy3Var = (fy3) mgbVarL0;
                sm9 sm9VarQ0 = fy3Var.Q0();
                if (!sm9VarQ0.I0().getParameters().isEmpty() && sm9VarQ0.I0().c() != null) {
                    List parameters = sm9VarQ0.I0().getParameters();
                    y45.i(parameters, "constructor.parameters");
                    List<hcb> list = parameters;
                    ArrayList arrayList = new ArrayList(z71.v(list, 10));
                    for (hcb hcbVar : list) {
                        mcb starProjectionImpl = (mcb) i81.r0(eh5Var.G0(), hcbVar.getIndex());
                        if (!z || starProjectionImpl == null || (type3 = starProjectionImpl.getType()) == null) {
                            if (set == null && set.contains(hcbVar)) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (starProjectionImpl != null || z4) {
                                starProjectionImpl = new StarProjectionImpl(hcbVar);
                            } else {
                                l lVarJ = typeSubstitutor.j();
                                eh5 type4 = starProjectionImpl.getType();
                                y45.i(type4, "argument.type");
                                if (lVarJ.e(type4) == null) {
                                    starProjectionImpl = new StarProjectionImpl(hcbVar);
                                }
                            }
                        } else {
                            y45.i(type3, "type");
                            if (TypeUtilsKt.e(type3)) {
                                if (set == null) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (starProjectionImpl != null) {
                                    starProjectionImpl = new StarProjectionImpl(hcbVar);
                                } else {
                                    starProjectionImpl = new StarProjectionImpl(hcbVar);
                                }
                            }
                        }
                        arrayList.add(starProjectionImpl);
                    }
                    sm9VarQ0 = scb.f(sm9VarQ0, arrayList, null, 2, null);
                }
                sm9 sm9VarR0 = fy3Var.R0();
                if (!sm9VarR0.I0().getParameters().isEmpty() && sm9VarR0.I0().c() != null) {
                    List parameters2 = sm9VarR0.I0().getParameters();
                    y45.i(parameters2, "constructor.parameters");
                    List<hcb> list2 = parameters2;
                    ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
                    for (hcb hcbVar2 : list2) {
                        mcb starProjectionImpl2 = (mcb) i81.r0(eh5Var.G0(), hcbVar2.getIndex());
                        if (!z || starProjectionImpl2 == null || (type2 = starProjectionImpl2.getType()) == null) {
                            if (set == null && set.contains(hcbVar2)) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (starProjectionImpl2 != null || z3) {
                                starProjectionImpl2 = new StarProjectionImpl(hcbVar2);
                            } else {
                                l lVarJ2 = typeSubstitutor.j();
                                eh5 type5 = starProjectionImpl2.getType();
                                y45.i(type5, "argument.type");
                                if (lVarJ2.e(type5) == null) {
                                    starProjectionImpl2 = new StarProjectionImpl(hcbVar2);
                                }
                            }
                        } else {
                            y45.i(type2, "type");
                            if (TypeUtilsKt.e(type2)) {
                                if (set == null) {
                                    z3 = false;
                                } else {
                                    z3 = false;
                                }
                                if (starProjectionImpl2 != null) {
                                    starProjectionImpl2 = new StarProjectionImpl(hcbVar2);
                                } else {
                                    starProjectionImpl2 = new StarProjectionImpl(hcbVar2);
                                }
                            }
                        }
                        arrayList2.add(starProjectionImpl2);
                    }
                    sm9VarR0 = scb.f(sm9VarR0, arrayList2, null, 2, null);
                }
                mgbVarF = KotlinTypeFactory.d(sm9VarQ0, sm9VarR0);
            } else {
                if (!(mgbVarL0 instanceof sm9)) {
                    throw new NoWhenBranchMatchedException();
                }
                sm9 sm9Var = (sm9) mgbVarL0;
                if (sm9Var.I0().getParameters().isEmpty() || sm9Var.I0().c() == null) {
                    mgbVarF = sm9Var;
                } else {
                    List parameters3 = sm9Var.I0().getParameters();
                    y45.i(parameters3, "constructor.parameters");
                    List<hcb> list3 = parameters3;
                    ArrayList arrayList3 = new ArrayList(z71.v(list3, 10));
                    for (hcb hcbVar3 : list3) {
                        mcb starProjectionImpl3 = (mcb) i81.r0(eh5Var.G0(), hcbVar3.getIndex());
                        if (!z || starProjectionImpl3 == null || (type = starProjectionImpl3.getType()) == null) {
                            if (set == null && set.contains(hcbVar3)) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (starProjectionImpl3 != null || z2) {
                                starProjectionImpl3 = new StarProjectionImpl(hcbVar3);
                            } else {
                                l lVarJ3 = typeSubstitutor.j();
                                eh5 type6 = starProjectionImpl3.getType();
                                y45.i(type6, "argument.type");
                                if (lVarJ3.e(type6) == null) {
                                    starProjectionImpl3 = new StarProjectionImpl(hcbVar3);
                                }
                            }
                        } else {
                            y45.i(type, "type");
                            if (TypeUtilsKt.e(type)) {
                                if (set == null) {
                                    z2 = false;
                                } else {
                                    z2 = false;
                                }
                                if (starProjectionImpl3 != null) {
                                    starProjectionImpl3 = new StarProjectionImpl(hcbVar3);
                                } else {
                                    starProjectionImpl3 = new StarProjectionImpl(hcbVar3);
                                }
                            }
                        }
                        arrayList3.add(starProjectionImpl3);
                    }
                    mgbVarF = scb.f(sm9Var, arrayList3, null, 2, null);
                }
            }
            eh5 eh5VarN = typeSubstitutor.n(ddb.b(mgbVarF, mgbVarL0), Variance.OUT_VARIANCE);
            y45.i(eh5VarN, "substitutor.safeSubstitu…s, Variance.OUT_VARIANCE)");
            return eh5VarN;
        }

        public a() {
        }
    }

    public static final class b {
        public final hcb a;
        public final pc3 b;

        public b(hcb hcbVar, pc3 pc3Var) {
            y45.j(hcbVar, "typeParameter");
            y45.j(pc3Var, "typeAttr");
            this.a = hcbVar;
            this.b = pc3Var;
        }

        public final pc3 a() {
            return this.b;
        }

        public final hcb b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(bVar.a, this.a) && y45.e(bVar.b, this.b);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode();
            return iHashCode + (iHashCode * 31) + this.b.hashCode();
        }

        public String toString() {
            return "DataToEraseUpperBound(typeParameter=" + this.a + ", typeAttr=" + this.b + ')';
        }
    }

    public TypeParameterUpperBoundEraser(oc3 oc3Var, jcb jcbVar) {
        y45.j(oc3Var, "projectionComputer");
        y45.j(jcbVar, "options");
        this.a = oc3Var;
        this.b = jcbVar;
        LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("Type parameter upper bound erasure results");
        this.c = lockBasedStorageManager;
        this.d = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final gd3 invoke() {
                return id3.d(ErrorTypeKind.CANNOT_COMPUTE_ERASED_BOUND, this.this$0.toString());
            }
        });
        fn6 fn6VarI = lockBasedStorageManager.i(new e74() {
            {
                super(1);
            }

            @Override
            public final eh5 invoke(TypeParameterUpperBoundEraser.b bVar) {
                return this.this$0.d(bVar.b(), bVar.a());
            }
        });
        y45.i(fn6VarI, "storage.createMemoizedFu…ameter, typeAttr) }\n    }");
        this.e = fn6VarI;
    }

    public final eh5 b(pc3 pc3Var) {
        eh5 eh5VarY;
        sm9 sm9VarA = pc3Var.a();
        return (sm9VarA == null || (eh5VarY = TypeUtilsKt.y(sm9VarA)) == null) ? e() : eh5VarY;
    }

    public final eh5 c(hcb hcbVar, pc3 pc3Var) {
        y45.j(hcbVar, "typeParameter");
        y45.j(pc3Var, "typeAttr");
        Object objInvoke = this.e.invoke(new b(hcbVar, pc3Var));
        y45.i(objInvoke, "getErasedUpperBound(Data…typeParameter, typeAttr))");
        return (eh5) objInvoke;
    }

    public final eh5 d(hcb hcbVar, pc3 pc3Var) {
        mcb mcbVarA;
        Set setC = pc3Var.c();
        if (setC != null && setC.contains(hcbVar.a())) {
            return b(pc3Var);
        }
        sm9 sm9VarQ = hcbVar.q();
        y45.i(sm9VarQ, "typeParameter.defaultType");
        Set<hcb> setG = TypeUtilsKt.g(sm9VarQ, setC);
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(setG, 10)), 16));
        for (hcb hcbVar2 : setG) {
            if (setC == null || !setC.contains(hcbVar2)) {
                mcbVarA = this.a.a(hcbVar2, pc3Var, this, c(hcbVar2, pc3Var.d(hcbVar)));
            } else {
                mcbVarA = n.t(hcbVar2, pc3Var);
                y45.i(mcbVarA, "makeStarProjection(it, typeAttr)");
            }
            Pair pairA = abb.a(hcbVar2.m(), mcbVarA);
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        TypeSubstitutor typeSubstitutorG = TypeSubstitutor.g(k.a.e(k.c, linkedHashMap, false, 2, null));
        y45.i(typeSubstitutorG, "create(TypeConstructorSu…ap(erasedTypeParameters))");
        List upperBounds = hcbVar.getUpperBounds();
        y45.i(upperBounds, "typeParameter.upperBounds");
        Set setF = f(typeSubstitutorG, upperBounds, pc3Var);
        if (setF.isEmpty()) {
            return b(pc3Var);
        }
        if (!this.b.a()) {
            if (setF.size() == 1) {
                return (eh5) i81.N0(setF);
            }
            throw new IllegalArgumentException("Should only be one computed upper bound if no need to intersect all bounds");
        }
        List listB1 = i81.b1(setF);
        ArrayList arrayList = new ArrayList(z71.v(listB1, 10));
        Iterator it = listB1.iterator();
        while (it.hasNext()) {
            arrayList.add(((eh5) it.next()).L0());
        }
        return r45.a(arrayList);
    }

    public final gd3 e() {
        return (gd3) this.d.getValue();
    }

    public final Set f(TypeSubstitutor typeSubstitutor, List list, pc3 pc3Var) {
        Set setB = xe9.b();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            eh5 eh5Var = (eh5) it.next();
            px0 px0VarC = eh5Var.I0().c();
            if (px0VarC instanceof qw0) {
                setB.add(f.a(eh5Var, typeSubstitutor, pc3Var.c(), this.b.b()));
            } else if (px0VarC instanceof hcb) {
                Set setC = pc3Var.c();
                if (setC == null || !setC.contains(px0VarC)) {
                    List upperBounds = ((hcb) px0VarC).getUpperBounds();
                    y45.i(upperBounds, "declaration.upperBounds");
                    setB.addAll(f(typeSubstitutor, upperBounds, pc3Var));
                } else {
                    setB.add(b(pc3Var));
                }
            }
            if (!this.b.a()) {
                break;
            }
        }
        return xe9.a(setB);
    }

    public TypeParameterUpperBoundEraser(oc3 oc3Var, jcb jcbVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(oc3Var, (i & 2) != 0 ? new jcb(false, false) : jcbVar);
    }
}
