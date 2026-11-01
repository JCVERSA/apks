package com.wandoujia.download.model;

import java.io.Serializable;
import java.util.List;

public class DownloadSegMetaData implements Serializable {
    private static final long serialVersionUID = -2907061966177689642L;
    private String res_sign;
    private long seg_size;
    private List<SegmentInfo> segments;
    private String total_crc;
    private String total_md5;
    private long total_size;

    public String getRes_sign() {
        return this.res_sign;
    }

    public long getSeg_size() {
        return this.seg_size;
    }

    public List<SegmentInfo> getSegments() {
        return this.segments;
    }

    public String getTotal_crc() {
        return this.total_crc;
    }

    public String getTotal_md5() {
        return this.total_md5;
    }

    public long getTotal_size() {
        return this.total_size;
    }
}
