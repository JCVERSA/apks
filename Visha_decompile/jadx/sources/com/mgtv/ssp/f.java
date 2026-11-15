package com.mgtv.ssp;

import com.mgtv.ssp.bean.VideoBean;
import com.mgtv.ssp.bean.VideoDetailInfoBean;

public class f {
    public boolean a;
    public int b;
    public VideoBean c;
    public VideoDetailInfoBean d;
    public boolean e;
    public String f;

    public f(int i) {
        this.b = i;
    }

    public f(int i, VideoBean videoBean) {
        this.b = i;
        this.c = videoBean;
    }

    public f(int i, VideoDetailInfoBean videoDetailInfoBean) {
        this.b = i;
        this.d = videoDetailInfoBean;
    }
}
