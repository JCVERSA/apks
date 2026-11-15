package com.mgtv.downloader.free.bean.response;

import com.mgtv.json.JsonInterface;
import java.io.Serializable;

public class PlayLTVideoRep implements JsonInterface, Serializable {
    private String url = "";
    private String isvideo = "";
    private String overstep = "";
    private String icon = "";
    private String descurl = "";

    public String getDescurl() {
        return this.descurl;
    }

    public String getIcon() {
        return this.icon;
    }

    public String getIsvideo() {
        return this.isvideo;
    }

    public String getOverstep() {
        return this.overstep;
    }

    public String getUrl() {
        return this.url;
    }

    public void setDescurl(String str) {
        this.descurl = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setIsvideo(String str) {
        this.isvideo = str;
    }

    public void setOverstep(String str) {
        this.overstep = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "{\"url\":\"" + this.url + "\", \"isvideo\":\"" + this.isvideo + "\", \"overstep\":\"" + this.overstep + "\", \"icon\":\"" + this.icon + "\", \"descurl\":\"" + this.descurl + "\"}";
    }
}
