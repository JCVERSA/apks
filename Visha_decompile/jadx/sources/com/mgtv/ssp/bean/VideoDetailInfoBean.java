package com.mgtv.ssp.bean;

import com.google.gson.annotations.SerializedName;
import com.mgtv.ssp.utils.d;
import com.transsion.xuanniao.account.model.data.CloudItem;
import java.io.Serializable;
import java.util.List;

public class VideoDetailInfoBean extends VideoInfoBean {

    @SerializedName("actors")
    private String actors;

    @SerializedName("area")
    private String area;

    @SerializedName(CloudItem.KEY_CATEGORY)
    private String category;

    @SerializedName("directors")
    private String directors;

    @SerializedName("introList")
    private List<InfoBean> introList;

    @SerializedName("schema")
    private String schema;

    @SerializedName("story")
    private String story;

    public static class InfoBean implements Serializable {
        public String name;
        public String val;
    }

    public String getActors() {
        return this.actors;
    }

    public String getArea() {
        return this.area;
    }

    public String getCategory() {
        return this.category;
    }

    public String getDirectors() {
        return this.directors;
    }

    public List<InfoBean> getIntroList() {
        return this.introList;
    }

    public String getSchema() {
        return d.a(this.schema, "MG^UNION!2022@");
    }

    public String getSchemaV2() {
        return this.schema;
    }

    public String getStory() {
        return this.story;
    }

    public void setActors(String str) {
        this.actors = str;
    }

    public void setArea(String str) {
        this.area = str;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setDirectors(String str) {
        this.directors = str;
    }

    public void setIntroList(List<InfoBean> list) {
        this.introList = list;
    }

    public void setSchema(String str) {
        this.schema = str;
    }

    public void setStory(String str) {
        this.story = str;
    }
}
