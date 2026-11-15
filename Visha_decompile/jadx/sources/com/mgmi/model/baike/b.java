package com.mgmi.model.baike;

import com.mgmi.model.AdStyleInfo;
import com.mgmi.model.LandPage;
import java.io.Serializable;

public class b implements Serializable {
    public String caption;
    public com.mgmi.model.baike.a content;
    public int contentType;
    public int expandDefault;
    public int expandTime;
    public boolean hasRender;
    public LandPage landpage;
    public String lob;
    public String msgId;
    public a position;
    public int showTime;
    public AdStyleInfo skinAd;
    public String trace;
    public int pageId = -1;
    public int showClose = 1;

    public class a implements Serializable {
        public int left = -1;
        public int right = -1;
        public int top = -1;
        public int bottom = -1;

        public a() {
        }
    }
}
