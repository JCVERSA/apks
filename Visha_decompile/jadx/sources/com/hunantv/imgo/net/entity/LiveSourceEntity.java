package com.hunantv.imgo.net.entity;

import com.mgtv.json.JsonInterface;
import java.util.List;

public class LiveSourceEntity extends JsonEntity {
    public String activityId;
    public String activityName;
    public int activityType;
    public String adParams;
    public String beginTime;
    public String cameraId;
    public String cameraName;
    public String chatFlag;
    public String chatKey;
    public String default_quality;
    public String default_quality_force;
    public String endTime;
    public String exp_v;
    public int isp2p;
    public String playableErrCode;
    public int preview;
    public int preview_range;
    public String servertime;
    public List<LiveItemSourceEntity> sources;
    public String streamBeginTime;
    public String subTitle;
    public String summary;
    public LiveCheckOutEntity tips;
    public String type;
    public User user;
    public int vip;

    public static class User implements JsonInterface {
        public int isVip;
        public int tstatus;
        public String uuid;

        public String toString() {
            return "User{isVip=" + this.isVip + '}';
        }
    }
}
