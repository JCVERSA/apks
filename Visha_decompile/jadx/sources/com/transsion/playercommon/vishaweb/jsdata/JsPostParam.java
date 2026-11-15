package com.transsion.playercommon.vishaweb.jsdata;

import com.transsion.dbdata.beans.onlinevideo.TypeBean;

public class JsPostParam extends TypeBean {
    JsPost params;
    int type;

    public JsPost getParams() {
        return this.params;
    }

    public int getType() {
        return this.type;
    }

    public void setParams(JsPost jsPost) {
        this.params = jsPost;
    }

    public void setType(int i) {
        this.type = i;
    }
}
