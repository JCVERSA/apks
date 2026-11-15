package com.transsion.apiinvoke.ipc;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.TypeValuePair;
import com.transsion.apiinvoke.ipc.typeparcel.ApiRequestTypeParcel;
import com.transsion.apiinvoke.ipc.typeparcel.ApiResponseTypeParcel;
import com.transsion.apiinvoke.ipc.typeparcel.BundleTypeParcel;
import com.transsion.apiinvoke.ipc.typeparcel.IBinderTypeParcel;
import com.transsion.apiinvoke.ipc.typeparcel.IInterfaceTypeParcel;
import com.transsion.apiinvoke.ipc.typeparcel.PublishDataTypeParcel;
import com.transsion.apiinvoke.ipc.typeparcel.TypeValuePairTypeParcel;
import com.transsion.apiinvoke.subscribe.PublishData;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class TypeParcelFactor {
    private static final List<Class> TYPE_CONST;
    private static TypeParcelFactor defaultInstance;
    private ITypeParcel mArrayTypeParcel;
    private ITypeParcel mDefaultTypeParcel;
    private final Map<Class, ITypeParcel> mTypeParcelMap = new HashMap();

    public static class ArrayListTypeTypeParcel implements ITypeParcel<List> {
        private ArrayListTypeTypeParcel() {
        }

        @Override
        public List readFormParcel(Parcel parcel, Class cls) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, getClass().getClassLoader());
            return arrayList;
        }

        @Override
        public void writeToParcel(Parcel parcel, Class cls, List list, int i) {
            parcel.writeList(list);
        }
    }

    public static class ArrayTypeTypeParcel implements ITypeParcel {
        private ArrayTypeTypeParcel() {
        }

        @Override
        public Object readFormParcel(Parcel parcel, Class cls) {
            int i = parcel.readInt();
            Class cls2 = (Class) parcel.readSerializable();
            Object objNewInstance = Array.newInstance((Class<?>) cls2, i);
            ITypeParcel iTypeParcelFindTypeParcel = TypeParcelFactor.findTypeParcel(cls2);
            for (int i2 = 0; i2 < i; i2++) {
                if (iTypeParcelFindTypeParcel != null && parcel.readInt() != 0) {
                    Array.set(objNewInstance, i2, iTypeParcelFindTypeParcel.readFormParcel(parcel, cls2));
                }
            }
            return objNewInstance;
        }

        @Override
        public void writeToParcel(Parcel parcel, Class cls, Object obj, int i) {
            int length = Array.getLength(obj);
            parcel.writeInt(length);
            if (cls == null) {
                cls = obj.getClass();
            }
            Class<?> componentType = cls.getComponentType();
            parcel.writeSerializable(componentType);
            ITypeParcel iTypeParcelFindTypeParcel = TypeParcelFactor.findTypeParcel(componentType);
            for (int i2 = 0; i2 < length; i2++) {
                Object obj2 = Array.get(obj, i2);
                if (iTypeParcelFindTypeParcel != null) {
                    parcel.writeInt(1);
                    iTypeParcelFindTypeParcel.writeToParcel(parcel, componentType, componentType.cast(obj2), i);
                }
            }
        }
    }

    public static class HashMapTypeTypeParcel implements ITypeParcel<HashMap> {
        private HashMapTypeTypeParcel() {
        }

        @Override
        public HashMap readFormParcel(Parcel parcel, Class cls) {
            HashMap map = new HashMap();
            parcel.readMap(map, getClass().getClassLoader());
            return map;
        }

        @Override
        public void writeToParcel(Parcel parcel, Class cls, HashMap map, int i) {
            parcel.writeMap(map);
        }
    }

    public static class HashtableTypeTypeParcel implements ITypeParcel<Hashtable> {
        private HashtableTypeTypeParcel() {
        }

        @Override
        public Hashtable readFormParcel(Parcel parcel, Class cls) {
            Hashtable hashtable = new Hashtable();
            parcel.readMap(hashtable, getClass().getClassLoader());
            return hashtable;
        }

        @Override
        public void writeToParcel(Parcel parcel, Class cls, Hashtable hashtable, int i) {
            parcel.writeMap(hashtable);
        }
    }

    public static class LinkedHashMapTypeTypeParcel implements ITypeParcel<LinkedHashMap> {
        private LinkedHashMapTypeTypeParcel() {
        }

        @Override
        public LinkedHashMap readFormParcel(Parcel parcel, Class cls) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            parcel.readMap(linkedHashMap, getClass().getClassLoader());
            return linkedHashMap;
        }

        @Override
        public void writeToParcel(Parcel parcel, Class cls, LinkedHashMap linkedHashMap, int i) {
            parcel.writeMap(linkedHashMap);
        }
    }

    public static class ParcelableTypeTypeParcel implements ITypeParcel<Parcelable> {
        private ParcelableTypeTypeParcel() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Parcelable readFormParcel(Parcel parcel, Class cls) {
            return parcel.readParcelable(getClass().getClassLoader());
        }

        @Override
        public void writeToParcel(Parcel parcel, Class cls, Parcelable parcelable, int i) {
            parcel.writeParcelable(parcelable, i);
        }
    }

    public static class PrimitiveTypeTypeParcel implements ITypeParcel {
        private PrimitiveTypeTypeParcel() {
        }

        @Override
        public Object readFormParcel(Parcel parcel, Class cls) {
            return TypeParcelFactor.readPrimitiveType(parcel, TypeParcelFactor.TYPE_CONST.indexOf(cls));
        }

        @Override
        public void writeToParcel(Parcel parcel, Class cls, Object obj, int i) {
            TypeParcelFactor.writePrimitiveType(parcel, obj, TypeParcelFactor.TYPE_CONST.indexOf(cls));
        }
    }

    public static class SerializableTypeTypeParcel implements ITypeParcel<Serializable> {
        private SerializableTypeTypeParcel() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Serializable readFormParcel(Parcel parcel, Class cls) {
            return parcel.readSerializable();
        }

        @Override
        public void writeToParcel(Parcel parcel, Class cls, Serializable serializable, int i) {
            parcel.writeSerializable(serializable);
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        TYPE_CONST = arrayList;
        arrayList.add(Integer.TYPE);
        arrayList.add(Integer.class);
        arrayList.add(Long.TYPE);
        arrayList.add(Long.class);
        arrayList.add(Float.TYPE);
        arrayList.add(Float.class);
        arrayList.add(Double.TYPE);
        arrayList.add(Double.class);
        arrayList.add(Byte.TYPE);
        arrayList.add(Byte.class);
        arrayList.add(String.class);
        arrayList.add(Bundle.class);
    }

    private TypeParcelFactor() {
        this.mDefaultTypeParcel = new PrimitiveTypeTypeParcel();
        this.mArrayTypeParcel = new ArrayTypeTypeParcel();
        registerTypeParcel(HashMap.class, new HashMapTypeTypeParcel());
        registerTypeParcel(LinkedHashMap.class, new LinkedHashMapTypeTypeParcel());
        registerTypeParcel(Hashtable.class, new HashtableTypeTypeParcel());
        ArrayListTypeTypeParcel arrayListTypeTypeParcel = new ArrayListTypeTypeParcel();
        registerTypeParcel(ArrayList.class, arrayListTypeTypeParcel);
        registerTypeParcel(List.class, arrayListTypeTypeParcel);
        registerTypeParcel(Parcelable.class, new ParcelableTypeTypeParcel());
        registerTypeParcel(Serializable.class, new SerializableTypeTypeParcel());
        registerTypeParcel(ApiRequest.class, new ApiRequestTypeParcel());
        registerTypeParcel(ApiResponse.class, new ApiResponseTypeParcel());
        registerTypeParcel(TypeValuePair.class, new TypeValuePairTypeParcel());
        registerTypeParcel(Bundle.class, new BundleTypeParcel());
        registerTypeParcel(IBinder.class, new IBinderTypeParcel());
        registerTypeParcel(IInterface.class, new IInterfaceTypeParcel());
        registerTypeParcel(PublishData.class, new PublishDataTypeParcel());
    }

    public static ITypeParcel findTypeParcel(Class cls) {
        TypeParcelFactor factor = getFactor();
        if (cls.isArray()) {
            return factor.mArrayTypeParcel;
        }
        if (TYPE_CONST.indexOf(cls) != -1) {
            return factor.mDefaultTypeParcel;
        }
        ITypeParcel iTypeParcel = factor.mTypeParcelMap.get(cls);
        if (iTypeParcel != null) {
            return iTypeParcel;
        }
        if (isAssignableFrom(cls, HashMap.class)) {
            return factor.mTypeParcelMap.get(HashMap.class);
        }
        if (isAssignableFrom(cls, LinkedHashMap.class)) {
            return factor.mTypeParcelMap.get(LinkedHashMap.class);
        }
        if (isAssignableFrom(cls, Hashtable.class)) {
            return factor.mTypeParcelMap.get(Hashtable.class);
        }
        if (isAssignableFrom(cls, ArrayList.class) || isAssignableFrom(cls, List.class)) {
            return factor.mTypeParcelMap.get(ArrayList.class);
        }
        if (isAssignableFrom(cls, Parcelable.class)) {
            return factor.mTypeParcelMap.get(Parcelable.class);
        }
        if (isAssignableFrom(cls, Serializable.class)) {
            return factor.mTypeParcelMap.get(Serializable.class);
        }
        boolean zIsAssignableFrom = isAssignableFrom(cls, IBinder.class);
        boolean zIsAssignableFrom2 = isAssignableFrom(cls, IInterface.class);
        if (zIsAssignableFrom && zIsAssignableFrom2) {
            return factor.mTypeParcelMap.get(IInterface.class);
        }
        if (zIsAssignableFrom) {
            return factor.mTypeParcelMap.get(IBinder.class);
        }
        if (zIsAssignableFrom2) {
            return factor.mTypeParcelMap.get(IInterface.class);
        }
        return null;
    }

    public static TypeParcelFactor getFactor() {
        if (defaultInstance == null) {
            synchronized (TypeParcelFactor.class) {
                try {
                    if (defaultInstance == null) {
                        defaultInstance = new TypeParcelFactor();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return defaultInstance;
    }

    private static boolean isAssignableFrom(Class cls, Class cls2) {
        if (cls == null || cls2 == null) {
            return false;
        }
        return cls2.isAssignableFrom(cls);
    }

    public static Object readPrimitiveType(Parcel parcel, int i) {
        switch (i) {
            case 0:
            case 1:
                return Integer.valueOf(parcel.readInt());
            case 2:
            case 3:
                return Long.valueOf(parcel.readLong());
            case 4:
            case 5:
                return Float.valueOf(parcel.readFloat());
            case 6:
            case 7:
                return Double.valueOf(parcel.readDouble());
            case 8:
            case 9:
                return Byte.valueOf(parcel.readByte());
            case 10:
                return parcel.readString();
            case 11:
                return parcel.readBundle();
            default:
                Log.w("TypeParcelFactor", "readPrimitiveType not support");
                return null;
        }
    }

    public static void writePrimitiveType(Parcel parcel, Object obj, int i) {
        switch (i) {
            case 0:
            case 1:
                parcel.writeInt(((Integer) obj).intValue());
                break;
            case 2:
            case 3:
                parcel.writeLong(((Long) obj).longValue());
                break;
            case 4:
            case 5:
                parcel.writeFloat(((Float) obj).floatValue());
                break;
            case 6:
            case 7:
                parcel.writeDouble(((Double) obj).doubleValue());
                break;
            case 8:
            case 9:
                parcel.writeByte(((Byte) obj).byteValue());
                break;
            case 10:
                parcel.writeString((String) obj);
                break;
            case 11:
                parcel.writeBundle((Bundle) obj);
                break;
            default:
                Log.w("TypeParcelFactor", "writePrimitiveType not support");
                break;
        }
    }

    public synchronized Object readFormParcel(Parcel parcel, Class cls) {
        if (parcel.readInt() == 0) {
            return null;
        }
        ITypeParcel iTypeParcelFindTypeParcel = findTypeParcel(cls);
        if (iTypeParcelFindTypeParcel == null) {
            return null;
        }
        return iTypeParcelFindTypeParcel.readFormParcel(parcel, cls);
    }

    public synchronized void registerTypeParcel(Class cls, ITypeParcel iTypeParcel) {
        this.mTypeParcelMap.put(cls, iTypeParcel);
    }

    public synchronized void unRegisterTypeParcel(Class cls) {
        this.mTypeParcelMap.remove(cls);
    }

    public synchronized void writeToParcel(Parcel parcel, Class cls, Object obj, int i) {
        try {
            if (obj == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(1);
            if (cls == null) {
                cls = obj.getClass();
            }
            ITypeParcel iTypeParcelFindTypeParcel = findTypeParcel(cls);
            if (iTypeParcelFindTypeParcel != null) {
                iTypeParcelFindTypeParcel.writeToParcel(parcel, cls, obj, i);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
