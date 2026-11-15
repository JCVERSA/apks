package com.transsion.hubsdk.api.view;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.InputEvent;

public interface ITranTouchEventHandler extends IInterface {

    public static class Default implements ITranTouchEventHandler {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void handleInputEvent(InputEvent inputEvent) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ITranTouchEventHandler {
        private static final String DESCRIPTOR = "com.transsion.hubsdk.api.view.ITranTouchEventHandler";
        static final int TRANSACTION_handleInputEvent = 1;

        public static class Proxy implements ITranTouchEventHandler {
            public static ITranTouchEventHandler sDefaultImpl;
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
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (inputEvent != null) {
                        parcelObtain.writeInt(1);
                        inputEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().handleInputEvent(inputEvent);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITranTouchEventHandler asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITranTouchEventHandler)) ? new Proxy(iBinder) : (ITranTouchEventHandler) iInterfaceQueryLocalInterface;
        }

        public static ITranTouchEventHandler getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ITranTouchEventHandler iTranTouchEventHandler) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTranTouchEventHandler == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTranTouchEventHandler;
            return true;
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
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            handleInputEvent(parcel.readInt() != 0 ? (InputEvent) InputEvent.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    void handleInputEvent(InputEvent inputEvent) throws RemoteException;
}
