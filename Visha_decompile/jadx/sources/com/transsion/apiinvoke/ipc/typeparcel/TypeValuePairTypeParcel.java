package com.transsion.apiinvoke.ipc.typeparcel;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.apiinvoke.invoke.TypeValuePair;
import com.transsion.apiinvoke.ipc.ITypeParcel;
import com.transsion.apiinvoke.ipc.TypeParcelFactor;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class TypeValuePairTypeParcel implements ITypeParcel<TypeValuePair> {
    private static Class mappingClass(Class cls, Object obj) {
        if (!cls.equals(Object.class)) {
            return cls;
        }
        if (obj instanceof Short) {
            return Short.TYPE;
        }
        if (obj instanceof Integer) {
            return Integer.TYPE;
        }
        if (obj instanceof Float) {
            return Float.TYPE;
        }
        if (obj instanceof Boolean) {
            return Boolean.TYPE;
        }
        if (obj instanceof String) {
            return String.class;
        }
        if (obj instanceof Byte) {
            return Byte.TYPE;
        }
        if (obj instanceof Double) {
            return Double.TYPE;
        }
        if (obj instanceof List) {
            return List.class;
        }
        if (obj instanceof Map) {
            return Map.class;
        }
        if (obj instanceof Set) {
            return Set.class;
        }
        if (obj instanceof Bundle) {
            return Bundle.class;
        }
        if (obj instanceof Parcelable) {
            return Parcelable.class;
        }
        return obj instanceof Serializable ? Serializable.class : cls;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public TypeValuePair readFormParcel(Parcel parcel, Class cls) {
        if (parcel.readInt() == 0) {
            return TypeValuePair.empty();
        }
        String string = parcel.readString();
        int i = parcel.readInt();
        if (i == 0) {
            Class cls2 = (Class) parcel.readSerializable();
            return cls2.isArray() ? TypeValuePair.create(cls2, Array.newInstance((Class<?>) parcel.readSerializable(), 0), string) : TypeValuePair.create(cls2, TypeParcelFactor.getFactor().readFormParcel(parcel, cls2), string);
        }
        Class cls3 = (Class) parcel.readSerializable();
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = TypeParcelFactor.getFactor().readFormParcel(parcel, (Class) parcel.readSerializable());
        }
        return TypeValuePair.create(cls3, objArr, string);
    }

    @Override
    public void writeToParcel(Parcel parcel, Class cls, TypeValuePair typeValuePair, int i) {
        if (cls == null) {
            parcel.writeInt(0);
            return;
        }
        Class<?> valueType = typeValuePair.getValueType();
        Object value = typeValuePair.getValue();
        if (value == null) {
            parcel.writeInt(0);
            return;
        }
        if (valueType == null) {
            valueType = mappingClass(value.getClass(), value);
        }
        if (valueType == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeString(typeValuePair.getName());
        if (!valueType.isArray()) {
            parcel.writeInt(0);
            Class clsMappingClass = mappingClass(valueType, typeValuePair.getValue());
            parcel.writeSerializable(clsMappingClass);
            TypeParcelFactor.getFactor().writeToParcel(parcel, clsMappingClass, value, i);
            return;
        }
        int length = Array.getLength(value);
        parcel.writeInt(length);
        parcel.writeSerializable(valueType);
        if (length == 0) {
            parcel.writeSerializable(valueType.getComponentType());
        }
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = Array.get(value, i2);
            Class clsMappingClass2 = mappingClass(obj.getClass(), obj);
            parcel.writeSerializable(clsMappingClass2);
            TypeParcelFactor.getFactor().writeToParcel(parcel, clsMappingClass2, obj, i);
        }
    }
}
