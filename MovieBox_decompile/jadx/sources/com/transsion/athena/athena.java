package com.transsion.athena;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.transsion.athena.data.TrackData;

public interface athena extends IInterface {

    public static abstract class AbstractBinderC0575athena extends Binder implements athena {

        public static final int f41437a = 0;

        private static class C0576athena implements athena {

            private IBinder f41438a;

            C0576athena(IBinder iBinder) {
                this.f41438a = iBinder;
            }

            @Override
            public void a(String str, TrackData trackData, long j10) throws RemoteException {
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
                    parcelObtain.writeLong(j10);
                    if (!this.f41438a.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i10 = AbstractBinderC0575athena.f41437a;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public IBinder asBinder() {
                return this.f41438a;
            }
        }

        public AbstractBinderC0575athena() {
            attachInterface(this, "com.transsion.athena.IAthenaTrackInterface");
        }

        public static athena a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsion.athena.IAthenaTrackInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof athena)) ? new C0576athena(iBinder) : (athena) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
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

    void a(String str, TrackData trackData, long j10) throws RemoteException;
}
