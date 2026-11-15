package com.transsion.dbdata.beans.appconfig;

import androidx.annotation.NonNull;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import defpackage.hb0;
import java.io.Serializable;

public class BottomBean implements Serializable {

    @SerializedName("cellular_autoplay")
    private boolean cellularAutoplay;

    @SerializedName("default_show")
    private Integer defaultShow;

    @SerializedName("filter_channel")
    private boolean filterChannel;

    @SerializedName("icon")
    private String icon;

    @SerializedName("icon_unselect")
    private String icon_unselect;

    @SerializedName(TtmlNode.ATTR_ID)
    private Integer id;

    @SerializedName("is_default_tab")
    private int isDefaultTab;

    @SerializedName("is_ott")
    private Boolean isOtt;

    @SerializedName("name")
    private String name;

    @SerializedName(hb0.KEY_NAME_REGION_ID)
    private Integer regionId;

    @SerializedName("sort")
    private Integer sort;

    @SerializedName("svg")
    private Integer svg;

    @SerializedName("version")
    private String version;

    @SerializedName("wifi_autoplay")
    private boolean wifiAutoplay;

    public boolean getCellularAutoplay() {
        return this.cellularAutoplay;
    }

    public Integer getDefaultShow() {
        return this.defaultShow;
    }

    public int getDefaultTab() {
        return this.isDefaultTab;
    }

    public String getIcon() {
        return this.icon;
    }

    public Integer getId() {
        return this.id;
    }

    public Boolean getIsOtt() {
        return this.isOtt;
    }

    public String getName() {
        return this.name;
    }

    public Integer getRegionId() {
        return this.regionId;
    }

    public Integer getSort() {
        return this.sort;
    }

    public Integer getSvg() {
        return this.svg;
    }

    public String getUnselectIcon() {
        return this.icon_unselect;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean getWifiAutoplay() {
        return this.wifiAutoplay;
    }

    public boolean isFilterChannel() {
        return this.filterChannel;
    }

    public void setCellularAutoplay(boolean z) {
        this.cellularAutoplay = z;
    }

    public void setDefaultShow(Integer num) {
        this.defaultShow = num;
    }

    public void setDefaultTab(int i) {
        this.isDefaultTab = i;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public void setIsOtt(Boolean bool) {
        this.isOtt = bool;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRegionId(Integer num) {
        this.regionId = num;
    }

    public void setSort(Integer num) {
        this.sort = num;
    }

    public void setSvg(Integer num) {
        this.svg = num;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public void setWifiAutoplay(boolean z) {
        this.wifiAutoplay = z;
    }

    @NonNull
    public String toString() {
        return "BottomBean{id=" + this.id + ", name='" + this.name + "', icon='" + this.icon + "', icon_unselect='" + this.icon_unselect + "', sort=" + this.sort + ", version='" + this.version + "', svg=" + this.svg + ", regionId=" + this.regionId + ", defaultShow=" + this.defaultShow + ", isOtt=" + this.isOtt + ", isDefaultTab=" + this.isDefaultTab + ", cellularAutoplay=" + this.cellularAutoplay + ", wifiAutoplay=" + this.wifiAutoplay + ", filterChannel=" + this.filterChannel + '}';
    }
}
