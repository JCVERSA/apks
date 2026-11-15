package com.transsion.visha.ai;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public interface IAIServiceInterface extends IInterface {
    public static final String DESCRIPTOR = "com.transsion.visha.ai.IAIServiceInterface";

    public static class Default implements IAIServiceInterface {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void registerAudioPlayListener(IAudioPlayStateCallback iAudioPlayStateCallback) throws RemoteException {
        }

        @Override
        public void searchAudioData(String str, IAudioPlayCallback iAudioPlayCallback) throws RemoteException {
        }

        @Override
        public void startAudioActivity(AudioData audioData, IAudioPlayCallback iAudioPlayCallback) throws RemoteException {
        }

        @Override
        public void startPlay(String str, IAudioPlayCallback iAudioPlayCallback) throws RemoteException {
        }

        @Override
        public void startVideoMainActivity() throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IAIServiceInterface {
        static final int TRANSACTION_registerAudioPlayListener = 2;
        static final int TRANSACTION_searchAudioData = 5;
        static final int TRANSACTION_startAudioActivity = 3;
        static final int TRANSACTION_startPlay = 1;
        static final int TRANSACTION_startVideoMainActivity = 4;

        public static class Proxy implements IAIServiceInterface {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IAIServiceInterface.DESCRIPTOR;
            }

            @Override
            public void registerAudioPlayListener(IAudioPlayStateCallback iAudioPlayStateCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAIServiceInterface.DESCRIPTOR);
                    parcelObtain.writeStrongInterface(iAudioPlayStateCallback);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void searchAudioData(String str, IAudioPlayCallback iAudioPlayCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAIServiceInterface.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(iAudioPlayCallback);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void startAudioActivity(AudioData audioData, IAudioPlayCallback iAudioPlayCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAIServiceInterface.DESCRIPTOR);
                    a.d(parcelObtain, audioData, 0);
                    parcelObtain.writeStrongInterface(iAudioPlayCallback);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void startPlay(String str, IAudioPlayCallback iAudioPlayCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAIServiceInterface.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(iAudioPlayCallback);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void startVideoMainActivity() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IAIServiceInterface.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IAIServiceInterface.DESCRIPTOR);
        }

        public static IAIServiceInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IAIServiceInterface.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAIServiceInterface)) ? new Proxy(iBinder) : (IAIServiceInterface) iInterfaceQueryLocalInterface;
        }

        @Override
        public IBinder asBinder() {
            return this;
        }

        @Override
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IAIServiceInterface.DESCRIPTOR);
            }
            if (i == 1598968902) {
                parcel2.writeString(IAIServiceInterface.DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                startPlay(parcel.readString(), IAudioPlayCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 2) {
                registerAudioPlayListener(IAudioPlayStateCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 3) {
                startAudioActivity((AudioData) a.c(parcel, AudioData.CREATOR), IAudioPlayCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            } else if (i == 4) {
                startVideoMainActivity();
                parcel2.writeNoException();
            } else {
                if (i != 5) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                searchAudioData(parcel.readString(), IAudioPlayCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
            }
            return true;
        }
    }

    public static class a {
        public static Object c(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static void d(Parcel parcel, Parcelable parcelable, int i) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i);
            }
        }
    }

    void registerAudioPlayListener(IAudioPlayStateCallback iAudioPlayStateCallback) throws RemoteException;

    void searchAudioData(String str, IAudioPlayCallback iAudioPlayCallback) throws RemoteException;

    void startAudioActivity(AudioData audioData, IAudioPlayCallback iAudioPlayCallback) throws RemoteException;

    void startPlay(String str, IAudioPlayCallback iAudioPlayCallback) throws RemoteException;

    void startVideoMainActivity() throws RemoteException;
}
