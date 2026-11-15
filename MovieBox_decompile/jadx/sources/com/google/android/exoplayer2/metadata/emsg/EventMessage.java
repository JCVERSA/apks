package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;

public final class EventMessage implements Metadata.Entry {
    public static final String ID3_SCHEME_ID_AOM = "https://aomedia.org/emsg/ID3";
    private static final String ID3_SCHEME_ID_APPLE = "https://developer.apple.com/streaming/emsg-id3";
    public static final String SCTE35_SCHEME_ID = "urn:scte:scte35:2014:bin";
    public final long durationMs;
    private int hashCode;

    public final long f24780id;
    public final byte[] messageData;
    public final String schemeIdUri;
    public final String value;
    private static final p1 ID3_FORMAT = new p1.b().e0(MimeTypes.APPLICATION_ID3).E();
    private static final p1 SCTE35_FORMAT = new p1.b().e0(MimeTypes.APPLICATION_SCTE35).E();
    public static final Parcelable.Creator<EventMessage> CREATOR = new a();

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        @Override
        public EventMessage[] newArray(int i10) {
            return new EventMessage[i10];
        }
    }

    public EventMessage(String str, String str2, long j10, long j11, byte[] bArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.durationMs = j10;
        this.f24780id = j11;
        this.messageData = bArr;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || EventMessage.class != obj.getClass()) {
            return false;
        }
        EventMessage eventMessage = (EventMessage) obj;
        return this.durationMs == eventMessage.durationMs && this.f24780id == eventMessage.f24780id && p0.c(this.schemeIdUri, eventMessage.schemeIdUri) && p0.c(this.value, eventMessage.value) && Arrays.equals(this.messageData, eventMessage.messageData);
    }

    @Override
    @Nullable
    public byte[] getWrappedMetadataBytes() {
        if (getWrappedMetadataFormat() != null) {
            return this.messageData;
        }
        return null;
    }

    @Override
    @Nullable
    public p1 getWrappedMetadataFormat() {
        String str = this.schemeIdUri;
        str.hashCode();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return SCTE35_FORMAT;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return ID3_FORMAT;
            default:
                return null;
        }
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            String str = this.schemeIdUri;
            int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.value;
            int iHashCode2 = str2 != null ? str2.hashCode() : 0;
            long j10 = this.durationMs;
            int i10 = (((iHashCode + iHashCode2) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.f24780id;
            this.hashCode = ((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + Arrays.hashCode(this.messageData);
        }
        return this.hashCode;
    }

    @Override
    public void populateMediaMetadata(b2.b bVar) {
        com.google.android.exoplayer2.metadata.a.c(this, bVar);
    }

    public String toString() {
        return "EMSG: scheme=" + this.schemeIdUri + ", id=" + this.f24780id + ", durationMs=" + this.durationMs + ", value=" + this.value;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.schemeIdUri);
        parcel.writeString(this.value);
        parcel.writeLong(this.durationMs);
        parcel.writeLong(this.f24780id);
        parcel.writeByteArray(this.messageData);
    }

    EventMessage(Parcel parcel) {
        this.schemeIdUri = (String) p0.j(parcel.readString());
        this.value = (String) p0.j(parcel.readString());
        this.durationMs = parcel.readLong();
        this.f24780id = parcel.readLong();
        this.messageData = (byte[]) p0.j(parcel.createByteArray());
    }
}
