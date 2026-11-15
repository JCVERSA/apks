package com.transsion.onlinevideo.mangotv.shorts;

import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import java.io.Serializable;

public class ShortVideoDetail implements Serializable {
    private int playPosition = 0;

    @SerializedName("video_info")
    private TranVideoDetail.VideoInfoBean videoInfo;

    @SerializedName("video_serial")
    private TranVideoDetail.VideoSerials videoSerial;

    public static ShortVideoDetail fromTranVideoDetail(TranVideoDetail tranVideoDetail) {
        ShortVideoDetail shortVideoDetail = new ShortVideoDetail();
        TranVideoDetail.VideoInfoBean videoInfo = tranVideoDetail.getVideoInfo();
        for (TranVideoDetail.VideoSerials videoSerials : tranVideoDetail.getVideoSerials()) {
            if (videoSerials.getSerialId() != 0 && videoSerials.getSerialId() == videoInfo.getSerialId()) {
                shortVideoDetail.setVideoSerial(videoSerials);
                break;
            }
        }
        if (shortVideoDetail.getVideoSerial() == null) {
            for (TranVideoDetail.VideoSerials videoSerials2 : tranVideoDetail.getVideoSerialsNotIntact()) {
                if (videoSerials2.getSerialId() != 0 && videoSerials2.getSerialId() == videoInfo.getSerialId()) {
                    shortVideoDetail.setVideoSerial(videoSerials2);
                    break;
                }
            }
        }
        shortVideoDetail.setVideoInfo(videoInfo);
        return shortVideoDetail;
    }

    public int getPlayPosition() {
        return this.playPosition;
    }

    public TranVideoDetail.VideoInfoBean getVideoInfo() {
        return this.videoInfo;
    }

    public TranVideoDetail.VideoSerials getVideoSerial() {
        return this.videoSerial;
    }

    public void setPlayPosition(int i) {
        this.playPosition = i;
    }

    public void setVideoInfo(TranVideoDetail.VideoInfoBean videoInfoBean) {
        this.videoInfo = videoInfoBean;
    }

    public void setVideoSerial(TranVideoDetail.VideoSerials videoSerials) {
        this.videoSerial = videoSerials;
    }
}
