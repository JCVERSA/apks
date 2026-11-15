package com.transsion.dbdata.beans.sniff;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.transsion.livecaption.constant.ICode;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;

public class SearchKey {

    @SerializedName("banner_keys")
    private BannerKeys bannerKeys;

    @SerializedName("hot_keys")
    private HotKeys hotKeys;

    public static class BannerKeys {

        @SerializedName("data_list")
        private List<Key> dataList;

        @SerializedName("update_time_stamp")
        private Long updateTimeStamp;

        public List<Key> getDataList() {
            return this.dataList;
        }

        public Long getUpdateTimeStamp() {
            return this.updateTimeStamp;
        }

        public void setDataList(List<Key> list) {
            this.dataList = list;
        }

        public void setUpdateTimeStamp(Long l) {
            this.updateTimeStamp = l;
        }

        public String toString() {
            return "BannerKeys{updateTimeStamp=" + this.updateTimeStamp + ", dataList=" + this.dataList + '}';
        }
    }

    public static class HotKeys {

        @SerializedName("data_list")
        private List<Key> dataList;

        @SerializedName("update_time_stamp")
        private Long updateTimeStamp;

        public List<Key> getDataList() {
            return this.dataList;
        }

        public Long getUpdateTimeStamp() {
            return this.updateTimeStamp;
        }

        public void setDataList(List<Key> list) {
            this.dataList = list;
        }

        public void setUpdateTimeStamp(Long l) {
            this.updateTimeStamp = l;
        }

        public String toString() {
            return "HotKeys{updateTimeStamp=" + this.updateTimeStamp + ", dataList=" + this.dataList + '}';
        }
    }

    public static class Key implements Parcelable {
        public static final Parcelable.Creator<Key> CREATOR = new Parcelable.Creator<Key>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Key createFromParcel(Parcel parcel) {
                return new Key(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public Key[] newArray(int i) {
                return new Key[i];
            }
        };

        @SerializedName(ICode.CALL.CALL_KEY_CONTENT)
        private String content;

        @SerializedName("sort")
        private Integer sort;

        @SerializedName("type")
        private int type;

        @SerializedName(ES6Iterator.VALUE_PROPERTY)
        private String value;

        public Key() {
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public String getContent() {
            return this.content;
        }

        public Integer getSort() {
            return this.sort;
        }

        public int getType() {
            return this.type;
        }

        public String getValue() {
            return this.value;
        }

        public void readFromParcel(Parcel parcel) {
            this.content = parcel.readString();
            this.sort = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.value = parcel.readString();
            this.type = parcel.readInt();
        }

        public void setContent(String str) {
            this.content = str;
        }

        public void setSort(Integer num) {
            this.sort = num;
        }

        public void setType(int i) {
            this.type = i;
        }

        public void setValue(String str) {
            this.value = str;
        }

        public String toString() {
            return "Key{content='" + this.content + "', sort=" + this.sort + ", value='" + this.value + "', type=" + this.type + '}';
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.content);
            parcel.writeValue(this.sort);
            parcel.writeString(this.value);
            parcel.writeInt(this.type);
        }

        public Key(Parcel parcel) {
            this.content = parcel.readString();
            this.sort = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.value = parcel.readString();
            this.type = parcel.readInt();
        }
    }

    public BannerKeys getBannerKeys() {
        return this.bannerKeys;
    }

    public HotKeys getHotKeys() {
        return this.hotKeys;
    }

    public void setBannerKeys(BannerKeys bannerKeys) {
        this.bannerKeys = bannerKeys;
    }

    public void setHotKeys(HotKeys hotKeys) {
        this.hotKeys = hotKeys;
    }

    public String toString() {
        return "SearchKey{hotKeys=" + this.hotKeys + ", bannerKeys=" + this.bannerKeys + '}';
    }
}
