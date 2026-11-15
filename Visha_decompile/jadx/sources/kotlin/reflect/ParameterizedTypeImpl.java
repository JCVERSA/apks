package kotlin.reflect;

import defpackage.hi;
import defpackage.y45;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;

public final class ParameterizedTypeImpl implements ParameterizedType, Type {
    public final Class b;
    public final Type c;
    public final Type[] d;

    public ParameterizedTypeImpl(Class cls, Type type, List list) {
        y45.j(cls, "rawType");
        y45.j(list, "typeArguments");
        this.b = cls;
        this.c = type;
        this.d = (Type[]) list.toArray(new Type[0]);
    }

    public boolean equals(Object obj) {
        if (obj instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            if (y45.e(this.b, parameterizedType.getRawType()) && y45.e(this.c, parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Type[] getActualTypeArguments() {
        return this.d;
    }

    @Override
    public Type getOwnerType() {
        return this.c;
    }

    @Override
    public Type getRawType() {
        return this.b;
    }

    @Override
    public String getTypeName() throws IOException {
        StringBuilder sb = new StringBuilder();
        Type type = this.c;
        if (type != null) {
            sb.append(TypesJVMKt.h(type));
            sb.append("$");
            sb.append(this.b.getSimpleName());
        } else {
            sb.append(TypesJVMKt.h(this.b));
        }
        Type[] typeArr = this.d;
        if (!(typeArr.length == 0)) {
            hi.n0(typeArr, sb, (50 & 2) != 0 ? ", " : null, (50 & 4) != 0 ? "" : "<", (50 & 8) == 0 ? ">" : "", (50 & 16) != 0 ? -1 : 0, (50 & 32) != 0 ? "..." : null, (50 & 64) != 0 ? null : ParameterizedTypeImpl$getTypeName$1$1.INSTANCE);
        }
        return sb.toString();
    }

    public int hashCode() {
        int iHashCode = this.b.hashCode();
        Type type = this.c;
        return Arrays.hashCode(getActualTypeArguments()) ^ (iHashCode ^ (type != null ? type.hashCode() : 0));
    }

    public String toString() {
        return getTypeName();
    }
}
