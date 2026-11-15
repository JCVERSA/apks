package kotlin.reflect.jvm.internal;

import defpackage.c74;
import defpackage.eh5;
import defpackage.hi;
import defpackage.jf5;
import defpackage.mcb;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z71;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;

@Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0001 \u0002*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "Ljf5;", "kotlin.jvm.PlatformType", "invoke", "()Ljava/util/List;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
public final class KTypeImpl$arguments$2 extends Lambda implements c74 {
    final c74 $computeJavaType;
    final KTypeImpl this$0;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Variance.values().length];
            try {
                iArr[Variance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KTypeImpl$arguments$2(KTypeImpl kTypeImpl, c74 c74Var) {
        super(0);
        this.this$0 = kTypeImpl;
        this.$computeJavaType = c74Var;
    }

    public static final List a(yi5 yi5Var) {
        return (List) yi5Var.getValue();
    }

    @Override
    public final List<jf5> invoke() {
        jf5 jf5VarD;
        List listG0 = this.this$0.h().G0();
        if (listG0.isEmpty()) {
            return y71.k();
        }
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        final KTypeImpl kTypeImpl = this.this$0;
        final yi5 yi5VarB = kotlin.b.b(lazyThreadSafetyMode, new c74() {
            {
                super(0);
            }

            @Override
            public final List<Type> invoke() {
                Type typeA = kTypeImpl.a();
                y45.g(typeA);
                return ReflectClassUtilKt.d(typeA);
            }
        });
        List list = listG0;
        c74 c74Var = this.$computeJavaType;
        final KTypeImpl kTypeImpl2 = this.this$0;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        final int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            mcb mcbVar = (mcb) obj;
            if (mcbVar.b()) {
                jf5VarD = jf5.c.c();
            } else {
                eh5 type = mcbVar.getType();
                y45.i(type, "typeProjection.type");
                KTypeImpl kTypeImpl3 = new KTypeImpl(type, c74Var == null ? null : new c74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public final Type invoke() {
                        Type typeA = kTypeImpl2.a();
                        if (typeA instanceof Class) {
                            Class cls = (Class) typeA;
                            Class<?> componentType = cls.isArray() ? cls.getComponentType() : Object.class;
                            y45.i(componentType, "{\n                      …                        }");
                            return componentType;
                        }
                        if (typeA instanceof GenericArrayType) {
                            if (i == 0) {
                                Type genericComponentType = ((GenericArrayType) typeA).getGenericComponentType();
                                y45.i(genericComponentType, "{\n                      …                        }");
                                return genericComponentType;
                            }
                            throw new KotlinReflectionInternalError("Array type has been queried for a non-0th argument: " + kTypeImpl2);
                        }
                        if (!(typeA instanceof ParameterizedType)) {
                            throw new KotlinReflectionInternalError("Non-generic type has been queried for arguments: " + kTypeImpl2);
                        }
                        Type type2 = (Type) KTypeImpl$arguments$2.a(yi5VarB).get(i);
                        if (type2 instanceof WildcardType) {
                            WildcardType wildcardType = (WildcardType) type2;
                            Type[] lowerBounds = wildcardType.getLowerBounds();
                            y45.i(lowerBounds, "argument.lowerBounds");
                            Type type3 = (Type) hi.Y(lowerBounds);
                            if (type3 == null) {
                                Type[] upperBounds = wildcardType.getUpperBounds();
                                y45.i(upperBounds, "argument.upperBounds");
                                type2 = (Type) hi.W(upperBounds);
                            } else {
                                type2 = type3;
                            }
                        }
                        y45.i(type2, "{\n                      …                        }");
                        return type2;
                    }
                });
                int i3 = a.a[mcbVar.c().ordinal()];
                if (i3 == 1) {
                    jf5VarD = jf5.c.d(kTypeImpl3);
                } else if (i3 == 2) {
                    jf5VarD = jf5.c.a(kTypeImpl3);
                } else {
                    if (i3 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    jf5VarD = jf5.c.b(kTypeImpl3);
                }
            }
            arrayList.add(jf5VarD);
            i = i2;
        }
        return arrayList;
    }
}
