package com.transsion.dbdata.beans.onlinevideo;

public class GetVideoByTag extends TypeBean {
    public int page_no;
    public int page_size;
    public VideoTag[] tags;

    public GetVideoByTag(VideoTag[] videoTagArr, int i, int i2) {
        this.tags = videoTagArr;
        this.page_no = i;
        this.page_size = i2;
    }
}
