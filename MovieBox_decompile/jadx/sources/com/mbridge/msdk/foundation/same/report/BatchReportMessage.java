package com.mbridge.msdk.foundation.same.report;

import android.os.Parcel;
import android.os.Parcelable;

public class BatchReportMessage implements Parcelable {
    public static final Parcelable.Creator<BatchReportMessage> CREATOR = new a();

    private String f34685a;

    private long f34686b;

    private String f34687c;

    class a implements Parcelable.Creator<BatchReportMessage> {
        a() {
        }

        @Override
        public BatchReportMessage createFromParcel(Parcel parcel) {
            return new BatchReportMessage(parcel);
        }

        @Override
        public BatchReportMessage[] newArray(int i10) {
            return new BatchReportMessage[i10];
        }
    }

    public BatchReportMessage(String str, String str2, long j10) {
        this.f34687c = str;
        this.f34685a = str2;
        this.f34686b = j10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getReportMessage() {
        return this.f34685a;
    }

    public long getTimestamp() {
        return this.f34686b;
    }

    public String getUuid() {
        return this.f34687c;
    }

    public void setReportMessage(String str) {
        this.f34685a = str;
    }

    public void setTimestamp(long j10) {
        this.f34686b = j10;
    }

    public void setUuid(String str) {
        this.f34687c = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f34687c);
        parcel.writeString(this.f34685a);
        parcel.writeLong(this.f34686b);
    }

    protected BatchReportMessage(Parcel parcel) {
        this.f34687c = parcel.readString();
        this.f34685a = parcel.readString();
        this.f34686b = parcel.readLong();
    }
}
