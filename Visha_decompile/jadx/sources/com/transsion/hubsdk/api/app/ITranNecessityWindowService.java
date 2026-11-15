package com.transsion.hubsdk.api.app;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ITranNecessityWindowService extends IInterface {

    public static class Default implements ITranNecessityWindowService {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void interceptUnknowSourceWindow(Bundle bundle) throws RemoteException {
        }

        @Override
        public void scanUnknowSourceIfNeedWindow(Bundle bundle) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ITranNecessityWindowService {
        private static final String DESCRIPTOR = "com.transsion.hubsdk.api.app.ITranNecessityWindowService";
        static final int TRANSACTION_interceptUnknowSourceWindow = 1;
        static final int TRANSACTION_scanUnknowSourceIfNeedWindow = 2;

        public static class Proxy implements ITranNecessityWindowService {
            public static ITranNecessityWindowService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override
            public void interceptUnknowSourceWindow(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().interceptUnknowSourceWindow(bundle);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override
            public void scanUnknowSourceIfNeedWindow(Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().scanUnknowSourceIfNeedWindow(bundle);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITranNecessityWindowService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITranNecessityWindowService)) ? new Proxy(iBinder) : (ITranNecessityWindowService) iInterfaceQueryLocalInterface;
        }

        public static ITranNecessityWindowService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ITranNecessityWindowService iTranNecessityWindowService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTranNecessityWindowService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTranNecessityWindowService;
            return true;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                interceptUnknowSourceWindow(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                scanUnknowSourceIfNeedWindow(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void interceptUnknowSourceWindow(Bundle bundle) throws RemoteException;

    void scanUnknowSourceIfNeedWindow(Bundle bundle) throws RemoteException;
}
