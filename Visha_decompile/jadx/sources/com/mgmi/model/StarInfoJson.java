package com.mgmi.model;

import java.io.Serializable;
import java.util.List;

public class StarInfoJson implements com.mgadplus.netlib.json.a, Serializable {
    public EntranceBean base;
    public List<StarsBean> stars;

    public EntranceBean getBase() {
        return this.base;
    }
}
