package com.transsion.dbdata.beans.sniff;

import java.util.ArrayList;
import java.util.List;

public class SniffGetResultReqBean {
    private final List<String> sniff_url = new ArrayList();

    public List<String> getSniffUrl() {
        return this.sniff_url;
    }

    public void setSniffUrl(String str) {
        this.sniff_url.add(str);
    }
}
