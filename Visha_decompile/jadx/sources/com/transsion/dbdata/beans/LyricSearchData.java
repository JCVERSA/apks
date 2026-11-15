package com.transsion.dbdata.beans;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;

public class LyricSearchData implements Serializable {

    @SerializedName("lyric_list")
    public List<String> lyricList;

    @SerializedName("url")
    public String sourceLink;

    public List<String> getLyricList() {
        return this.lyricList;
    }

    public String getSourceLink() {
        return this.sourceLink;
    }

    public void setLyricList(List<String> list) {
        this.lyricList = list;
    }

    public void setSourceLink(String str) {
        this.sourceLink = str;
    }
}
