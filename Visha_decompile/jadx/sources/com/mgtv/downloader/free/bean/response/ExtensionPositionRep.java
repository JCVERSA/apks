package com.mgtv.downloader.free.bean.response;

import com.mgtv.json.JsonInterface;
import java.io.Serializable;

public class ExtensionPositionRep implements JsonInterface, Serializable {
    private String isShow = "";
    private String text = "";
    private String url = "";

    public String getIsShow() {
        return this.isShow;
    }

    public String getText() {
        return this.text;
    }

    public String getUrl() {
        return this.url;
    }

    public void setIsShow(String str) {
        this.isShow = str;
    }

    public void setText(String str) {
        this.text = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "{\"isShow\":\"" + this.isShow + "\"\"text\":\"" + this.text + "\", \"url\":\"" + this.url + "\"}";
    }
}
