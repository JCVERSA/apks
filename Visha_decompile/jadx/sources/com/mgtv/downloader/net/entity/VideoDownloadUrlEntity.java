package com.mgtv.downloader.net.entity;

import com.mgtv.json.JsonInterface;

public final class VideoDownloadUrlEntity extends JsonEntity {
    public DataEntity data;

    public static class CornerLabelStyleEntity implements JsonInterface {
        public String color;
        public String font;
    }

    public static final class DataEntity implements JsonInterface {
        public String clipId;
        public CornerLabelStyleEntity cornerLabelStyle;
        public String desc;
        public DownloadUrlEntity downloadUrl;
        public String image;
        public int isVip;
        public String name;
        public String plId;
        public String playPriority;
        public String seriesId;
        public int status;
        public int type;
        public User user;
        public String videoId;
        public int videoIndex;
    }

    public static class DownloadUrlEntity implements JsonInterface {
        public int definition;
        public String fileSize;
        public int isVip;
        public String md5;
        public String name;
        public String url;

        public String toString() {
            return "DownloadUrlEntity{definition='" + this.definition + "', isVip='" + this.isVip + "', name='" + this.name + "', fileSize='" + this.fileSize + "', url='" + this.url + "', md5='" + this.md5 + "'}";
        }
    }

    public static class User implements JsonInterface {
        public int isVip;
        public int tstatus;
        public String uuid;

        public String toString() {
            return "User{isVip=" + this.isVip + ", uuid='" + this.uuid + "', tstatus=" + this.tstatus + '}';
        }
    }
}
