package com.transsion.videodownloader.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class MultiRangeInfo implements Serializable {
    private static final long serialVersionUID = 1234567890123456789L;
    private List<Integer> mIds = new ArrayList();
    private List<Long> mSizes = new ArrayList();
    private List<Long> mStarts = new ArrayList();
    private List<Long> mEnds = new ArrayList();

    public List<Long> getEnds() {
        return this.mEnds;
    }

    public List<Integer> getIds() {
        return this.mIds;
    }

    public List<Long> getSizes() {
        return this.mSizes;
    }

    public List<Long> getStarts() {
        return this.mStarts;
    }

    public void setEnds(List<Long> list) {
        this.mEnds.clear();
        this.mEnds.addAll(list);
    }

    public void setIds(List<Integer> list) {
        this.mIds.clear();
        this.mIds.addAll(list);
    }

    public void setSizes(List<Long> list) {
        this.mSizes.clear();
        this.mSizes.addAll(list);
    }

    public void setStarts(List<Long> list) {
        this.mStarts.clear();
        this.mStarts.addAll(list);
    }
}
