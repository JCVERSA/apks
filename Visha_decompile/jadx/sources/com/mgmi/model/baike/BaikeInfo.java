package com.mgmi.model.baike;

import com.mgmi.model.StarsBean;
import com.mgmi.model.TabBean;
import java.io.Serializable;
import java.util.List;

public class BaikeInfo implements com.mgadplus.netlib.json.a, Serializable {
    public BgAd bgAd;
    public String lob;
    public StarHeaderAd starHeaderAd;
    public List<StarsBean> stars;
    public List<TabBean> tabs;
    public String trace;
}
