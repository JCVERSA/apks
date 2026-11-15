package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

public final class mm1 {
    public byte[] a(List list) {
        ArrayList<? extends Parcelable> arrayListD = xn0.d(list);
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayListD);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }
}
