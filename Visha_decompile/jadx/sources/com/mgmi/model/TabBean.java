package com.mgmi.model;

import com.mgmi.model.baike.TabAd;
import java.io.Serializable;

public class TabBean implements com.mgadplus.netlib.json.a, Serializable {
    public static int TAB_H5 = 2;
    public static int TAB_H5_NEW = 3;
    public static int TAB_NATIVE = 1;
    public int def;
    public String fileName;
    public String h5Url;
    public String id;
    public int index;
    public boolean isLocal;
    public boolean isReported;
    public String mCurUrl;
    public String name;
    public String params;
    public TabAd tabAd;
    public int type;
    public String zipUrl;

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }
}
