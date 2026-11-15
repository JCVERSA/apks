package com.mgtv.ssp;

import android.os.Parcel;
import com.google.gson.annotations.SerializedName;
import com.hunantv.imgo.net.entity.JsonEntity;
import java.io.Serializable;

public class VideoListBean extends JsonEntity {

    @SerializedName("data")
    public DataBean data;

    public static class DataBean {

        public static class DownDefinition implements Serializable {
            public int definition;
            public int pay;
            public long size;

            public DownDefinition(Parcel parcel) {
                this.definition = parcel.readInt();
                this.size = parcel.readLong();
                this.pay = parcel.readInt();
            }
        }
    }
}
