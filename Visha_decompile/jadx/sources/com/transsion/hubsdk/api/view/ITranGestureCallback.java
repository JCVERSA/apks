package com.transsion.hubsdk.api.view;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.MotionEvent;

public interface ITranGestureCallback extends IInterface {

    public static class Default implements ITranGestureCallback {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void onNotifyGestureDetected(MotionEvent motionEvent, int i) throws RemoteException {
        }

        @Override
        public void onTranGestureEvent(MotionEvent motionEvent) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ITranGestureCallback {
        private static final String DESCRIPTOR = "com.transsion.hubsdk.api.view.ITranGestureCallback";
        static final int TRANSACTION_onNotifyGestureDetected = 2;
        static final int TRANSACTION_onTranGestureEvent = 1;

        public static class Proxy implements ITranGestureCallback {
            public static ITranGestureCallback sDefaultImpl;
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
            public void onNotifyGestureDetected(MotionEvent motionEvent, int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (motionEvent != null) {
                        parcelObtain.writeInt(1);
                        motionEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onNotifyGestureDetected(motionEvent, i);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override
            public void onTranGestureEvent(MotionEvent motionEvent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (motionEvent != null) {
                        parcelObtain.writeInt(1);
                        motionEvent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTranGestureEvent(motionEvent);
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

        public static ITranGestureCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITranGestureCallback)) ? new Proxy(iBinder) : (ITranGestureCallback) iInterfaceQueryLocalInterface;
        }

        public static ITranGestureCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ITranGestureCallback iTranGestureCallback) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTranGestureCallback == null) {
                return false;
            }
            Proxy.sDefaultImpl = iTranGestureCallback;
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
                onTranGestureEvent(parcel.readInt() != 0 ? (MotionEvent) MotionEvent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onNotifyGestureDetected(parcel.readInt() != 0 ? (MotionEvent) MotionEvent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onNotifyGestureDetected(MotionEvent motionEvent, int i) throws RemoteException;

    void onTranGestureEvent(MotionEvent motionEvent) throws RemoteException;
}
