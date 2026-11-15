package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.annotations.SerializedName;

public class Thumbnails extends TypeBean {

    @SerializedName("height")
    private Integer height;

    @SerializedName("url")
    private String url;

    @SerializedName("width")
    private Integer width;

    public Integer getHeight() {
        return this.height;
    }

    public String getUrl() {
        return this.url;
    }

    public Integer getWidth() {
        return this.width;
    }

    public void setHeight(Integer num) {
        this.height = num;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setWidth(Integer num) {
        this.width = num;
    }
}
