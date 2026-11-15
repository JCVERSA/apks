package kotlin.reflect.jvm.internal;

import defpackage.be5;
import defpackage.c74;
import defpackage.c81;
import defpackage.c92;
import defpackage.clb;
import defpackage.ed5;
import defpackage.eh5;
import defpackage.ff5;
import defpackage.hcb;
import defpackage.hi;
import defpackage.hw7;
import defpackage.i81;
import defpackage.if5;
import defpackage.lf5;
import defpackage.pq8;
import defpackage.r65;
import defpackage.ro8;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z71;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.KParameter;
import kotlin.reflect.KVisibility;
import kotlin.reflect.full.IllegalCallableAccessException;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;

public abstract class KCallableImpl implements be5, if5 {
    public final e.a b;
    public final e.a c;
    public final e.a d;
    public final e.a e;
    public final e.a f;

    public KCallableImpl() {
        e.a aVarC = e.c(new c74() {
            {
                super(0);
            }

            @Override
            public final List<Annotation> invoke() {
                return clb.e(this.this$0.D());
            }
        });
        y45.i(aVarC, "lazySoft { descriptor.computeAnnotations() }");
        this.b = aVarC;
        e.a aVarC2 = e.c(new c74() {
            {
                super(0);
            }

            @Override
            public final ArrayList<KParameter> invoke() {
                int i;
                final CallableMemberDescriptor callableMemberDescriptorD = this.this$0.D();
                ArrayList<KParameter> arrayList = new ArrayList<>();
                final int i2 = 0;
                if (this.this$0.C()) {
                    i = 0;
                } else {
                    final ro8 ro8VarI = clb.i(callableMemberDescriptorD);
                    if (ro8VarI != null) {
                        arrayList.add(new KParameterImpl(this.this$0, 0, KParameter.Kind.INSTANCE, new c74() {
                            {
                                super(0);
                            }

                            @Override
                            public final hw7 invoke() {
                                return ro8VarI;
                            }
                        }));
                        i = 1;
                    } else {
                        i = 0;
                    }
                    final ro8 ro8VarB0 = callableMemberDescriptorD.b0();
                    if (ro8VarB0 != null) {
                        arrayList.add(new KParameterImpl(this.this$0, i, KParameter.Kind.EXTENSION_RECEIVER, new c74() {
                            {
                                super(0);
                            }

                            @Override
                            public final hw7 invoke() {
                                return ro8VarB0;
                            }
                        }));
                        i++;
                    }
                }
                int size = callableMemberDescriptorD.f().size();
                while (i2 < size) {
                    arrayList.add(new KParameterImpl(this.this$0, i, KParameter.Kind.VALUE, new c74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override
                        public final hw7 invoke() {
                            Object obj = callableMemberDescriptorD.f().get(i2);
                            y45.i(obj, "descriptor.valueParameters[i]");
                            return (hw7) obj;
                        }
                    }));
                    i2++;
                    i++;
                }
                if (this.this$0.B() && (callableMemberDescriptorD instanceof r65) && arrayList.size() > 1) {
                    c81.B(arrayList, new Comparator() {
                        @Override
                        public final int compare(T t, T t2) {
                            return kotlin.comparisons.a.d(((KParameter) t).getName(), ((KParameter) t2).getName());
                        }
                    });
                }
                arrayList.trimToSize();
                return arrayList;
            }
        });
        y45.i(aVarC2, "lazySoft {\n        val d…ze()\n        result\n    }");
        this.c = aVarC2;
        e.a aVarC3 = e.c(new c74() {
            {
                super(0);
            }

            @Override
            public final KTypeImpl invoke() {
                eh5 returnType = this.this$0.D().getReturnType();
                y45.g(returnType);
                final KCallableImpl kCallableImpl = this.this$0;
                return new KTypeImpl(returnType, new c74() {
                    {
                        super(0);
                    }

                    @Override
                    public final Type invoke() {
                        Type typeV = kCallableImpl.v();
                        return typeV == null ? kCallableImpl.x().getReturnType() : typeV;
                    }
                });
            }
        });
        y45.i(aVarC3, "lazySoft {\n        KType…eturnType\n        }\n    }");
        this.d = aVarC3;
        e.a aVarC4 = e.c(new c74() {
            {
                super(0);
            }

            @Override
            public final List<KTypeParameterImpl> invoke() {
                List typeParameters = this.this$0.D().getTypeParameters();
                y45.i(typeParameters, "descriptor.typeParameters");
                List<hcb> list = typeParameters;
                KCallableImpl kCallableImpl = this.this$0;
                ArrayList arrayList = new ArrayList(z71.v(list, 10));
                for (hcb hcbVar : list) {
                    y45.i(hcbVar, "descriptor");
                    arrayList.add(new KTypeParameterImpl(kCallableImpl, hcbVar));
                }
                return arrayList;
            }
        });
        y45.i(aVarC4, "lazySoft {\n        descr…this, descriptor) }\n    }");
        this.e = aVarC4;
        e.a aVarC5 = e.c(new c74() {
            {
                super(0);
            }

            @Override
            public final Object[] invoke() {
                int size = this.this$0.getParameters().size() + (this.this$0.isSuspend() ? 1 : 0);
                int size2 = (this.this$0.getParameters().size() + 31) / 32;
                Object[] objArr = new Object[size + size2 + 1];
                List<KParameter> parameters = this.this$0.getParameters();
                KCallableImpl kCallableImpl = this.this$0;
                for (KParameter kParameter : parameters) {
                    if (kParameter.f() && !clb.k(kParameter.getType())) {
                        objArr[kParameter.getIndex()] = clb.g(pq8.f(kParameter.getType()));
                    } else if (kParameter.b()) {
                        objArr[kParameter.getIndex()] = kCallableImpl.u(kParameter.getType());
                    }
                }
                for (int i = 0; i < size2; i++) {
                    objArr[size + i] = 0;
                }
                return objArr;
            }
        });
        y45.i(aVarC5, "lazySoft {\n        val p…\n\n        arguments\n    }");
        this.f = aVarC5;
    }

    public abstract CallableMemberDescriptor D();

    public final boolean B() {
        return y45.e(getName(), MethodDecl.initName) && y().d().isAnnotation();
    }

    public abstract boolean C();

    @Override
    public Object call(Object... objArr) throws IllegalCallableAccessException {
        y45.j(objArr, "args");
        try {
            return x().call(objArr);
        } catch (IllegalAccessException e) {
            throw new IllegalCallableAccessException(e);
        }
    }

    @Override
    public Object callBy(Map map) {
        y45.j(map, "args");
        return B() ? r(map) : t(map, null);
    }

    @Override
    public List getAnnotations() {
        Object objInvoke = this.b.invoke();
        y45.i(objInvoke, "_annotations()");
        return (List) objInvoke;
    }

    @Override
    public List getParameters() {
        Object objInvoke = this.c.invoke();
        y45.i(objInvoke, "_parameters()");
        return (List) objInvoke;
    }

    @Override
    public ff5 getReturnType() {
        Object objInvoke = this.d.invoke();
        y45.i(objInvoke, "_returnType()");
        return (ff5) objInvoke;
    }

    @Override
    public List getTypeParameters() {
        Object objInvoke = this.e.invoke();
        y45.i(objInvoke, "_typeParameters()");
        return (List) objInvoke;
    }

    @Override
    public KVisibility getVisibility() {
        c92 visibility = D().getVisibility();
        y45.i(visibility, "descriptor.visibility");
        return clb.q(visibility);
    }

    @Override
    public boolean isAbstract() {
        return D().j() == Modality.ABSTRACT;
    }

    @Override
    public boolean isFinal() {
        return D().j() == Modality.FINAL;
    }

    @Override
    public boolean isOpen() {
        return D().j() == Modality.OPEN;
    }

    public final Object r(Map map) throws IllegalCallableAccessException {
        Object objU;
        List<KParameter> parameters = getParameters();
        ArrayList arrayList = new ArrayList(z71.v(parameters, 10));
        for (KParameter kParameter : parameters) {
            if (map.containsKey(kParameter)) {
                objU = map.get(kParameter);
                if (objU == null) {
                    throw new IllegalArgumentException("Annotation argument value cannot be null (" + kParameter + ')');
                }
            } else if (kParameter.f()) {
                objU = null;
            } else {
                if (!kParameter.b()) {
                    throw new IllegalArgumentException("No argument provided for a required parameter: " + kParameter);
                }
                objU = u(kParameter.getType());
            }
            arrayList.add(objU);
        }
        kotlin.reflect.jvm.internal.calls.a aVarZ = z();
        if (aVarZ != null) {
            try {
                return aVarZ.call(arrayList.toArray(new Object[0]));
            } catch (IllegalAccessException e) {
                throw new IllegalCallableAccessException(e);
            }
        }
        throw new KotlinReflectionInternalError("This callable does not support a default call: " + D());
    }

    public final Object t(Map map, wh1 wh1Var) throws IllegalCallableAccessException {
        y45.j(map, "args");
        List<KParameter> parameters = getParameters();
        boolean z = false;
        if (parameters.isEmpty()) {
            try {
                return x().call(isSuspend() ? new wh1[]{wh1Var} : new wh1[0]);
            } catch (IllegalAccessException e) {
                throw new IllegalCallableAccessException(e);
            }
        }
        int size = parameters.size() + (isSuspend() ? 1 : 0);
        Object[] objArrW = w();
        if (isSuspend()) {
            objArrW[parameters.size()] = wh1Var;
        }
        int i = 0;
        for (KParameter kParameter : parameters) {
            if (map.containsKey(kParameter)) {
                objArrW[kParameter.getIndex()] = map.get(kParameter);
            } else if (kParameter.f()) {
                int i2 = (i / 32) + size;
                Object obj = objArrW[i2];
                y45.h(obj, "null cannot be cast to non-null type kotlin.Int");
                objArrW[i2] = Integer.valueOf(((Integer) obj).intValue() | (1 << (i % 32)));
                z = true;
            } else if (!kParameter.b()) {
                throw new IllegalArgumentException("No argument provided for a required parameter: " + kParameter);
            }
            if (kParameter.getKind() == KParameter.Kind.VALUE) {
                i++;
            }
        }
        if (!z) {
            try {
                kotlin.reflect.jvm.internal.calls.a aVarX = x();
                Object[] objArrCopyOf = Arrays.copyOf(objArrW, size);
                y45.i(objArrCopyOf, "copyOf(this, newSize)");
                return aVarX.call(objArrCopyOf);
            } catch (IllegalAccessException e2) {
                throw new IllegalCallableAccessException(e2);
            }
        }
        kotlin.reflect.jvm.internal.calls.a aVarZ = z();
        if (aVarZ != null) {
            try {
                return aVarZ.call(objArrW);
            } catch (IllegalAccessException e3) {
                throw new IllegalCallableAccessException(e3);
            }
        }
        throw new KotlinReflectionInternalError("This callable does not support a default call: " + D());
    }

    public final Object u(ff5 ff5Var) {
        Class clsB = ed5.b(lf5.b(ff5Var));
        if (clsB.isArray()) {
            Object objNewInstance = Array.newInstance(clsB.getComponentType(), 0);
            y45.i(objNewInstance, "type.jvmErasure.java.run…\"\n            )\n        }");
            return objNewInstance;
        }
        throw new KotlinReflectionInternalError("Cannot instantiate the default empty array of type " + clsB.getSimpleName() + ", because it is not an array type");
    }

    public final Type v() {
        Type[] lowerBounds;
        if (!isSuspend()) {
            return null;
        }
        Object objC0 = i81.C0(x().a());
        ParameterizedType parameterizedType = objC0 instanceof ParameterizedType ? (ParameterizedType) objC0 : null;
        if (!y45.e(parameterizedType != null ? parameterizedType.getRawType() : null, wh1.class)) {
            return null;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        y45.i(actualTypeArguments, "continuationType.actualTypeArguments");
        Object objF0 = hi.F0(actualTypeArguments);
        WildcardType wildcardType = objF0 instanceof WildcardType ? (WildcardType) objF0 : null;
        if (wildcardType == null || (lowerBounds = wildcardType.getLowerBounds()) == null) {
            return null;
        }
        return (Type) hi.W(lowerBounds);
    }

    public final Object[] w() {
        return (Object[]) ((Object[]) this.f.invoke()).clone();
    }

    public abstract kotlin.reflect.jvm.internal.calls.a x();

    public abstract KDeclarationContainerImpl y();

    public abstract kotlin.reflect.jvm.internal.calls.a z();
}
