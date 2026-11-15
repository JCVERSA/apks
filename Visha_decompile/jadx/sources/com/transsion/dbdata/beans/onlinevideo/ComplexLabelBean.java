package com.transsion.dbdata.beans.onlinevideo;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

public class ComplexLabelBean extends LabelBean implements Parcelable {
    public static final Parcelable.Creator<ComplexLabelBean> CREATOR = new Parcelable.Creator<ComplexLabelBean>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ComplexLabelBean createFromParcel(Parcel parcel) {
            return new ComplexLabelBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public ComplexLabelBean[] newArray(int i) {
            return new ComplexLabelBean[i];
        }
    };
    public static final int TAG_TYPE_SPACIAL_HOT = 2;
    public static final int TAG_TYPE_SPACIAL_NEW = 1;
    private List<ComplexLabelBean> aggregation_tag;
    private String aggregation_tag_ids;
    private int pay_type;

    public ComplexLabelBean(Parcel parcel) {
        setTag_type(parcel.readInt());
        setTag_id(parcel.readLong());
        setAggregation_tag(parcel.createTypedArrayList(CREATOR));
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public List<ComplexLabelBean> getAggregation_tag() {
        return this.aggregation_tag;
    }

    public String getAggregation_tag_ids() {
        return this.aggregation_tag_ids;
    }

    public int getPay_type() {
        return this.pay_type;
    }

    public boolean isHot() {
        return this.pay_type == 2;
    }

    public boolean isNew() {
        return this.pay_type == 1;
    }

    public void setAggregation_tag(List<ComplexLabelBean> list) {
        this.aggregation_tag = list;
    }

    public void setAggregation_tag_ids(String str) {
        this.aggregation_tag_ids = str;
    }

    public void setPay_type(int i) {
        this.pay_type = i;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(getTag_type());
        parcel.writeLong(getTag_id());
        parcel.writeTypedList(this.aggregation_tag);
    }
}
