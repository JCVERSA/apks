package b5;

import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;

public class p implements b2 {

    public static final p f15568a = new p();

    @Override
    public int b() {
        return 12;
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        if (!(type instanceof GenericArrayType)) {
            return (!(type instanceof Class) || type == Object.class || type == Serializable.class || type == Cloneable.class || type == Closeable.class || type == Comparable.class) ? aVar.S(obj) : aVar.l0(type);
        }
        Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
        if (genericComponentType instanceof TypeVariable) {
            genericComponentType = ((TypeVariable) genericComponentType).getBounds()[0];
        }
        ArrayList arrayList = new ArrayList();
        aVar.W(genericComponentType, arrayList);
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) TypeUtils.i0(genericComponentType), arrayList.size());
        arrayList.toArray(objArr);
        return objArr;
    }
}
