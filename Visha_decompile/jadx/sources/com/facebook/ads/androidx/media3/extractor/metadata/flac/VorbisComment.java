package com.facebook.ads.androidx.media3.extractor.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.redexgen.core.AbstractC05762c;
import com.facebook.ads.redexgen.core.AbstractC06244a;
import com.facebook.ads.redexgen.core.C2312or;
import com.facebook.ads.redexgen.core.HR;
import java.util.Arrays;

@Deprecated
public class VorbisComment implements Metadata.Entry {
    public static byte[] A02;
    public static final Parcelable.Creator<VorbisComment> CREATOR;
    public final String A00;
    public final String A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 28);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{119, 17, 4, 125, 103};
    }

    @Override
    public final byte[] A9S() {
        return AbstractC05762c.A01(this);
    }

    @Override
    public final C2312or A9T() {
        return AbstractC05762c.A00(this);
    }

    static {
        A01();
        CREATOR = new HR();
    }

    public VorbisComment(Parcel parcel) {
        this.A00 = (String) AbstractC06244a.A0f(parcel.readString());
        this.A01 = (String) AbstractC06244a.A0f(parcel.readString());
    }

    public VorbisComment(String str, String str2) {
        this.A00 = str;
        this.A01 = str2;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VorbisComment vorbisComment = (VorbisComment) obj;
        return this.A00.equals(vorbisComment.A00) && this.A01.equals(vorbisComment.A01);
    }

    public final int hashCode() {
        int result = this.A00.hashCode();
        return (((17 * 31) + result) * 31) + this.A01.hashCode();
    }

    public final String toString() {
        return A00(1, 4, 91) + this.A00 + A00(0, 1, 86) + this.A01;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.A00);
        parcel.writeString(this.A01);
    }
}
