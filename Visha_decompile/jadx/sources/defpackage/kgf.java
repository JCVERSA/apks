package defpackage;

import android.os.Parcel;

public abstract class kgf {
    public static final ClassLoader a = kgf.class.getClassLoader();

    public static void a(Parcel parcel, boolean z) {
        parcel.writeInt(1);
    }

    public static boolean b(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
