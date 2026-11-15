package com.transsion.dbdata.beans.sniff;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;

@Keep
public class DownloadConfigData {

    @SerializedName("dataVersion")
    private String dataVersion;

    @SerializedName("website")
    private DownloadMain downloadMain;

    @SerializedName("keyWords")
    private SearchKey searchKey;

    @SerializedName("blackWhiteRt")
    private SniffBlackWhiteBean sniffBlackWhiteBean;

    public String getDataVersion() {
        return this.dataVersion;
    }

    public DownloadMain getDownloadMain() {
        return this.downloadMain;
    }

    public SearchKey getSearchKey() {
        return this.searchKey;
    }

    public SniffBlackWhiteBean getSniffBlackWhiteBean() {
        return this.sniffBlackWhiteBean;
    }

    public String toString() {
        return "DownloadConfigData{downloadMain=" + this.downloadMain + ", sniffBlackWhiteBean=" + this.sniffBlackWhiteBean + ", searchKey=" + this.searchKey + ", dataVersion=" + this.dataVersion + '}';
    }
}
