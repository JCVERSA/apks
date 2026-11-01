package com.wandoujia.download.model;

import java.io.Serializable;

public class ClipInfo implements Serializable {
    private String end;
    private String start;

    public String getEnd() {
        return this.end;
    }

    public String getStart() {
        return this.start;
    }
}
