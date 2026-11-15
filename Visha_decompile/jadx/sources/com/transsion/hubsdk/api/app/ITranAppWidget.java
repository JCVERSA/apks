package com.transsion.hubsdk.api.app;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface ITranAppWidget extends IInterface {

    public static class Default implements ITranAppWidget {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void notifyAppWidgetLoadState(boolean z, int i) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ITranAppWidget {
        private static final String DESCRIPTOR = "com.transsion.hubsdk.api.app.ITranAppWidget";
        static final int TRANSACTION_notifyAppWidgetLoadState = 1;

        public static class Proxy implements ITranAppWidget {
            public static ITranAppWidget sDefaultImpl;
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
            public void notifyAppWidgetLoadState(boolean z, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().notifyAppWidgetLoadState(z, i);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITranAppWidget asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITranAppWidget)) ? new Proxy(iBinder) : (ITranAppWidget) iInterfaceQueryLocalInterface;
        }

        public static ITranAppWidget getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ITranAppWidget iTranAppWidget) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTranAppWidget == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTranAppWidget;
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
                notifyAppWidgetLoadState(parcel.readInt() != 0, parcel.readInt());
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void notifyAppWidgetLoadState(boolean z, int i) throws RemoteException;
}
