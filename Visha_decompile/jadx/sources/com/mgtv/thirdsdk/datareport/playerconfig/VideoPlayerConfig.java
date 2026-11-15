package com.mgtv.thirdsdk.datareport.playerconfig;

import android.os.Parcel;
import android.os.Parcelable;
import com.hunantv.imgo.entity.JsonInterface;

public class VideoPlayerConfig implements Parcelable, JsonInterface {
    public static final Parcelable.Creator<VideoPlayerConfig> CREATOR = new Parcelable.Creator<VideoPlayerConfig>() {
        @Override
        public VideoPlayerConfig createFromParcel(Parcel parcel) {
            return new VideoPlayerConfig(parcel);
        }

        @Override
        public VideoPlayerConfig[] newArray(int i) {
            return new VideoPlayerConfig[i];
        }
    };
    public static final int HARDWARE = 0;
    public static final int SOFTWARE = 1;
    public static final String SURFACEVIEW = "0";
    public static final String TEXTUREVIEW = "1";
    public static final String TYPE_IMGO = "2";
    public String accurate_seek;
    public String addrinfo_timeout;
    public String addrinfo_type;
    public String buffer_timeout;
    public String datasource_async;
    public String decodetype;
    public String dns_family_type;
    public String http_multiple;
    public String http_persistent;
    public String is_soft;
    public String load_retry_time;
    public String m3u8_gzip;
    public String mp_type;
    public String open_timeout;
    public String player_support;
    public String render_type;
    public String rw_timeout;
    public String ts_not_skip;
    public String weak_net_speed;

    public VideoPlayerConfig() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mp_type);
        parcel.writeString(this.is_soft);
        parcel.writeString(this.render_type);
        parcel.writeString(this.accurate_seek);
        parcel.writeString(this.open_timeout);
        parcel.writeString(this.rw_timeout);
        parcel.writeString(this.addrinfo_type);
        parcel.writeString(this.addrinfo_timeout);
        parcel.writeString(this.buffer_timeout);
        parcel.writeString(this.ts_not_skip);
        parcel.writeString(this.load_retry_time);
        parcel.writeString(this.datasource_async);
        parcel.writeString(this.weak_net_speed);
        parcel.writeString(this.decodetype);
        parcel.writeString(this.dns_family_type);
        parcel.writeString(this.http_persistent);
        parcel.writeString(this.http_multiple);
        parcel.writeString(this.m3u8_gzip);
    }

    public VideoPlayerConfig(Parcel parcel) {
        this.mp_type = parcel.readString();
        this.is_soft = parcel.readString();
        this.render_type = parcel.readString();
        this.accurate_seek = parcel.readString();
        this.open_timeout = parcel.readString();
        this.rw_timeout = parcel.readString();
        this.addrinfo_type = parcel.readString();
        this.addrinfo_timeout = parcel.readString();
        this.buffer_timeout = parcel.readString();
        this.ts_not_skip = parcel.readString();
        this.load_retry_time = parcel.readString();
        this.datasource_async = parcel.readString();
        this.weak_net_speed = parcel.readString();
        this.decodetype = parcel.readString();
        this.dns_family_type = parcel.readString();
        this.http_persistent = parcel.readString();
        this.http_multiple = parcel.readString();
        this.m3u8_gzip = parcel.readString();
    }
}
