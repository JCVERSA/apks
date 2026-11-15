package com.hunantv.imgo.log.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.exifinterface.media.ExifInterface;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.mozilla.classfile.ByteCode;

public class LogData implements Parcelable {
    public static Parcelable.Creator<LogData> a = new Parcelable.Creator<LogData>() {
        @Override
        public LogData createFromParcel(Parcel parcel) {
            return new LogData(parcel);
        }

        @Override
        public LogData[] newArray(int i) {
            return new LogData[i];
        }
    };
    private long b;
    private byte c;
    private String d;
    private String e;
    private boolean f;

    private CharSequence c() {
        return new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.getDefault()).format(new Date(this.b));
    }

    private String d() {
        byte b = this.c;
        if (b == 1) {
            return "D";
        }
        if (b != 2) {
            return b != 3 ? "D" : ExifInterface.LONGITUDE_EAST;
        }
        return "I";
    }

    public byte[] a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.setDataPosition(0);
        writeToParcel(parcelObtain, 1);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }

    public a b() {
        return new a(ByteCode.T_LONG, a().length);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        if (this.f) {
            return this.d + " " + this.e;
        }
        return "[" + ((Object) c()) + ": " + d() + this.d + "]  " + this.e;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.c);
        parcel.writeLong(this.b);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
    }

    public LogData(byte b, String str, String str2) {
        this.c = b;
        this.d = str;
        this.e = str2;
        this.b = System.currentTimeMillis();
    }

    public static LogData a(byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        LogData logDataCreateFromParcel = a.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return logDataCreateFromParcel;
    }

    public LogData(com.hunantv.imgo.log.c.c cVar) {
        this.c = cVar.b;
        this.d = cVar.b();
        this.e = cVar.c();
        this.f = true;
    }

    private LogData(Parcel parcel) {
        this.c = parcel.readByte();
        this.b = parcel.readLong();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readByte() != 0;
    }
}
