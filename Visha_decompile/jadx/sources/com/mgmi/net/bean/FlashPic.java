package com.mgmi.net.bean;

import java.io.Serializable;
import java.util.List;

public class FlashPic implements com.mgadplus.netlib.json.a, Serializable {
    public String bgColor;
    public int cHeight;
    public int cWidth;
    public List<String> click;
    public int duration;
    public String type;
    public String url;
}
