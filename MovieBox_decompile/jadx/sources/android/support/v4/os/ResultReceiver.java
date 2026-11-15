package android.support.v4.os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

@SuppressLint({"BanParcelableUsage"})
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new a();
    final Handler mHandler;
    final boolean mLocal;
    android.support.v4.os.a mReceiver;

    class MyRunnable implements Runnable {
        final int mResultCode;
        final Bundle mResultData;

        MyRunnable(int i10, Bundle bundle) {
            this.mResultCode = i10;
            this.mResultData = bundle;
        }

        @Override
        public void run() {
            ResultReceiver.this.onReceiveResult(this.mResultCode, this.mResultData);
        }
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        @Override
        public ResultReceiver[] newArray(int i10) {
            return new ResultReceiver[i10];
        }
    }

    class b extends android.support.v4.os.a.AbstractBinderC0010a {
        b() {
        }

        @Override
        public void c0(int i10, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.mHandler;
            if (handler != null) {
                handler.post(resultReceiver.new MyRunnable(i10, bundle));
            } else {
                resultReceiver.onReceiveResult(i10, bundle);
            }
        }
    }

    public ResultReceiver(Handler handler) {
        this.mLocal = true;
        this.mHandler = handler;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public void send(int i10, Bundle bundle) {
        if (this.mLocal) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new MyRunnable(i10, bundle));
                return;
            } else {
                onReceiveResult(i10, bundle);
                return;
            }
        }
        android.support.v4.os.a aVar = this.mReceiver;
        if (aVar != null) {
            try {
                aVar.c0(i10, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        synchronized (this) {
            try {
                if (this.mReceiver == null) {
                    this.mReceiver = new b();
                }
                parcel.writeStrongBinder(this.mReceiver.asBinder());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    ResultReceiver(Parcel parcel) {
        this.mLocal = false;
        this.mHandler = null;
        this.mReceiver = android.support.v4.os.a.AbstractBinderC0010a.X0(parcel.readStrongBinder());
    }

    protected void onReceiveResult(int i10, Bundle bundle) {
    }
}
