package com.facebook.ads.androidx.media3.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.redexgen.core.AbstractC05701w;
import com.facebook.ads.redexgen.core.AbstractC06244a;
import com.facebook.ads.redexgen.core.C3M;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;

public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new Parcelable.Creator<DrmInitData>() {
        @Override
        public final DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        @Override
        public final DrmInitData[] newArray(int i) {
            return new DrmInitData[i];
        }
    };
    public int A00;
    public final int A01;
    public final String A02;

    @MetaExoPlayerCustomization("Making the schemeDatas public")
    public final SchemeData[] A03;

    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new Parcelable.Creator<SchemeData>() {
            @Override
            public final DrmInitData.SchemeData createFromParcel(Parcel parcel) {
                return new DrmInitData.SchemeData(parcel);
            }

            @Override
            public final DrmInitData.SchemeData[] newArray(int i) {
                return new DrmInitData.SchemeData[i];
            }
        };
        public int A00;
        public final String A01;
        public final String A02;
        public final UUID A03;
        public final byte[] A04;

        public SchemeData(Parcel parcel) {
            this.A03 = new UUID(parcel.readLong(), parcel.readLong());
            this.A01 = parcel.readString();
            this.A02 = (String) AbstractC06244a.A0f(parcel.readString());
            this.A04 = parcel.createByteArray();
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr) {
            this.A03 = (UUID) C3M.A01(uuid);
            this.A01 = str;
            this.A02 = (String) C3M.A01(str2);
            this.A04 = bArr;
        }

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            this(uuid, null, str, bArr);
        }

        @Override
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof SchemeData)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            SchemeData schemeData = (SchemeData) obj;
            return AbstractC06244a.A1E(this.A01, schemeData.A01) && AbstractC06244a.A1E(this.A02, schemeData.A02) && AbstractC06244a.A1E(this.A03, schemeData.A03) && Arrays.equals(this.A04, schemeData.A04);
        }

        public final int hashCode() {
            if (this.A00 == 0) {
                int result = this.A03.hashCode();
                int i = result * 31;
                int result2 = this.A01 == null ? 0 : this.A01.hashCode();
                int result3 = (((i + result2) * 31) + this.A02.hashCode()) * 31;
                int result4 = Arrays.hashCode(this.A04);
                this.A00 = result3 + result4;
            }
            return this.A00;
        }

        @Override
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.A03.getMostSignificantBits());
            parcel.writeLong(this.A03.getLeastSignificantBits());
            parcel.writeString(this.A01);
            parcel.writeString(this.A02);
            parcel.writeByteArray(this.A04);
        }
    }

    public DrmInitData(Parcel parcel) {
        this.A02 = parcel.readString();
        this.A03 = (SchemeData[]) AbstractC06244a.A0f((SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR));
        this.A01 = this.A03.length;
    }

    public DrmInitData(String str, boolean z, SchemeData... schemeDataArr) {
        this.A02 = str;
        schemeDataArr = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.A03 = schemeDataArr;
        this.A01 = schemeDataArr.length;
        Arrays.sort(this.A03, this);
    }

    public DrmInitData(String str, SchemeData... schemeDataArr) {
        this(str, true, schemeDataArr);
    }

    public DrmInitData(List<SchemeData> schemeDatas) {
        this(null, false, (SchemeData[]) schemeDatas.toArray(new SchemeData[0]));
    }

    public DrmInitData(SchemeData... schemeDataArr) {
        this(null, schemeDataArr);
    }

    @Override
    public final int compare(SchemeData schemeData, SchemeData schemeData2) {
        if (AbstractC05701w.A03.equals(schemeData.A03)) {
            return AbstractC05701w.A03.equals(schemeData2.A03) ? 0 : 1;
        }
        return schemeData.A03.compareTo(schemeData2.A03);
    }

    public final DrmInitData A01(String str) {
        if (AbstractC06244a.A1E(this.A02, str)) {
            return this;
        }
        return new DrmInitData(str, false, this.A03);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DrmInitData drmInitData = (DrmInitData) obj;
        if (AbstractC06244a.A1E(this.A02, drmInitData.A02) && Arrays.equals(this.A03, drmInitData.A03)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            int result = this.A02 == null ? 0 : this.A02.hashCode();
            int i = result * 31;
            int result2 = Arrays.hashCode(this.A03);
            this.A00 = i + result2;
        }
        return this.A00;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.A02);
        parcel.writeTypedArray(this.A03, 0);
    }
}
