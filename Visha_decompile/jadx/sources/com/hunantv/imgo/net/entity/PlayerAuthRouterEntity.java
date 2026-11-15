package com.hunantv.imgo.net.entity;

public class PlayerAuthRouterEntity extends JsonEntity {
    public static final int DEFINITION_FLOW = 0;
    public static final int DEFINITION_HIGH = 2;
    public static final int DEFINITION_NORMAL = 1;
    public static final int DEFINITION_SUPER = 3;
    public static final int INT_FALSE = 0;
    public static final int INT_TRUE = 1;
    public int definition;
    public PlayerRealUrlEntity disp;
    public String fileSize;
    public int fileSourceType;
    public String fileStartTime;
    public String filebitrate;
    public String framerate;
    public String m3u8;
    public String name;
    public int needPay;
    public String scale;
    public String type;
    public String url;
    public String videoHeight;
    public String videoWidth;
    public String videoformat;

    public String toString() {
        return "PlayerAuthRouterEntity{definition=" + this.definition + ", needPay=" + this.needPay + ", url=" + this.url + ", disp=" + this.disp + ", m3u8=" + this.m3u8 + ", fileSize=" + this.fileSize + '}';
    }
}
