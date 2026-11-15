package com.transsion.vishaplayersdk.base.config;

import androidx.annotation.NonNull;
import com.transsion.dbdata.beans.media.PlayVideoData;
import defpackage.r0a;

public class PlayParams extends PlayVideoData {
    private String contentid;
    private int startPosition;
    private String videoid;

    public static final class PlayParamsBuilder {
        private String contentid;
        private int startPosition;
        private String videoid;

        private PlayParamsBuilder() {
        }

        public static PlayParamsBuilder aPlayParams() {
            return new PlayParamsBuilder();
        }

        public PlayParams build() {
            PlayParams playParams = new PlayParams();
            playParams.videoid = this.videoid;
            playParams.startPosition = this.startPosition;
            playParams.contentid = this.contentid;
            return playParams;
        }

        public PlayParamsBuilder withContentid(String str) {
            this.contentid = str;
            return this;
        }

        public PlayParamsBuilder withStartPosition(int i) {
            this.startPosition = i;
            return this;
        }

        public PlayParamsBuilder withVideoid(String str) {
            this.videoid = str;
            return this;
        }
    }

    public String getContentid() {
        return this.contentid;
    }

    public int getStartPosition() {
        return this.startPosition;
    }

    public String getVideoid() {
        return this.videoid;
    }

    public boolean isVaild() {
        return (r0a.g(this.videoid) || r0a.g(this.contentid)) ? false : true;
    }

    @Override
    @NonNull
    public String toString() {
        return "PlayParams{videoid='" + this.videoid + "', contentid='" + this.contentid + "', startPosition=" + this.startPosition + '}';
    }

    private PlayParams() {
    }
}
