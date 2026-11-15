package com.transsion.livecaption.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.google.gson.reflect.TypeToken;

@Keep
public class Command implements Parcelable {
    public static final Parcelable.Creator<Command> CREATOR = new Parcelable.Creator<Command>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Command createFromParcel(Parcel parcel) {
            return new Command(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Command[] newArray(int i) {
            return new Command[i];
        }
    };
    int code;
    String data;
    int type;

    private Command() {
        this.data = "";
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public void get(String str) {
        new TypeToken<Command>() {
        }.getType();
    }

    public int getCode() {
        return this.code;
    }

    public String getData() {
        return this.data;
    }

    public int getType() {
        return this.type;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeInt(this.code);
        parcel.writeString(this.data);
    }

    public Command(int i, int i2) {
        this.data = "";
        this.type = i;
        this.code = i2;
    }

    public Command(int i, int i2, String str) {
        this.type = i;
        this.code = i2;
        this.data = str;
    }

    public Command(Parcel parcel) {
        this.data = "";
        this.type = parcel.readInt();
        this.code = parcel.readInt();
        this.data = parcel.readString();
    }
}
