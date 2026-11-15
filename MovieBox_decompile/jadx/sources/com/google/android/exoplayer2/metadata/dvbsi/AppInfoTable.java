package com.google.android.exoplayer2.metadata.dvbsi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;

public final class AppInfoTable implements Metadata.Entry {
    public static final int CONTROL_CODE_AUTOSTART = 1;
    public static final int CONTROL_CODE_PRESENT = 2;
    public static final Parcelable.Creator<AppInfoTable> CREATOR = new a();
    public final int controlCode;
    public final String url;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public AppInfoTable createFromParcel(Parcel parcel) {
            return new AppInfoTable(parcel.readInt(), (String) com.google.android.exoplayer2.util.a.e(parcel.readString()));
        }

        @Override
        public AppInfoTable[] newArray(int i10) {
            return new AppInfoTable[i10];
        }
    }

    public AppInfoTable(int i10, String str) {
        this.controlCode = i10;
        this.url = str;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return com.google.android.exoplayer2.metadata.a.a(this);
    }

    @Override
    public p1 getWrappedMetadataFormat() {
        return com.google.android.exoplayer2.metadata.a.b(this);
    }

    @Override
    public void populateMediaMetadata(b2.b bVar) {
        com.google.android.exoplayer2.metadata.a.c(this, bVar);
    }

    public String toString() {
        return "Ait(controlCode=" + this.controlCode + ",url=" + this.url + ")";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.url);
        parcel.writeInt(this.controlCode);
    }
}
