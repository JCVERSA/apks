package com.transsion.kolun.oxygenbus.common;

import android.database.MatrixCursor;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public class BinderCursor extends MatrixCursor {
    static final String KEY_BINDER = "binder";
    Bundle mBinderExtra;

    public BinderCursor(String[] strArr, IBinder iBinder) {
        super(strArr);
        this.mBinderExtra = new Bundle();
        if (iBinder != null) {
            this.mBinderExtra.putParcelable(KEY_BINDER, new BinderParcelable(iBinder));
        }
    }

    @Override
    public Bundle getExtras() {
        return this.mBinderExtra;
    }

    public static class BinderParcelable implements Parcelable {
        public static final Parcelable.Creator<BinderParcelable> CREATOR = new Parcelable.Creator<BinderParcelable>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public BinderParcelable createFromParcel(Parcel parcel) {
                return new BinderParcelable(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public BinderParcelable[] newArray(int i) {
                return new BinderParcelable[i];
            }
        };
        public IBinder mBinder;

        public BinderParcelable(IBinder iBinder) {
            this.mBinder = iBinder;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeStrongBinder(this.mBinder);
        }

        public BinderParcelable(Parcel parcel) {
            this.mBinder = parcel.readStrongBinder();
        }
    }
}
