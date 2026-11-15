package defpackage;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import kotlin.reflect.TypesJVMKt;
import okhttp3.HttpUrl;

public final class qd4 implements GenericArrayType, Type {
    public final Type b;

    public qd4(Type type) {
        y45.j(type, "elementType");
        this.b = type;
    }

    public boolean equals(Object obj) {
        return (obj instanceof GenericArrayType) && y45.e(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
    }

    @Override
    public Type getGenericComponentType() {
        return this.b;
    }

    @Override
    public String getTypeName() {
        return TypesJVMKt.h(this.b) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    public int hashCode() {
        return getGenericComponentType().hashCode();
    }

    public String toString() {
        return getTypeName();
    }
}
