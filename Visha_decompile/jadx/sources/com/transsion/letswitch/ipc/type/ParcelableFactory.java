package com.transsion.letswitch.ipc.type;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.transsion.letswitch.ipc.IPCConstants;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class ParcelableFactory {
    private ITypeParcel arrayTypeParcel;
    private final Map<Class, ITypeParcel> typeParcelMap;

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
        @Override
        public Object readFormParcel(Parcel parcel, Class cls) {
            Log.d(IPCConstants.IPC_TAG_SERVICE, "readFormParcel: ArrayTypeTypeParcel");
            int i = parcel.readInt();
            Class cls2 = (Class) parcel.readSerializable();
            Object objNewInstance = Array.newInstance((Class<?>) cls2, i);
            ITypeParcel iTypeParcelFindTypeParcel = ParcelableFactory.findTypeParcel(cls2);
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
            ITypeParcel iTypeParcelFindTypeParcel = ParcelableFactory.findTypeParcel(componentType);
            for (int i2 = 0; i2 < length; i2++) {
                Object obj2 = Array.get(obj, i2);
                if (iTypeParcelFindTypeParcel != null) {
                    parcel.writeInt(1);
                    iTypeParcelFindTypeParcel.writeToParcel(parcel, componentType, componentType.cast(obj2), i);
                }
            }
        }

        private ArrayTypeTypeParcel() {
        }
    }

    public static final class DefaultInstanceHolder {
        private static final ParcelableFactory defaultInstance = new ParcelableFactory();

        private DefaultInstanceHolder() {
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

    public static ITypeParcel findTypeParcel(Class cls) {
        ParcelableFactory parcelableFactory = getInstance();
        if (cls.isArray()) {
            return parcelableFactory.arrayTypeParcel;
        }
        ITypeParcel iTypeParcel = parcelableFactory.typeParcelMap.get(cls);
        if (iTypeParcel != null) {
            return iTypeParcel;
        }
        if (isAssignableFrom(cls, HashMap.class)) {
            return parcelableFactory.typeParcelMap.get(HashMap.class);
        }
        if (isAssignableFrom(cls, LinkedHashMap.class)) {
            return parcelableFactory.typeParcelMap.get(LinkedHashMap.class);
        }
        if (isAssignableFrom(cls, Hashtable.class)) {
            return parcelableFactory.typeParcelMap.get(Hashtable.class);
        }
        if (isAssignableFrom(cls, ArrayList.class) || isAssignableFrom(cls, List.class)) {
            return parcelableFactory.typeParcelMap.get(ArrayList.class);
        }
        if (isAssignableFrom(cls, Parcelable.class)) {
            return parcelableFactory.typeParcelMap.get(Parcelable.class);
        }
        if (isAssignableFrom(cls, Serializable.class)) {
            return parcelableFactory.typeParcelMap.get(Serializable.class);
        }
        return null;
    }

    public static ParcelableFactory getInstance() {
        return DefaultInstanceHolder.defaultInstance;
    }

    private static boolean isAssignableFrom(Class cls, Class cls2) {
        return (cls2 == null || cls == null || !cls2.isAssignableFrom(cls)) ? false : true;
    }

    public synchronized void registerTypeParcel(Class cls, ITypeParcel iTypeParcel) {
        this.typeParcelMap.put(cls, iTypeParcel);
    }

    private ParcelableFactory() {
        this.typeParcelMap = new HashMap();
        this.arrayTypeParcel = new ArrayTypeTypeParcel();
        registerTypeParcel(HashMap.class, new HashMapTypeTypeParcel());
        registerTypeParcel(LinkedHashMap.class, new LinkedHashMapTypeTypeParcel());
        registerTypeParcel(Hashtable.class, new HashtableTypeTypeParcel());
        ArrayListTypeTypeParcel arrayListTypeTypeParcel = new ArrayListTypeTypeParcel();
        registerTypeParcel(ArrayList.class, arrayListTypeTypeParcel);
        registerTypeParcel(List.class, arrayListTypeTypeParcel);
        registerTypeParcel(Parcelable.class, new ParcelableTypeTypeParcel());
        registerTypeParcel(Serializable.class, new SerializableTypeTypeParcel());
    }
}
