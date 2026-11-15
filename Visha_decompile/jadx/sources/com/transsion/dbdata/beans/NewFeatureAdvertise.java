package com.transsion.dbdata.beans;

import androidx.annotation.NonNull;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import java.util.List;

public class NewFeatureAdvertise {

    @SerializedName("strategy_vo")
    private AdStrategy adStrategy;

    @SerializedName("advertising_list")
    private List<AdvertisingListBean> advertisingList;

    @SerializedName("switch_status")
    private int switchStatus = 1;

    public static class AdStrategy {

        @SerializedName("frequency")
        private int frequency;

        @SerializedName("day")
        private int intervalDays;

        public int getFrequency() {
            return this.frequency;
        }

        public int getIntervalDays() {
            return this.intervalDays;
        }

        public void setFrequency(int i) {
            this.frequency = i;
        }

        public void setIntervalDays(int i) {
            this.intervalDays = i;
        }

        @NonNull
        public String toString() {
            return "AdStrategy{intervalDays=" + this.intervalDays + ", frequency=" + this.frequency + '}';
        }
    }

    public static class AdvertisingListBean {

        @SerializedName(TtmlNode.ATTR_ID)
        private Integer id;

        @SerializedName("name")
        private String name;

        @SerializedName("picture")
        private String picture;

        @SerializedName("router")
        private RouterBean routerBean;

        @SerializedName("version")
        private String version;

        public Integer getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }

        public String getPicture() {
            return this.picture;
        }

        public RouterBean getRouterBean() {
            return this.routerBean;
        }

        public String getVersion() {
            return this.version;
        }

        public void setId(Integer num) {
            this.id = num;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPicture(String str) {
            this.picture = str;
        }

        public void setRouterBean(RouterBean routerBean) {
            this.routerBean = routerBean;
        }

        public void setVersion(String str) {
            this.version = str;
        }

        @NonNull
        public String toString() {
            return "AdvertisingListBean{id=" + this.id + ", name='" + this.name + "', version='" + this.version + "', picture='" + this.picture + "', routerBean=" + this.routerBean + '}';
        }
    }

    public AdStrategy getAdStrategy() {
        return this.adStrategy;
    }

    public List<AdvertisingListBean> getAdvertisingList() {
        return this.advertisingList;
    }

    public int getSwitchStatus() {
        return this.switchStatus;
    }

    public void setAdStrategy(AdStrategy adStrategy) {
        this.adStrategy = adStrategy;
    }

    public void setAdvertisingList(List<AdvertisingListBean> list) {
        this.advertisingList = list;
    }

    public void setSwitchStatus(int i) {
        this.switchStatus = i;
    }

    @NonNull
    public String toString() {
        return "NewFeatureAdvertise{advertisingList=" + this.advertisingList + ", switchStatus=" + this.switchStatus + ", adStrategy=" + this.adStrategy + '}';
    }
}
