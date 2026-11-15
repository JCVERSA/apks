package com.cloud.tmc.kernel.ipc;

import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;

public class IpcMessage implements Parcelable {
    public static final Parcelable.Creator<IpcMessage> CREATOR = new Parcelable.Creator<IpcMessage>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public IpcMessage createFromParcel(Parcel parcel) {
            return new IpcMessage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public IpcMessage[] newArray(int i10) {
            return new IpcMessage[i10];
        }
    };
    public String biz;
    public Message bizMsg;
    public String clientId;
    public int lpid;
    public int pid;

    public IpcMessage() {
    }

    public static byte[] marshall(IpcMessage ipcMessage) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeValue(ipcMessage);
            return parcelObtain.marshall();
        } catch (Exception e10) {
            TmcLogger.e(TmcConstants.TAG, "IpcMsg marshall error " + Log.getStackTraceString(e10));
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    public static IpcMessage unmarshall(byte[] bArr) {
        IpcMessage ipcMessage = null;
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                parcelObtain.unmarshall(bArr, 0, bArr.length);
                parcelObtain.setDataPosition(0);
                IpcMessage ipcMessage2 = (IpcMessage) parcelObtain.readValue(IpcMessage.class.getClassLoader());
                parcelObtain.recycle();
                ipcMessage = ipcMessage2;
            } catch (Exception e10) {
                TmcLogger.e(TmcConstants.TAG, "IpcMsg unmarshall error " + Log.getStackTraceString(e10));
                parcelObtain.recycle();
            }
            return ipcMessage;
        } catch (Throwable th2) {
            parcelObtain.recycle();
            throw th2;
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.pid);
        parcel.writeInt(this.lpid);
        parcel.writeString(this.clientId);
        parcel.writeString(this.biz);
        parcel.writeParcelable(this.bizMsg, i10);
    }

    protected IpcMessage(Parcel parcel) {
        this.pid = parcel.readInt();
        this.lpid = parcel.readInt();
        this.clientId = parcel.readString();
        this.biz = parcel.readString();
        this.bizMsg = (Message) parcel.readParcelable(Message.class.getClassLoader());
    }
}
