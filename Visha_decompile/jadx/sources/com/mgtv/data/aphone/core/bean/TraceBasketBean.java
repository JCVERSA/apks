package com.mgtv.data.aphone.core.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.mozilla.classfile.ByteCode;

public class TraceBasketBean implements Parcelable {
    public static final Parcelable.Creator<TraceBasketBean> CREATOR = new Parcelable.Creator<TraceBasketBean>() {
        @Override
        public TraceBasketBean createFromParcel(Parcel parcel) {
            return new TraceBasketBean(parcel);
        }

        @Override
        public TraceBasketBean[] newArray(int i) {
            return new TraceBasketBean[i];
        }
    };
    private long a;
    private String b;
    private String c;

    public TraceBasketBean(String str, String str2) {
        this.b = str;
        this.c = str2;
        this.a = System.currentTimeMillis();
    }

    private CharSequence e() {
        return new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.getDefault()).format(new Date(this.a));
    }

    public byte[] a() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.setDataPosition(0);
        writeToParcel(parcelObtain, 1);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }

    public com.mgtv.data.aphone.core.i.a.a b() {
        return new com.mgtv.data.aphone.core.i.a.a(ByteCode.T_LONG, a().length);
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "[" + ((Object) e()) + ": " + this.b + "]  " + this.c;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
    }

    public TraceBasketBean(Parcel parcel) {
        this.b = parcel.readString();
        this.c = parcel.readString();
    }

    public static TraceBasketBean a(byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        TraceBasketBean traceBasketBeanCreateFromParcel = CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return traceBasketBeanCreateFromParcel;
    }
}
