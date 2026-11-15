package com.mgmi.net.bean;

import java.io.Serializable;
import java.util.List;

public class FlashVideo implements com.mgadplus.netlib.json.a, Serializable {
    public int cHeight;
    public int cWidth;
    public List<String> click;
    public int duration;
    public List<String> impression;
    public List<String> midpoint;
    public String type;
    public String url;
}
