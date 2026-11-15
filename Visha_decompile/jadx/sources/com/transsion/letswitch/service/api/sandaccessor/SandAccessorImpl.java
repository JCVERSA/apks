package com.transsion.letswitch.service.api.sandaccessor;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public class SandAccessorImpl implements SandAccessor.ISandAccessor {
    private static final int COMMAND_CALLBACK_TRANSACTION = 1000;
    private static final int COMMAND_TRANSACTION = 1005;
    private static final int COPY_FILE_TRANSACTION = 1002;
    private static final int DELETE_FILE_TRANSACTION = 1004;
    private static final int LIST_FILE_TRANSACTION = 1003;
    private String mMessage;
    private final IBinder mRemote;
    private static final String TAG = "SandAccessorImpl";
    private static boolean DEBUG = Log.isLoggable(TAG, 4);

    public SandAccessorImpl(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    private void handShake(int i, Parcel parcel, Parcel parcel2) {
        handShake(i, parcel, parcel2, 0);
    }

    @Override
    public int copyFile(String str, String str2, String str3, int i, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeString(str);
        parcelObtain.writeString(str2);
        parcelObtain.writeString(str3);
        parcelObtain.writeInt(i);
        parcelObtain.writeInt(i2);
        try {
            handShake(1002, parcelObtain, parcelObtain2);
            int i3 = parcelObtain2.readInt();
            this.mMessage = parcelObtain2.readString();
            if (i3 != 0 && DEBUG) {
                Log.w(TAG, "Failed to invoke copyFile: err code = " + i3 + ", " + this.mMessage);
            }
            return i3;
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override
    public int deleteFile(String str, String str2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeString(str);
        parcelObtain.writeString(str2);
        try {
            handShake(1004, parcelObtain, parcelObtain2);
            int i = parcelObtain2.readInt();
            this.mMessage = parcelObtain2.readString();
            if (i != 0 && DEBUG) {
                Log.w(TAG, "Failed to invoke copyFile: err code = " + i + ", " + this.mMessage);
            }
            return i;
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override
    public String getErrorMessage() {
        return this.mMessage;
    }

    @Override
    public List<String> listFile(String str, String str2, int i, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeString(str);
        parcelObtain.writeString("null");
        parcelObtain.writeString(str2);
        parcelObtain.writeInt(i);
        parcelObtain.writeInt(i2);
        ArrayList arrayList = new ArrayList();
        this.mMessage = null;
        try {
            handShake(1003, parcelObtain, parcelObtain2);
            int i3 = parcelObtain2.readInt();
            this.mMessage = parcelObtain2.readString();
            if (i3 == 0) {
                parcelObtain2.readStringList(arrayList);
            } else if (DEBUG) {
                Log.w(TAG, "Failed to invoke listFile: err code = " + i3 + ", " + this.mMessage);
            }
            return arrayList;
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override
    public void runCommand(String str, String str2, boolean z, final SandAccessor.ICommandCallback iCommandCallback) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeString(str);
            parcelObtain.writeString(str2);
            parcelObtain.writeBoolean(z);
            if (iCommandCallback == null) {
                parcelObtain.writeStrongBinder(null);
            } else {
                parcelObtain.writeStrongBinder(new Binder() {
                    @Override
                    public boolean onTransact(int i, @NonNull Parcel parcel, @Nullable Parcel parcel2, int i2) throws RemoteException {
                        if (SandAccessorImpl.DEBUG) {
                            Log.w(SandAccessorImpl.TAG, "onTransact " + i);
                        }
                        if (i == 1000) {
                            iCommandCallback.onCommandFinished(parcel.readInt(), parcel.readString());
                        }
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                });
            }
            handShake(1005, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    private void handShake(int i, Parcel parcel, Parcel parcel2, int i2) {
        try {
            this.mRemote.transact(i, parcel, parcel2, i2);
        } catch (RemoteException e) {
            String str = "Failed to transact " + i + " " + e;
            this.mMessage = str;
            Log.d(TAG, str);
        }
    }
}
