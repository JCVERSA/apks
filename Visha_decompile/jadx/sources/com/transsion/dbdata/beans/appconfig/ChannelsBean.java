package com.transsion.dbdata.beans.appconfig;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class ChannelsBean implements Serializable {
    private String description;
    private String h5Page;
    private String icon;
    private Integer id;

    @SerializedName("is_youtube_channel")
    private int isYoutubeChannel;

    @SerializedName("topic_layout")
    private int mTopicLayout;
    private String name;
    private Integer region_id;
    private Integer showTopFunction;
    private Integer sort;
    private String source_name;
    private Integer source_type;
    private String ttPage;

    public String getDescription() {
        return this.description;
    }

    public String getH5Page() {
        return this.h5Page;
    }

    public String getIcon() {
        return this.icon;
    }

    public Integer getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public Integer getRegion_id() {
        return this.region_id;
    }

    public Integer getShowTopFunction() {
        return this.showTopFunction;
    }

    public Integer getSort() {
        return this.sort;
    }

    public String getSource_name() {
        return this.source_name;
    }

    public Integer getSource_type() {
        return this.source_type;
    }

    public int getTopicLayout() {
        return this.mTopicLayout;
    }

    public String getTtPage() {
        return this.ttPage;
    }

    public boolean isH5Channel() {
        return this.isYoutubeChannel == 5;
    }

    public boolean isLibraryChannel() {
        return this.isYoutubeChannel == 4;
    }

    public boolean isTiktokChannel() {
        return this.isYoutubeChannel == 3;
    }

    public boolean isVkChannel() {
        return this.isYoutubeChannel == 2;
    }

    public boolean isYoutubeChannel() {
        return this.isYoutubeChannel == 1;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setH5Page(String str) {
        this.h5Page = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setId(Integer num) {
        this.id = num;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRegion_id(Integer num) {
        this.region_id = num;
    }

    public void setSort(Integer num) {
        this.sort = num;
    }

    public void setSource_name(String str) {
        this.source_name = str;
    }

    public void setSource_type(Integer num) {
        this.source_type = num;
    }

    public void setTopicLayout(int i) {
        this.mTopicLayout = i;
    }

    @NonNull
    public String toString() {
        return "ChannelsBean{id=" + this.id + ", region_id=" + this.region_id + ", name='" + this.name + "', description='" + this.description + "', icon='" + this.icon + "', source_type=" + this.source_type + ", source_name='" + this.source_name + "', sort=" + this.sort + ", mTopicLayout=" + this.mTopicLayout + ", isYoutubeChannel=" + this.isYoutubeChannel + ", showTopFunction=" + this.showTopFunction + ", ttPage=" + this.ttPage + ", h5Page=" + this.h5Page + '}';
    }
}
