package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.annotations.SerializedName;
import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.hb0;
import java.util.List;

public class HotSearchBean {

    @SerializedName("actors")
    private String actors;

    @SerializedName(CloudItem.KEY_CATEGORY)
    private Integer category;

    @SerializedName("cover_x")
    private String coverX;

    @SerializedName("cover_y")
    private String coverY;

    @SerializedName("description")
    private String description;

    @SerializedName("duration")
    private Integer duration;

    @SerializedName("kind")
    private Object kind;

    @SerializedName("scores")
    private double scores;

    @SerializedName(hb0.KEY_NAME_VK_SOURCE_ID)
    private String sourceId;

    @SerializedName("tag_list")
    private List<Integer> tagList;

    @SerializedName("title")
    private String title;

    @SerializedName("video_id")
    private Integer videoId;

    @SerializedName("year")
    private Object year;

    public void checkDisplayType() {
    }

    public String getActors() {
        return this.actors;
    }

    public Integer getCategory() {
        return this.category;
    }

    public String getCoverX() {
        return this.coverX;
    }

    public String getCoverY() {
        return this.coverY;
    }

    public String getDescription() {
        return this.description;
    }

    public Integer getDuration() {
        return this.duration;
    }

    public Object getKind() {
        return this.kind;
    }

    public double getScores() {
        return this.scores;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public List<Integer> getTagList() {
        return this.tagList;
    }

    public String getTitle() {
        return this.title;
    }

    public Integer getVideoId() {
        return this.videoId;
    }

    public Object getYear() {
        return this.year;
    }

    public void setActors(String str) {
        this.actors = str;
    }

    public void setCategory(Integer num) {
        this.category = num;
    }

    public void setCoverX(String str) {
        this.coverX = str;
    }

    public void setCoverY(String str) {
        this.coverY = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDuration(Integer num) {
        this.duration = num;
    }

    public void setKind(Object obj) {
        this.kind = obj;
    }

    public void setScores(double d) {
        this.scores = d;
    }

    public void setSourceId(String str) {
        this.sourceId = str;
    }

    public void setTagList(List<Integer> list) {
        this.tagList = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setVideoId(Integer num) {
        this.videoId = num;
    }

    public void setYear(Object obj) {
        this.year = obj;
    }

    public int showDisplayType() {
        List<Integer> list = this.tagList;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.tagList.get(0).intValue();
    }

    public boolean showVipLogo() {
        List<Integer> list = this.tagList;
        return list != null && list.size() > 0 && this.tagList.get(0).intValue() == 1;
    }
}
