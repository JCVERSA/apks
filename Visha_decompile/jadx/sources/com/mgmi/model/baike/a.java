package com.mgmi.model.baike;

import java.io.Serializable;

public class a implements Serializable {
    public String author;
    public String avatar;
    public C0167a btn;
    public String columnUrl;
    public String[] coverUrl;
    public String damangId;
    public b goods;
    public String id;
    public String mediaFrom;
    public String recLob;
    public int source;
    public int style;
    public String summary;
    public String title;
    public int type;
    public int vid;
    public String videoUrl;

    public static class C0167a implements Serializable {
        public String title;
    }

    public static class b implements Serializable {
        public String marketPrice;
        public String shopPrice;
    }
}
