package com.transsion.dbdata.beans.media;

import java.io.Serializable;

public class MediaInfo implements Serializable {
    public int cnt;
    public String vd_format;

    public MediaInfo() {
        this.vd_format = "";
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MediaInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        return ((MediaInfo) obj).vd_format.equals(this.vd_format);
    }

    public MediaInfo(String str, int i) {
        this.cnt = i;
        this.vd_format = str;
    }
}
