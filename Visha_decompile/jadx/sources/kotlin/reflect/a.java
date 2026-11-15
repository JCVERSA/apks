package kotlin.reflect;

import defpackage.y45;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a implements WildcardType, Type {
    public static final C0369a d = new C0369a(null);
    public static final a e = new a(null, null);
    public final Type b;
    public final Type c;

    public static final class C0369a {
        public C0369a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            return a.e;
        }

        public C0369a() {
        }
    }

    public a(Type type, Type type2) {
        this.b = type;
        this.c = type2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) obj;
            if (Arrays.equals(getUpperBounds(), wildcardType.getUpperBounds()) && Arrays.equals(getLowerBounds(), wildcardType.getLowerBounds())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Type[] getLowerBounds() {
        Type type = this.c;
        return type == null ? new Type[0] : new Type[]{type};
    }

    @Override
    public String getTypeName() {
        if (this.c != null) {
            return "? super " + TypesJVMKt.h(this.c);
        }
        Type type = this.b;
        if (type == null || y45.e(type, Object.class)) {
            return "?";
        }
        return "? extends " + TypesJVMKt.h(this.b);
    }

    @Override
    public Type[] getUpperBounds() {
        Type type = this.b;
        if (type == null) {
            type = Object.class;
        }
        return new Type[]{type};
    }

    public int hashCode() {
        return Arrays.hashCode(getLowerBounds()) ^ Arrays.hashCode(getUpperBounds());
    }

    public String toString() {
        return getTypeName();
    }
}
