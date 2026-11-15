package com.questionnaire.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public interface IQuestionnaireService extends IInterface {

    public static class Default implements IQuestionnaireService {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public List<QuestionnaireData> getQuestionnaireData(String str) throws RemoteException {
            return null;
        }

        @Override
        public void uploadQuestionnaireResult(QuestionnaireData questionnaireData) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IQuestionnaireService {
        private static final String DESCRIPTOR = "com.questionnaire.sdk.IQuestionnaireService";
        static final int TRANSACTION_getQuestionnaireData = 1;
        static final int TRANSACTION_uploadQuestionnaireResult = 2;

        public static class Proxy implements IQuestionnaireService {
            public static IQuestionnaireService sDefaultImpl;
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
            public List<QuestionnaireData> getQuestionnaireData(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getQuestionnaireData(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(QuestionnaireData.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override
            public void uploadQuestionnaireResult(QuestionnaireData questionnaireData) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (questionnaireData != null) {
                        parcelObtain.writeInt(1);
                        questionnaireData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().uploadQuestionnaireResult(questionnaireData);
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

        public static IQuestionnaireService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IQuestionnaireService)) ? new Proxy(iBinder) : (IQuestionnaireService) iInterfaceQueryLocalInterface;
        }

        public static IQuestionnaireService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IQuestionnaireService iQuestionnaireService) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iQuestionnaireService == null) {
                return false;
            }
            Proxy.sDefaultImpl = iQuestionnaireService;
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
                List<QuestionnaireData> questionnaireData = getQuestionnaireData(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(questionnaireData);
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            uploadQuestionnaireResult(parcel.readInt() != 0 ? QuestionnaireData.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    List<QuestionnaireData> getQuestionnaireData(String str) throws RemoteException;

    void uploadQuestionnaireResult(QuestionnaireData questionnaireData) throws RemoteException;
}
