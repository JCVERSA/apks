package com.mgmi.net.bean;

import java.io.Serializable;
import java.util.List;

public class LoadingAdsBean extends MgmiBaseBean implements com.mgadplus.netlib.json.a, Serializable {
    public Integer cid;
    public String cre_md5;
    public String creative_type;
    public List<String> error;
    public Long expire_at;
    public Integer height;
    public List<Integer> hid;
    public List<Integer> hid_ex;
    public List<String> impression;
    public Integer mid;
    public String resInfo;
    public String title;
    public String url;
    public List<Integer> vid;
    public List<Integer> vid_ex;
    public Integer width;

    public String toString() {
        return "LoadingAdsBean{vid=" + this.vid + ", hid=" + this.hid + ", vid_ex=" + this.vid_ex + ", hid_ex=" + this.hid_ex + ", mid=" + this.mid + ", cid=" + this.cid + ", width=" + this.width + ", height=" + this.height + ", expire_at=" + this.expire_at + ", url='" + this.url + "', creative_type='" + this.creative_type + "', impression=" + this.impression + ", error=" + this.error + ", title='" + this.title + "', cre_md5='" + this.cre_md5 + "'}";
    }
}
