package com.hunantv.imgo.net.entity;

import com.mgtv.json.JsonInterface;
import java.util.List;

public class PlayerAuthDataEntity implements JsonInterface {
    public String adParams;
    public AuthInfo auth_info;
    public String clipId;
    public int default_quality;
    public int default_quality_force;
    public AuthButtons freeTryTips;
    public String fstlvlId;
    public int hdcp;
    public List<AuthButtons> middle;
    public String plId;
    public String playableErrCode;
    public List<PointEntity> point;
    public int previewTime;
    public int qualityEnhanceFilter;
    public String seriesId;
    public List<PlayerAuthRouterEntity> shadowSources;
    public int time;
    public User user;
    public List<String> videoDomains;
    public String videoId;
    public String videoName;
    public List<PlayerAuthRouterEntity> videoSources;

    public static class AuthButtons implements JsonInterface {
        public String desc;
        public String info;
        public int tag;
        public String title;
        public String title_tip;

        public String toString() {
            return "AuthButtons{tag=" + this.tag + ", title_tip='" + this.title_tip + "', title='" + this.title + "', desc='" + this.desc + "', info='" + this.info + "'}";
        }
    }

    public static class PointEntity implements JsonInterface {
        public static final int TYPE_POINT_END = 2;
        public static final int TYPE_POINT_START = 1;
        public int pointStart;
        public int pointType;

        public String toString() {
            return "PointEntity{pointStart=" + this.pointStart + ", pointType=" + this.pointType + '}';
        }
    }

    public static class User implements JsonInterface {
        public int isVip;
        public String pstatus;
        public int tstatus;
        public String uuid;

        public String toString() {
            return "User{isVip=" + this.isVip + '}';
        }
    }

    public String toString() {
        return "PlayerAuthDataEntity{user=" + this.user + ", time=" + this.time + ", videoDomains=" + this.videoDomains + ", fstlvlId='" + this.fstlvlId + "', videoId='" + this.videoId + "', videoName='" + this.videoName + "', clipId='" + this.clipId + "', seriesId='" + this.seriesId + "', shadowSources=" + this.shadowSources + ", videoSources=" + this.videoSources + ", point=" + this.point + '}';
    }
}
