package com.mgmi.model;

import java.io.Serializable;
import java.util.List;

public class VlistBean implements com.mgadplus.netlib.json.a, Serializable {
    private List<InnerFeedInfo> list;
    private int pageNo;
    private int totalPage;

    public List<InnerFeedInfo> getList() {
        return this.list;
    }

    public int getPageNo() {
        return this.pageNo;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public void setList(List<InnerFeedInfo> list) {
        this.list = list;
    }

    public void setPageNo(int i) {
        this.pageNo = i;
    }

    public void setTotalPage(int i) {
        this.totalPage = i;
    }
}
