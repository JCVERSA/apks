package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class AiRecommend extends TypeBean {

    @SerializedName("group_id")
    private Integer groupId;

    @SerializedName("n_biz_group_id")
    private String newBizGroupId;

    @SerializedName("recommend_part")
    private Integer recommendPart;

    @SerializedName("request_id")
    private String requestId;

    @SerializedName("video_list")
    private List<MediaBean> videoList;

    public Integer getGroupId() {
        Integer num = this.groupId;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getNewBizGroupId() {
        return this.newBizGroupId;
    }

    public Integer getRecommendPart() {
        return this.recommendPart;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public List<MediaBean> getVideoList() {
        return this.videoList;
    }

    public void setGroupId(Integer num) {
        this.groupId = num;
    }

    public void setRecommendPart(Integer num) {
        this.recommendPart = num;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setVideoList(List<MediaBean> list) {
        this.videoList = list;
    }
}
