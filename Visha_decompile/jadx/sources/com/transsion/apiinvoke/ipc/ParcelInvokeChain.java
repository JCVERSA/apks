package com.transsion.apiinvoke.ipc;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.apiinvoke.invoke.InvokeChain;

public class ParcelInvokeChain implements Parcelable {
    public static final Parcelable.Creator<ParcelInvokeChain> CREATOR = new Parcelable.Creator<ParcelInvokeChain>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelInvokeChain createFromParcel(Parcel parcel) {
            return new ParcelInvokeChain(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ParcelInvokeChain[] newArray(int i) {
            return new ParcelInvokeChain[i];
        }
    };
    private final InvokeChain invokeChain;

    public ParcelInvokeChain(InvokeChain invokeChain) {
        this.invokeChain = invokeChain;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public InvokeChain invokeChain() {
        return this.invokeChain;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.invokeChain);
    }

    public ParcelInvokeChain(Parcel parcel) {
        this.invokeChain = (InvokeChain) parcel.readSerializable();
    }
}
