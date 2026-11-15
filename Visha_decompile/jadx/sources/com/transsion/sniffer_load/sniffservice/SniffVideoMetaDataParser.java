package com.transsion.sniffer_load.sniffservice;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import com.blankj.utilcode.util.LogUtils;
import defpackage.r0a;
import java.io.IOException;

public class SniffVideoMetaDataParser {
    public static final String TAG = "visha_SniffVideoParser";
    private boolean bHasAudio;
    private boolean bHasVideo;
    private boolean bParsed;
    private int height;
    private String mimeType;
    private int width;

    public enum ENUM_VIDEO_RESOLUTION {
        VIDEO_RESOLUTION_1080P("1080P"),
        VIDEO_RESOLUTION_720P("720P"),
        VIDEO_RESOLUTION_480P("480P"),
        VIDEO_RESOLUTION_360P("360P"),
        VIDEO_RESOLUTION_SD("HD");

        public String value;

        ENUM_VIDEO_RESOLUTION(String str) {
            this.value = str;
        }
    }

    public static String getVideoResolution(int i) {
        String str = ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_SD.value;
        if (i >= 1080) {
            return ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_1080P.value;
        }
        if (i >= 720) {
            return ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_720P.value;
        }
        if (i >= 480) {
            return ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_480P.value;
        }
        return i >= 360 ? ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_360P.value : str;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean hasAudioTrack() {
        if (this.bParsed) {
            return this.bHasAudio;
        }
        LogUtils.m(TAG, "must parse video first!");
        return false;
    }

    public boolean hasVideoTrack() {
        if (this.bParsed) {
            return this.bHasVideo;
        }
        LogUtils.m(TAG, "must parse video first!");
        return false;
    }

    public boolean parseSync(String str) {
        if (r0a.g(str)) {
            return false;
        }
        try {
            MediaExtractor mediaExtractor = new MediaExtractor();
            mediaExtractor.setDataSource(str);
            int trackCount = mediaExtractor.getTrackCount();
            for (int i = 0; i < trackCount; i++) {
                MediaFormat trackFormat = mediaExtractor.getTrackFormat(i);
                String string = trackFormat.getString("mime");
                this.mimeType = string;
                if (!r0a.i(string)) {
                    if (this.mimeType.contains("video/")) {
                        this.height = trackFormat.getInteger("height");
                        this.width = trackFormat.getInteger("width");
                        this.bHasVideo = true;
                    } else if (this.mimeType.contains("audio/")) {
                        this.bHasAudio = true;
                    }
                }
            }
            mediaExtractor.release();
            this.bParsed = true;
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public String getVideoResolution() {
        String str = ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_SD.value;
        if (!this.bParsed) {
            LogUtils.m(TAG, "must parse video first!");
            return str;
        }
        int i = this.height;
        if (i >= 1080) {
            return ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_1080P.value;
        }
        if (i >= 720) {
            return ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_720P.value;
        }
        return i >= 480 ? ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_480P.value : str;
    }
}
