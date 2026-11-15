package com.transsion.playercommon.vishaweb.jsdata;

import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import java.util.Map;

public class JsPost extends TypeBean {
    String event;
    Map<String, Object> post;

    public String getEvent() {
        return this.event;
    }

    public Map<String, Object> getPost() {
        return this.post;
    }

    public void setEvent(String str) {
        this.event = str;
    }

    public void setPost(Map<String, Object> map) {
        this.post = map;
    }
}
