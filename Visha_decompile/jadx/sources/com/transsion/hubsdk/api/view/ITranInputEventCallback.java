package com.transsion.hubsdk.api.view;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.InputEvent;

public interface ITranInputEventCallback extends IInterface {

    public static class Default implements ITranInputEventCallback {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void handleInputEvent(InputEvent inputEvent) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ITranInputEventCallback {
        private static final String DESCRIPTOR = "com.transsion.hubsdk.api.view.ITranInputEventCallback";
        static final int TRANSACTION_handleInputEvent = 1;

        public static class Proxy implements ITranInputEventCallback {
            public static ITranInputEventCallback sDefaultImpl;
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
            public void handleInputEvent(InputEvent inputEvent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputEvent != null) {
                        parcelObtain.writeInt(1);
                        inputEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().handleInputEvent(inputEvent);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITranInputEventCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITranInputEventCallback)) ? new Proxy(iBinder) : (ITranInputEventCallback) iInterfaceQueryLocalInterface;
        }

        public static ITranInputEventCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ITranInputEventCallback iTranInputEventCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTranInputEventCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTranInputEventCallback;
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
                handleInputEvent(parcel.readInt() != 0 ? (InputEvent) InputEvent.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void handleInputEvent(InputEvent inputEvent) throws RemoteException;
}
