package com.transsion.sniffer_load.data;

import com.transsion.dbdata.beans.sniff.SniffVideoInfoBean;
import java.util.Comparator;

public class SniffSizeComparator implements Comparator<SniffVideoInfoBean> {
    @Override
    public int compare(SniffVideoInfoBean sniffVideoInfoBean, SniffVideoInfoBean sniffVideoInfoBean2) {
        if (sniffVideoInfoBean.getVideoList() != null && sniffVideoInfoBean.getVideoList().size() > 0 && sniffVideoInfoBean2.getVideoList() != null && sniffVideoInfoBean2.getVideoList().size() > 0) {
            if (sniffVideoInfoBean.getVideoList().get(0).getSize() > sniffVideoInfoBean2.getVideoList().get(0).getSize()) {
                return -1;
            }
            sniffVideoInfoBean.getVideoList().get(0).getSize();
            sniffVideoInfoBean2.getVideoList().get(0).getSize();
        }
        return 0;
    }
}
