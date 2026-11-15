package defpackage;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

public abstract class sff {
    public static final ClassLoader a = sff.class.getClassLoader();

    public static Parcelable a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void b(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    public static boolean c(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
