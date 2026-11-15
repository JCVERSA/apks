package com.bytedance.sdk.openadsdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IDislikeClosedListener extends IInterface {
    void onItemClickClosed() throws RemoteException;

    public static class Default implements IDislikeClosedListener {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void onItemClickClosed() throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IDislikeClosedListener {

        private static class Sj implements IDislikeClosedListener {
            public static IDislikeClosedListener Sj;
            private IBinder sP;

            Sj(IBinder iBinder) {
                this.sP = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.sP;
            }

            @Override
            public void onItemClickClosed() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IDislikeClosedListener");
                    if (this.sP.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onItemClickClosed();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.IDislikeClosedListener");
        }

        public static IDislikeClosedListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.IDislikeClosedListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDislikeClosedListener)) ? new Sj(iBinder) : (IDislikeClosedListener) iInterfaceQueryLocalInterface;
        }

        public static IDislikeClosedListener getDefaultImpl() {
            return Sj.Sj;
        }

        public static boolean setDefaultImpl(IDislikeClosedListener iDislikeClosedListener) {
            if (Sj.Sj != null || iDislikeClosedListener == null) {
                return false;
            }
            Sj.Sj = iDislikeClosedListener;
            return true;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.IDislikeClosedListener");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.IDislikeClosedListener");
            onItemClickClosed();
            parcel2.writeNoException();
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
