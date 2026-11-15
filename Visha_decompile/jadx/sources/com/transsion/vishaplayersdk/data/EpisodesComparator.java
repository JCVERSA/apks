package com.transsion.vishaplayersdk.data;

import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import java.util.Comparator;

public class EpisodesComparator implements Comparator<TranVideoDetail.VideoSerials> {
    @Override
    public int compare(TranVideoDetail.VideoSerials videoSerials, TranVideoDetail.VideoSerials videoSerials2) {
        if (videoSerials.getSerialNo() > videoSerials2.getSerialNo()) {
            return 1;
        }
        return videoSerials.getSerialNo() < videoSerials2.getSerialNo() ? -1 : 0;
    }
}
