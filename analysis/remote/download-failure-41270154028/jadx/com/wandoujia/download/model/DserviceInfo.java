package com.wandoujia.download.model;

import java.io.Serializable;
import java.util.List;

public class DserviceInfo implements Serializable {
    public static final int STATUS_FAILED = 0;
    public static final int STATUS_OK = 1;
    private static final long serialVersionUID = -2767005951425009403L;
    private List<DownloadUrlInfo> down_urls;
    private DownloadSegMetaData meta;
    private int status;

    public List<DownloadUrlInfo> getDownload_urls() {
        return this.down_urls;
    }

    public DownloadSegMetaData getMeta() {
        return this.meta;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}
