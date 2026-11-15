package com.transsion.visha.ai;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

public class StateValue implements Parcelable {
    public static final Parcelable.Creator<StateValue> CREATOR = new a();
    public static final int ERROR_CODE_NO_FOUND = 1001;
    public static final int ERROR_CODE_OTHER = 1003;
    public static final int ERROR_CODE_PARAMS_ERROR = 1002;
    public int errorCode;
    public String errorMessage;
    public int state;
    public String stateStr;

    public class a implements Parcelable.Creator {
        @Override
        public StateValue createFromParcel(Parcel parcel) {
            return new StateValue(parcel);
        }

        @Override
        public StateValue[] newArray(int i) {
            return new StateValue[i];
        }
    }

    public StateValue() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.state);
        parcel.writeString(this.stateStr);
        parcel.writeInt(this.errorCode);
        parcel.writeString(this.errorMessage);
    }

    public StateValue(int i, String str) {
        this.errorCode = i;
        this.errorMessage = str;
    }

    public StateValue(Parcel parcel) {
        this.state = parcel.readInt();
        this.stateStr = parcel.readString();
        this.errorCode = parcel.readInt();
        this.errorMessage = parcel.readString();
    }
}
