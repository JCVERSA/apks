package com.mgtv.ssp.play.playsdk;

import java.util.List;
import java.util.Map;

public class PlayerVideoInfo {
    public List<Integer> allDefinitions;
    public int curDefinition;
    public List<VDefinitionInfo> dInfoList;
    public boolean isOffLine;
    public boolean isPreview;
    public Map<Integer, Long> mDefinitionSizeMap;
    public List<VideoDefinitions> mVDefinitionsList;
    public int previewDuration;
    public int videoDuration;
    public int videoHeight;
    public int videoWidth;

    public PlayerVideoInfo() {
    }

    public List<Integer> getAllDefinitions() {
        return this.allDefinitions;
    }

    public int getCurDefinition() {
        return this.curDefinition;
    }

    public int getPreviewDuration() {
        return this.previewDuration;
    }

    public List<VideoDefinitions> getVideoDefinitionsList() {
        return this.mVDefinitionsList;
    }

    public int getVideoDuration() {
        return this.videoDuration;
    }

    public int getVideoHeight() {
        return this.videoHeight;
    }

    public int getVideoWidth() {
        return this.videoWidth;
    }

    public boolean isOffLine() {
        return this.isOffLine;
    }

    public boolean isPreview() {
        return this.isPreview;
    }

    public void setAllDefinitions(List<Integer> list) {
        this.allDefinitions = list;
    }

    public void setCurDefinition(int i) {
        this.curDefinition = i;
    }

    public void setOffLine(boolean z) {
        this.isOffLine = z;
    }

    public void setPreview(boolean z) {
        this.isPreview = z;
    }

    public void setPreviewDuration(int i) {
        this.previewDuration = i;
    }

    public void setVideoDuration(int i) {
        this.videoDuration = i;
    }

    public void setVideoHeight(int i) {
        this.videoHeight = i;
    }

    public void setVideoWidth(int i) {
        this.videoWidth = i;
    }

    public PlayerVideoInfo(int i, int i2, int i3) {
        this.videoDuration = i;
        this.videoHeight = i2;
        this.videoWidth = i3;
    }
}
