package com.transsion.dbdata.beans.appconfig;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;

public class YoutubeConfigBean {

    @SerializedName("forbid_listen_video")
    public Boolean forbidListenVideo;

    @SerializedName("forbid_play_video")
    public Boolean forbidPlayVideo;

    @NonNull
    public String toString() {
        return "YoutubeConfigBean{forbidListenVideo=" + this.forbidListenVideo + ", forbidPlayVideo=" + this.forbidPlayVideo + '}';
    }
}
