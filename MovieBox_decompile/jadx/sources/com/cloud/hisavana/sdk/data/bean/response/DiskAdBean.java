package com.cloud.hisavana.sdk.data.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

public class DiskAdBean implements Parcelable {
    public static final Parcelable.Creator<DiskAdBean> CREATOR = new Parcelable.Creator<DiskAdBean>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public DiskAdBean createFromParcel(Parcel parcel) {
            return new DiskAdBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public DiskAdBean[] newArray(int i10) {
            return new DiskAdBean[i10];
        }
    };
    private List<AdsDTO> list;

    protected DiskAdBean(Parcel parcel) {
        this.list = parcel.createTypedArrayList(AdsDTO.CREATOR);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public List<AdsDTO> getList() {
        return this.list;
    }

    public void setList(List<AdsDTO> list) {
        this.list = list;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeTypedList(this.list);
    }

    public DiskAdBean() {
    }
}
