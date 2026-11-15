package com.transsion.dbdata.beans.sniff;

import androidx.annotation.NonNull;
import defpackage.fc7;
import java.util.List;

public class SniffVideoInfoArrayBean {
    private int mSniffResultShowType = 1;
    volatile List<SniffVideoInfoBean> multiVideoList;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SniffVideoInfoArrayBean sniffVideoInfoArrayBean = (SniffVideoInfoArrayBean) obj;
        if (this.multiVideoList != null) {
            return this.multiVideoList.equals(sniffVideoInfoArrayBean.multiVideoList);
        }
        return sniffVideoInfoArrayBean.multiVideoList == null;
    }

    public List<SniffVideoInfoBean> getMultiVideoList() {
        return this.multiVideoList;
    }

    public int getSniffResultShowType() {
        return this.mSniffResultShowType;
    }

    public SniffVideoInfoBean getSniffVideoInfo(int i) {
        if (this.multiVideoList == null || i < 0 || i >= this.multiVideoList.size()) {
            return null;
        }
        return this.multiVideoList.get(i);
    }

    public int hashCode() {
        if (this.multiVideoList != null) {
            return this.multiVideoList.hashCode();
        }
        return 0;
    }

    public boolean isNotEmpty() {
        return this.multiVideoList != null && this.multiVideoList.size() > 0;
    }

    public boolean isSingleVideo() {
        return this.multiVideoList != null && this.multiVideoList.size() == 1;
    }

    public void setMultiVideoList(List<SniffVideoInfoBean> list) {
        this.multiVideoList = list;
    }

    public void setSniffResultShowType(int i) {
        this.mSniffResultShowType = i;
    }

    @NonNull
    public String toString() {
        return "ParsedVideoInfoArrayBean{mutilVideoList=" + this.multiVideoList + '}';
    }

    public static boolean isNotEmpty(SniffVideoInfoArrayBean sniffVideoInfoArrayBean) {
        return fc7.c(sniffVideoInfoArrayBean) && sniffVideoInfoArrayBean.isNotEmpty();
    }
}
