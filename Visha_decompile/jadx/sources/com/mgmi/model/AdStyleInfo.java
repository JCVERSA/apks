package com.mgmi.model;

import com.mgmi.model.baike.TabEvent;
import java.util.List;

public class AdStyleInfo implements com.mgadplus.netlib.json.a {
    public String advertiser;
    public BackgroundConfig background;
    public int closeTime;
    public List<TabEvent> events;
    public IconConfig icon;
    public String resInfo;
    public TextConfig textStyle;
    public int showClose = 1;
    public int showAdflag = 0;

    public static class BackgroundConfig implements com.mgadplus.netlib.json.a {
        public String color;
        public String url;
    }

    public static class IconConfig implements com.mgadplus.netlib.json.a {
        public String url;
    }

    public static class TextConfig implements com.mgadplus.netlib.json.a {
        public String descBgcolor;
        public String descColor;
        public String expandColor;
        public int roll_time;
        public String titleBgcolor;
        public String titleColor;
    }
}
