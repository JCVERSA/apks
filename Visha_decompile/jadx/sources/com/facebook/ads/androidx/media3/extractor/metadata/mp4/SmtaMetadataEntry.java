package com.facebook.ads.androidx.media3.extractor.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.redexgen.core.AE;
import com.facebook.ads.redexgen.core.AbstractC05762c;
import com.facebook.ads.redexgen.core.C0961Hq;
import com.facebook.ads.redexgen.core.C2312or;
import java.util.Arrays;
import okio.Utf8;

public final class SmtaMetadataEntry implements Metadata.Entry {
    public static byte[] A02;
    public static String[] A03 = {"YowUIYllSx7M6YCZVsXGshOnSOoLtc3h", "cbQDhaoj6BnnjM86BUfLE0DUXcchhogH", "2jGri3G66okxwB6aTtVFlcwUPMWoSDUh", "oqqvnpR2rXjWIfcGmkwLVz", "HP58ZBS", "5FsZYBr", "C83yH5O3JL7Th6ZwVIEMqTmMQGSsrvlo", "iqmiLlFC0cAnJcgIyeYDmB"};
    public static final Parcelable.Creator<SmtaMetadataEntry> CREATOR;
    public final float A00;
    public final int A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 7);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{46, 34, 113, 116, 97, 86, 103, 111, 114, 109, 112, 99, 110, 78, 99, 123, 103, 112, 65, 109, 119, 108, 118, Utf8.REPLACEMENT_BYTE, 67, 93, 68, 81, 10, 16, 83, 81, 64, 68, 69, 66, 85, 118, 66, 81, 93, 85, 98, 81, 68, 85, 13};
        String[] strArr = A03;
        if (strArr[2].charAt(28) == strArr[1].charAt(28)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[2] = "UBLtj7Rjkge8uoQlelG8V5Ug9TCga9yn";
        strArr2[1] = "9YC8uwkWuRyKlQdVdfZWzcDmlZgaZ9BR";
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
        CREATOR = new C0961Hq();
    }

    public SmtaMetadataEntry(float f, int i) {
        this.A00 = f;
        this.A01 = i;
    }

    public SmtaMetadataEntry(Parcel parcel) {
        this.A00 = parcel.readFloat();
        this.A01 = parcel.readInt();
    }

    public SmtaMetadataEntry(Parcel parcel, C0961Hq c0961Hq) {
        this(parcel);
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
        SmtaMetadataEntry smtaMetadataEntry = (SmtaMetadataEntry) obj;
        if (this.A00 == smtaMetadataEntry.A00) {
            int i = this.A01;
            int i2 = smtaMetadataEntry.A01;
            String[] strArr = A03;
            if (strArr[2].charAt(28) == strArr[1].charAt(28)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[7] = "brpfHyQIMc9PLpoKo97tct";
            strArr2[3] = "b67853lh3a5iLFx744cZ7n";
            if (i == i2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int result = AE.A00(this.A00);
        return (((17 * 31) + result) * 31) + this.A01;
    }

    public final String toString() {
        return A00(24, 23, 55) + this.A00 + A00(0, 24, 5) + this.A01;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.A00);
        parcel.writeInt(this.A01);
    }
}
