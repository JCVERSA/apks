package com.hunantv.imgo.log;

import android.os.Parcel;
import android.os.Parcelable;

public class LogConfig implements Parcelable {
    public static Parcelable.Creator<LogConfig> d = new Parcelable.Creator<LogConfig>() {
        @Override
        public LogConfig createFromParcel(Parcel parcel) {
            return new LogConfig(parcel);
        }

        @Override
        public LogConfig[] newArray(int i) {
            return new LogConfig[i];
        }
    };
    public long a;
    public long b;
    public long c;

    public long a() {
        return this.a;
    }

    public long b() {
        return this.b;
    }

    public long c() {
        return this.c;
    }

    public byte[] d() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.setDataPosition(0);
        writeToParcel(parcelObtain, 1);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean e() {
        return this.a > 0 && this.b >= 0 && this.c > 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
    }

    public LogConfig() {
        this.a = -1L;
        this.b = -1L;
        this.c = -1L;
    }

    public static LogConfig a(byte[] bArr, int i) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, i);
        parcelObtain.setDataPosition(0);
        LogConfig logConfigCreateFromParcel = d.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return logConfigCreateFromParcel;
    }

    private LogConfig(Parcel parcel) {
        this.a = parcel.readLong();
        this.b = parcel.readLong();
        this.c = parcel.readLong();
    }
}
