package e0;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

public final class a {

    public static SparseArray<b> f643a;

    public static class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new C0009a();

        public final int f646a;

        public final String f647b;

        public final ArrayList<C0007a> f648c;

        public int f649d;

        public int f650e;

        public class C0009a implements Parcelable.Creator<b> {
            @Override
            public final b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override
            public final b[] newArray(int i2) {
                return new b[i2];
            }
        }

        public b(String str) {
            this(-1, 0, str);
        }

        public final void a(int i2, String str) {
            ArrayList<C0007a> arrayList = this.f648c;
            int size = arrayList.size();
            if (size > 100) {
                this.f650e |= 2;
                return;
            }
            if (size > 0) {
                C0007a c0007a = arrayList.get(size - 1);
                if (c0007a.f644a == i2 && v0.h.f(c0007a.f645b, str)) {
                    return;
                }
            }
            arrayList.add(new C0007a(i2, str));
        }

        @Override
        public final int describeContents() {
            return 0;
        }

        @Override
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f646a);
            parcel.writeInt(i2);
            parcel.writeString(this.f647b);
            parcel.writeTypedList(this.f648c);
        }

        public b(int i2, int i3, String str) {
            this.f646a = i2;
            this.f647b = str;
            this.f648c = new ArrayList<>(3);
            this.f649d = (int) (System.currentTimeMillis() / 1000);
            this.f650e = i3;
        }

        public b(Parcel parcel) {
            this.f646a = parcel.readInt();
            this.f650e = parcel.readInt();
            this.f647b = parcel.readString();
            ArrayList<C0007a> arrayListCreateTypedArrayList = parcel.createTypedArrayList(C0007a.CREATOR);
            this.f648c = arrayListCreateTypedArrayList == null ? new ArrayList<>(3) : arrayListCreateTypedArrayList;
        }
    }

    public static synchronized b a(int i2) {
        SparseArray<b> sparseArray = f643a;
        if (sparseArray == null) {
            return null;
        }
        b bVar = sparseArray.get(i2);
        if (bVar == null) {
            return null;
        }
        f643a.delete(i2);
        if (bVar.f648c.isEmpty()) {
            return null;
        }
        bVar.f649d = ((int) (System.currentTimeMillis() / 1000)) - bVar.f649d;
        return bVar;
    }

    public static synchronized void b(int i2, boolean z2, String str) {
        if (f643a == null) {
            f643a = new SparseArray<>();
        }
        f643a.put(i2, new b(i2, z2 ? 1 : 0, str));
    }

    public static synchronized void c(int i2, boolean z2) {
        int i3;
        SparseArray<b> sparseArray = f643a;
        if (sparseArray == null) {
            return;
        }
        b bVar = sparseArray.get(i2);
        if (bVar == null) {
            return;
        }
        if (bVar.f648c.isEmpty()) {
            if (a0.c.K(a0.c.f18j[i2], 15) || z2) {
                i3 = R.string.MES_CANCEL_PROCES;
            } else {
                i3 = a0.c.K(bVar.f650e, 1) ? R.string.MES_CORRUP_ARCHICHE : R.string.MES_END_WITH_ERROR;
            }
            bVar.a(0, ZApp.f1434c == null ? "" : ZApp.f1434c.getResources().getString(i3));
        }
    }

    public static synchronized boolean d(int i2, int i3, String str) {
        SparseArray<b> sparseArray = f643a;
        if (sparseArray == null) {
            return false;
        }
        b bVar = sparseArray.get(i2);
        if (bVar == null) {
            return false;
        }
        bVar.a(i3, str);
        return true;
    }

    public static String e(int i2, String str) {
        ZApp zApp = ZApp.f1434c;
        if (zApp == null) {
            return null;
        }
        if (i2 == 200) {
            return zApp.getString(R.string.MES_ACCESS_DENIED);
        }
        switch (i2) {
            case 0:
                return str;
            case 1:
                return zApp.getString(R.string.ERROR_UNKNOWN_FORMAT);
            case 2:
                return zApp.getString(R.string.ERROR_WRONG_PASSWORD);
            case 3:
                return zApp.getString(R.string.ERROR_IS_NOT_ARCHIVE);
            case 4:
                return zApp.getString(R.string.ERROR_OUT_OF_MEMORY);
            case 5:
                return zApp.getString(R.string.ERROR_CRC_ERROR);
            case 6:
                return zApp.getString(R.string.ERROR_DATA_ERROR);
            case 7:
                return zApp.getString(R.string.ERROR_UNSUPORTED_METOD);
            case 8:
                return zApp.getString(R.string.MES_DONT_SUPPORT_EDIT);
            case 9:
                return zApp.getString(R.string.ERROR_UNEXPECTED_END);
            case 10:
                return zApp.getString(R.string.ERROR_NOT_ENOUGH_DISK_SPACE);
            default:
                return null;
        }
    }

    public static class C0007a implements Parcelable {
        public static final Parcelable.Creator<C0007a> CREATOR = new C0008a();

        public final int f644a;

        public final String f645b;

        public class C0008a implements Parcelable.Creator<C0007a> {
            @Override
            public final C0007a createFromParcel(Parcel parcel) {
                return new C0007a(parcel);
            }

            @Override
            public final C0007a[] newArray(int i2) {
                return new C0007a[i2];
            }
        }

        public C0007a() {
            throw null;
        }

        public C0007a(int i2, String str) {
            this.f644a = i2;
            this.f645b = str;
        }

        @Override
        public final int describeContents() {
            return 0;
        }

        @Override
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f644a);
            parcel.writeString(this.f645b);
        }

        public C0007a(Parcel parcel) {
            this.f644a = parcel.readInt();
            this.f645b = parcel.readString();
        }
    }
}
