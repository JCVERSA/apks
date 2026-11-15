package com.cloud.hisavana.sdk.data.bean.response;

import android.os.Parcel;
import android.os.Parcelable;

public class AbTestDTO implements Parcelable {
    public static final Parcelable.Creator<AbTestDTO> CREATOR = new Parcelable.Creator<AbTestDTO>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AbTestDTO createFromParcel(Parcel parcel) {
            return new AbTestDTO(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AbTestDTO[] newArray(int i10) {
            return new AbTestDTO[i10];
        }
    };
    private Integer expId;
    private Integer layerId;
    private Integer varId;

    public AbTestDTO() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Integer getExpId() {
        Integer num = this.expId;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public Integer getLayerId() {
        Integer num = this.layerId;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public Integer getVarId() {
        Integer num = this.varId;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String toString() {
        return "AbTestDTO{varId=" + this.varId + ", expId=" + this.expId + ", layerId=" + this.layerId + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        if (this.varId == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.varId.intValue());
        }
        if (this.expId == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.expId.intValue());
        }
        if (this.layerId == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.layerId.intValue());
        }
    }

    protected AbTestDTO(Parcel parcel) {
        if (parcel.readByte() == 0) {
            this.varId = null;
        } else {
            this.varId = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.expId = null;
        } else {
            this.expId = Integer.valueOf(parcel.readInt());
        }
        if (parcel.readByte() == 0) {
            this.layerId = null;
        } else {
            this.layerId = Integer.valueOf(parcel.readInt());
        }
    }
}
