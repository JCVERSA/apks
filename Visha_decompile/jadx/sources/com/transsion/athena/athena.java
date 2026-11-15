package com.transsion.athena;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.transsion.athena.data.TrackData;

public interface athena extends IInterface {

    public static abstract class AbstractBinderC0199athena extends Binder implements athena {
        public static final int a = 0;

        public static class C0200athena implements athena {
            private IBinder a;

            public C0200athena(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override
            public void a(String str, TrackData trackData, long j) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.athena.IAthenaTrackInterface");
                    parcelObtain.writeString(str);
                    if (trackData != null) {
                        parcelObtain.writeInt(1);
                        trackData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeLong(j);
                    if (!this.a.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i = AbstractBinderC0199athena.a;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.a;
            }
        }

        public AbstractBinderC0199athena() {
            attachInterface(this, "com.transsion.athena.IAthenaTrackInterface");
        }

        public static athena a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsion.athena.IAthenaTrackInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof athena)) ? new C0200athena(iBinder) : (athena) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.transsion.athena.IAthenaTrackInterface");
                return true;
            }
            parcel.enforceInterface("com.transsion.athena.IAthenaTrackInterface");
            a(parcel.readString(), parcel.readInt() != 0 ? TrackData.CREATOR.createFromParcel(parcel) : null, parcel.readLong());
            parcel2.writeNoException();
            return true;
        }
    }

    void a(String str, TrackData trackData, long j) throws RemoteException;
}
