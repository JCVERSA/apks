package com.transsion.dbdata.beans.sniff;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import defpackage.r0a;
import java.util.List;

public class SniffBlackWhiteBean {

    @SerializedName("sniff_black_white_list")
    private List<SniffList> sniff_list;

    @SerializedName("sniff_switch_status")
    private int sniff_switch_status;

    public static class SniffList {

        @SerializedName("site_name")
        private final String site_name;

        @SerializedName("site_url")
        private final String site_url;

        public SniffList(String str, String str2) {
            this.site_name = str;
            this.site_url = str2;
        }

        public boolean isMe(String str) {
            return (r0a.g(str) || r0a.g(this.site_url) || !str.contains(this.site_url)) ? false : true;
        }

        @NonNull
        public String toString() {
            return "SniffList{site_name='" + this.site_name + "', site_url='" + this.site_url + "'}";
        }
    }

    public List<SniffList> getSniffList() {
        return this.sniff_list;
    }

    public boolean isSniffSwitchOpen() {
        return this.sniff_switch_status == 1;
    }

    public void setSniffList(List<SniffList> list) {
        this.sniff_list = list;
    }

    public void setSniffSwitchStatus(int i) {
        this.sniff_switch_status = i;
    }

    @NonNull
    public String toString() {
        return "SniffBlackWhiteBean{sniff_switch_status='" + this.sniff_switch_status + "', sniff_list='" + this.sniff_list + "'}";
    }
}
