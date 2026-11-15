package c5;

import b5.b2;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

public class y0 implements z0, b2 {

    public static final y0 f16684a = new y0();

    /* JADX WARN: Code duplicated, block: B:27:0x0054  */
    private Object e(a5.a aVar, Class cls, JSONArray jSONArray) {
        Object objF;
        if (jSONArray == null) {
            return null;
        }
        int size = jSONArray.size();
        Object objNewInstance = Array.newInstance((Class<?>) cls, size);
        for (int i10 = 0; i10 < size; i10++) {
            Object objE = jSONArray.get(i10);
            if (objE == jSONArray) {
                Array.set(objNewInstance, i10, objNewInstance);
            } else if (cls.isArray()) {
                if (!cls.isInstance(objE)) {
                    objE = e(aVar, cls, (JSONArray) objE);
                }
                Array.set(objNewInstance, i10, objE);
            } else {
                if (objE instanceof JSONArray) {
                    JSONArray jSONArray2 = (JSONArray) objE;
                    int size2 = jSONArray2.size();
                    boolean z10 = false;
                    for (int i11 = 0; i11 < size2; i11++) {
                        if (jSONArray2.get(i11) == jSONArray) {
                            jSONArray2.set(i10, objNewInstance);
                            z10 = true;
                        }
                    }
                    if (z10) {
                        objF = jSONArray2.toArray();
                    } else {
                        objF = null;
                    }
                } else {
                    objF = null;
                }
                if (objF == null) {
                    objF = TypeUtils.f(objE, cls, aVar.l());
                }
                Array.set(objNewInstance, i10, objF);
            }
        }
        jSONArray.setRelatedArray(objNewInstance);
        jSONArray.setComponentType(cls);
        return objNewInstance;
    }

    @Override
    public int b() {
        return 14;
    }

    @Override
    public final void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        Object[] objArr = (Object[]) obj;
        if (obj == null) {
            j1Var.l0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int length = objArr.length;
        int i11 = length - 1;
        if (i11 == -1) {
            j1Var.append("[]");
            return;
        }
        e1 e1Var = o0Var.f16626r;
        o0Var.w(e1Var, obj, obj2, 0);
        try {
            j1Var.append('[');
            if (j1Var.o(SerializerFeature.PrettyFormat)) {
                o0Var.s();
                o0Var.v();
                for (int i12 = 0; i12 < length; i12++) {
                    if (i12 != 0) {
                        j1Var.write(44);
                        o0Var.v();
                    }
                    o0Var.E(objArr[i12], Integer.valueOf(i12));
                }
                o0Var.l();
                o0Var.v();
                j1Var.write(93);
                return;
            }
            Class<?> cls = null;
            z0 z0VarQ = null;
            for (int i13 = 0; i13 < i11; i13++) {
                Object obj3 = objArr[i13];
                if (obj3 == null) {
                    j1Var.append("null,");
                } else {
                    if (o0Var.k(obj3)) {
                        o0Var.D(obj3);
                    } else {
                        Class<?> cls2 = obj3.getClass();
                        if (cls2 == cls) {
                            z0VarQ.c(o0Var, obj3, Integer.valueOf(i13), null, 0);
                        } else {
                            z0VarQ = o0Var.q(cls2);
                            z0VarQ.c(o0Var, obj3, Integer.valueOf(i13), null, 0);
                            cls = cls2;
                        }
                    }
                    j1Var.append(',');
                }
            }
            Object obj4 = objArr[i11];
            if (obj4 == null) {
                j1Var.append("null]");
            } else {
                if (o0Var.k(obj4)) {
                    o0Var.D(obj4);
                } else {
                    o0Var.E(obj4, Integer.valueOf(i11));
                }
                j1Var.append(']');
            }
        } finally {
            o0Var.f16626r = e1Var;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        Type componentType;
        Class clsQ;
        a5.b bVar = aVar.f141f;
        int iT0 = bVar.t0();
        Type type2 = null;
        if (iT0 == 8) {
            bVar.f0(16);
            return null;
        }
        if (iT0 == 4 || iT0 == 26) {
            byte[] bArrL0 = bVar.l0();
            bVar.f0(16);
            if (bArrL0.length != 0 || type == byte[].class) {
                return bArrL0;
            }
            return null;
        }
        if (type instanceof GenericArrayType) {
            componentType = ((GenericArrayType) type).getGenericComponentType();
            if (componentType instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) componentType;
                Type type3 = aVar.m().f180e;
                if (type3 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type3;
                    Type rawType = parameterizedType.getRawType();
                    if (rawType instanceof Class) {
                        TypeVariable[] typeParameters = ((Class) rawType).getTypeParameters();
                        for (int i10 = 0; i10 < typeParameters.length; i10++) {
                            if (typeParameters[i10].getName().equals(typeVariable.getName())) {
                                type2 = parameterizedType.getActualTypeArguments()[i10];
                            }
                        }
                    }
                    clsQ = type2 instanceof Class ? (Class) type2 : Object.class;
                } else {
                    clsQ = TypeUtils.Q(typeVariable.getBounds()[0]);
                }
            } else {
                clsQ = TypeUtils.Q(componentType);
            }
        } else {
            componentType = ((Class) type).getComponentType();
            clsQ = componentType;
        }
        JSONArray jSONArray = new JSONArray();
        aVar.X(componentType, jSONArray, obj);
        return e(aVar, clsQ, jSONArray);
    }
}
