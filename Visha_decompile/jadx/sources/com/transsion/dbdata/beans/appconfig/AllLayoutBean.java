package com.transsion.dbdata.beans.appconfig;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;

public class AllLayoutBean implements Serializable {
    private List<ChannelsBean> channel = null;
    private List<LayoutBean> layout = null;
    private List<BottomBean> bottom = null;

    @SerializedName("dataVersion")
    private String dataVersion = "";

    public static class LayoutBean {
        private Integer type = 0;
        private Integer sort = 0;

        public Integer getSort() {
            return this.sort;
        }

        public Integer getType() {
            return this.type;
        }

        public void setSort(Integer num) {
            this.sort = num;
        }

        public void setType(Integer num) {
            this.type = num;
        }

        @NonNull
        public String toString() {
            return "LayoutBean{type=" + this.type + ", sort=" + this.sort + '}';
        }
    }

    public List<BottomBean> getBottom() {
        return this.bottom;
    }

    public List<ChannelsBean> getChannels() {
        return this.channel;
    }

    public String getDataVersion() {
        return this.dataVersion;
    }

    public List<LayoutBean> getLayout() {
        return this.layout;
    }

    public void setBottom(List<BottomBean> list) {
        this.bottom = list;
    }

    public void setChannels(List<ChannelsBean> list) {
        this.channel = list;
    }

    public void setLayout(List<LayoutBean> list) {
        this.layout = list;
    }

    @NonNull
    public String toString() {
        return "AllLayoutBean{channel=" + this.channel + ", layout=" + this.layout + ", bottom=" + this.bottom + ", dataVersion=" + this.dataVersion + '}';
    }
}
