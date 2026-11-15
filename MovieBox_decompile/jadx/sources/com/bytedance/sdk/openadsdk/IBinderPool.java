package com.bytedance.sdk.openadsdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IBinderPool extends IInterface {

    public static class Default implements IBinderPool {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public IBinder queryBinder(int i10) throws RemoteException {
            return null;
        }
    }

    IBinder queryBinder(int i10) throws RemoteException;

    public static abstract class Stub extends Binder implements IBinderPool {

        private static class Sj implements IBinderPool {
            public static IBinderPool Sj;
            private IBinder sP;

            Sj(IBinder iBinder) {
                this.sP = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.sP;
            }

            @Override
            public IBinder queryBinder(int i10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IBinderPool");
                    parcelObtain.writeInt(i10);
                    if (!this.sP.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().queryBinder(i10);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.IBinderPool");
        }

        public static IBinderPool asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.IBinderPool");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IBinderPool)) ? new Sj(iBinder) : (IBinderPool) iInterfaceQueryLocalInterface;
        }

        public static IBinderPool getDefaultImpl() {
            return Sj.Sj;
        }

        public static boolean setDefaultImpl(IBinderPool iBinderPool) {
            if (Sj.Sj != null || iBinderPool == null) {
                return false;
            }
            Sj.Sj = iBinderPool;
            return true;
        }

        @Override
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.IBinderPool");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.IBinderPool");
            IBinder iBinderQueryBinder = queryBinder(parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeStrongBinder(iBinderQueryBinder);
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }
    }
}
