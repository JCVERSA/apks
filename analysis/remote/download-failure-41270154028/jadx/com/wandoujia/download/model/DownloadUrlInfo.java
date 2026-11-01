package com.wandoujia.download.model;

import java.io.Serializable;
import java.util.List;
import org.apache.http.util.LangUtils;

public class DownloadUrlInfo implements Serializable {
    private static final long serialVersionUID = -5047401112760994112L;
    private List<ClipInfo> clipinfo;
    private String cookie;
    private String host;
    private String refer;
    private long size;
    private String toast;
    private int type;
    private String url;
    private long weight;

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof DownloadUrlInfo)) {
            return LangUtils.equals(((DownloadUrlInfo) obj).url, this.url);
        }
        return false;
    }

    public List<ClipInfo> getClipinfo() {
        return this.clipinfo;
    }

    public String getCookie() {
        return this.cookie;
    }

    public String getHost() {
        return this.host;
    }

    public String getRefer() {
        return this.refer;
    }

    public long getSize() {
        return this.size;
    }

    public String getToast() {
        return this.toast;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public long getWeight() {
        return this.weight;
    }
}
