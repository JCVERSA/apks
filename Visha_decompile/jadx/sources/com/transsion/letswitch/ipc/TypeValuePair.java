package com.transsion.letswitch.ipc;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.RequiresApi;
import com.transsion.letswitch.ipc.type.ITypeParcel;
import com.transsion.letswitch.ipc.type.ParcelableFactory;
import defpackage.i81;
import defpackage.y45;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/transsion/letswitch/ipc/TypeValuePair;", "Ljava/io/Serializable;", MethodDecl.initName, "()V", "type", "Ljava/lang/Class;", "getType", "()Ljava/lang/Class;", "setType", "(Ljava/lang/Class;)V", ES6Iterator.VALUE_PROPERTY, "", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "Companion", "ipc_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TypeValuePair implements Serializable {

    public static final Companion INSTANCE = new Companion(null);
    private static final ArrayList<Class<?>> TYPE_CONST;
    private Class<?> type;
    private Object value;

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\r\u001a\u0004\u0018\u00010\u00012\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0003¢\u0006\u0004\b\r\u0010\u000eJ)\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\f\u001a\u00020\u000bH\u0003¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0014\u001a\u00020\u00132\f\u0010\u0012\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\t¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\t2\b\u0010\u001a\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001b\u001a\u00020\u000b¢\u0006\u0004\b\u001c\u0010\u001dJ3\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001b\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u001eJ\u001b\u0010 \u001a\u00020\u001f2\f\u0010\u0012\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0004¢\u0006\u0004\b \u0010!J%\u0010\r\u001a\u0004\u0018\u00010\u00012\u0006\u0010\n\u001a\u00020\t2\f\u0010\u0012\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0004¢\u0006\u0004\b\r\u0010\"R,\u0010%\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040#j\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004`$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lcom/transsion/letswitch/ipc/TypeValuePair$Companion;", "", MethodDecl.initName, "()V", "Ljava/lang/Class;", "clazz", ES6Iterator.VALUE_PROPERTY, "mappingClass", "(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;", "Landroid/os/Parcel;", "parcel", "", "constIndex", "readPrimitiveType", "(Landroid/os/Parcel;I)Ljava/lang/Object;", "Lzfb;", "writePrimitiveType", "(Landroid/os/Parcel;Ljava/lang/Object;I)V", "type", "Lcom/transsion/letswitch/ipc/TypeValuePair;", "create", "(Ljava/lang/Class;Ljava/lang/Object;)Lcom/transsion/letswitch/ipc/TypeValuePair;", "inParcel", "readPair", "(Landroid/os/Parcel;)Lcom/transsion/letswitch/ipc/TypeValuePair;", "dest", "data", "flags", "writePair", "(Landroid/os/Parcel;Lcom/transsion/letswitch/ipc/TypeValuePair;I)V", "(Landroid/os/Parcel;Ljava/lang/Class;Ljava/lang/Object;I)V", "", "isPrimitiveType", "(Ljava/lang/Class;)Z", "(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/lang/Object;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "TYPE_CONST", "Ljava/util/ArrayList;", "ipc_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Class<?> mappingClass(Class<?> clazz, Object value) {
            if (!y45.e(clazz, Object.class)) {
                return clazz;
            }
            if (value instanceof Short) {
                Class<?> cls = Short.TYPE;
                y45.g(cls);
                return cls;
            }
            if (value instanceof Integer) {
                Class<?> cls2 = Integer.TYPE;
                y45.g(cls2);
                return cls2;
            }
            if (value instanceof Long) {
                Class<?> cls3 = Long.TYPE;
                y45.g(cls3);
                return cls3;
            }
            if (value instanceof Float) {
                Class<?> cls4 = Float.TYPE;
                y45.g(cls4);
                return cls4;
            }
            if (value instanceof Boolean) {
                Class<?> cls5 = Boolean.TYPE;
                y45.g(cls5);
                return cls5;
            }
            if (value instanceof String) {
                return String.class;
            }
            if (value instanceof Byte) {
                Class<?> cls6 = Byte.TYPE;
                y45.g(cls6);
                return cls6;
            }
            if (value instanceof Double) {
                Class<?> cls7 = Double.TYPE;
                y45.g(cls7);
                return cls7;
            }
            if (value instanceof List) {
                return List.class;
            }
            if (value instanceof Map) {
                return Map.class;
            }
            if (value instanceof Set) {
                return Set.class;
            }
            if (value instanceof Bundle) {
                return Bundle.class;
            }
            if (value instanceof Parcelable) {
                return Parcelable.class;
            }
            return value instanceof Serializable ? Serializable.class : clazz;
        }

        public final TypeValuePair create(Class<?> type, Object value) {
            TypeValuePair typeValuePair = new TypeValuePair();
            typeValuePair.setType(type);
            if (typeValuePair.getType() == null) {
                typeValuePair.setType(value != null ? value.getClass() : null);
            }
            typeValuePair.setValue(value);
            return typeValuePair;
        }

        public final boolean isPrimitiveType(Class<?> type) {
            return i81.t0(TypeValuePair.TYPE_CONST, type) != -1;
        }

        public final TypeValuePair readPair(Parcel inParcel) {
            Object obj;
            y45.j(inParcel, "inParcel");
            Class<?> cls = null;
            formParcel = null;
            Object formParcel = null;
            if (inParcel.readByte() == 1) {
                Serializable serializable = inParcel.readSerializable();
                Class<?> cls2 = serializable instanceof Class ? (Class) serializable : null;
                if (inParcel.readByte() == 1) {
                    if (isPrimitiveType(cls2)) {
                        formParcel = readPrimitiveType(inParcel, cls2);
                    } else {
                        ITypeParcel iTypeParcelFindTypeParcel = ParcelableFactory.findTypeParcel(cls2);
                        if (iTypeParcelFindTypeParcel != null) {
                            formParcel = iTypeParcelFindTypeParcel.readFormParcel(inParcel, cls2);
                        }
                    }
                }
                obj = formParcel;
                cls = cls2;
            } else {
                obj = null;
            }
            return create(cls, obj);
        }

        public final Object readPrimitiveType(Parcel parcel, Class<?> type) {
            y45.j(parcel, "parcel");
            return readPrimitiveType(parcel, i81.t0(TypeValuePair.TYPE_CONST, type));
        }

        public final void writePair(Parcel dest, TypeValuePair data, int flags) {
            y45.j(dest, "dest");
            Class<?> type = data != null ? data.getType() : null;
            if (type == null) {
                dest.writeByte((byte) 0);
                return;
            }
            Object value = data.getValue();
            if (value == null) {
                dest.writeByte((byte) 1);
                dest.writeSerializable(type);
                dest.writeByte((byte) 0);
                return;
            }
            Class<?> clsMappingClass = mappingClass(type, value);
            dest.writeByte((byte) 1);
            dest.writeSerializable(clsMappingClass);
            dest.writeByte((byte) 1);
            if (isPrimitiveType(clsMappingClass)) {
                writePrimitiveType(dest, clsMappingClass, value, flags);
                return;
            }
            ITypeParcel iTypeParcelFindTypeParcel = ParcelableFactory.findTypeParcel(type);
            if (iTypeParcelFindTypeParcel != null) {
                iTypeParcelFindTypeParcel.writeToParcel(dest, type, value, flags);
            }
        }

        public final void writePrimitiveType(Parcel parcel, Class<?> type, Object value, int flags) {
            y45.j(parcel, "parcel");
            y45.j(type, "type");
            writePrimitiveType(parcel, value, TypeValuePair.TYPE_CONST.indexOf(type));
        }

        private Companion() {
        }

        @RequiresApi(29)
        private final void writePrimitiveType(Parcel parcel, Object value, int constIndex) {
            switch (constIndex) {
                case 0:
                case 1:
                    Integer num = value instanceof Integer ? (Integer) value : null;
                    parcel.writeInt(num != null ? num.intValue() : 0);
                    break;
                case 2:
                case 3:
                    Long l = value instanceof Long ? (Long) value : null;
                    parcel.writeLong(l != null ? l.longValue() : 0L);
                    break;
                case 4:
                case 5:
                    Float f = value instanceof Float ? (Float) value : null;
                    parcel.writeFloat(f != null ? f.floatValue() : 0.0f);
                    break;
                case 6:
                case 7:
                    Double d = value instanceof Double ? (Double) value : null;
                    parcel.writeDouble(d != null ? d.doubleValue() : 0.0d);
                    break;
                case 8:
                case 9:
                    Byte b = value instanceof Byte ? (Byte) value : null;
                    parcel.writeByte(b != null ? b.byteValue() : (byte) 0);
                    break;
                case 10:
                    parcel.writeString(value instanceof String ? (String) value : null);
                    break;
                case 11:
                    parcel.writeBundle((Bundle) value);
                    break;
                case 12:
                    Boolean bool = value instanceof Boolean ? (Boolean) value : null;
                    parcel.writeBoolean(bool != null ? bool.booleanValue() : false);
                    break;
                default:
                    Log.w(IPCConstants.IPC_TAG_SERVICE, "writePrimitiveType not support");
                    break;
            }
        }

        @RequiresApi(29)
        private final Object readPrimitiveType(Parcel parcel, int constIndex) {
            switch (constIndex) {
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
                case 12:
                    return Boolean.valueOf(parcel.readBoolean());
                default:
                    Log.w(IPCConstants.IPC_TAG_SERVICE, "readPrimitiveType not support");
                    return null;
            }
        }
    }

    static {
        ArrayList<Class<?>> arrayList = new ArrayList<>();
        TYPE_CONST = arrayList;
        arrayList.add(Integer.TYPE);
        arrayList.add(Integer.class);
        arrayList.add(Long.class);
        arrayList.add(Long.TYPE);
        arrayList.add(Float.class);
        arrayList.add(Float.TYPE);
        arrayList.add(Double.class);
        arrayList.add(Double.TYPE);
        arrayList.add(Byte.class);
        arrayList.add(Byte.TYPE);
        arrayList.add(String.class);
        arrayList.add(Bundle.class);
        arrayList.add(Boolean.class);
    }

    public final Class<?> getType() {
        return this.type;
    }

    public final Object getValue() {
        return this.value;
    }

    public final void setType(Class<?> cls) {
        this.type = cls;
    }

    public final void setValue(Object obj) {
        this.value = obj;
    }
}
