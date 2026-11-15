package com.transsion.vishaplayersdk.gsyplayer.base.model;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.transsion.vishaplayersdk.base.config.PlayerInitConfig;
import defpackage.r0a;
import java.io.File;
import java.util.Map;

public class GSYModel {
    boolean bHardwareAccelerated = true;
    boolean isCache;
    boolean looping;
    File mCachePath;
    PlayerInitConfig mPlayerInitConfig;
    Map<String, String> mapHeadData;
    String overrideExtension;
    float speed;
    int startPosition;
    String url;
    ViewGroup videoContainer;

    public GSYModel(String str, Map<String, String> map, boolean z, float f, boolean z2, File file, String str2, int i) {
        this.url = str;
        this.mapHeadData = map;
        this.looping = z;
        this.speed = f;
        this.isCache = z2;
        this.mCachePath = file;
        this.overrideExtension = str2;
        this.startPosition = i;
    }

    public File getCachePath() {
        return this.mCachePath;
    }

    public PlayerInitConfig getInitConfig() {
        return this.mPlayerInitConfig;
    }

    public Map<String, String> getMapHeadData() {
        return this.mapHeadData;
    }

    public String getOverrideExtension() {
        return this.overrideExtension;
    }

    public float getSpeed() {
        return this.speed;
    }

    public int getStartPosition() {
        return this.startPosition;
    }

    public String getUrl() {
        return this.url;
    }

    public ViewGroup getVideoContainer() {
        return this.videoContainer;
    }

    public boolean isCache() {
        return this.isCache;
    }

    public boolean isHardwareAccelerated() {
        return this.bHardwareAccelerated;
    }

    public boolean isLooping() {
        return this.looping;
    }

    public boolean isPlaySourceValid() {
        return !r0a.g(this.url);
    }

    public void setCache(boolean z) {
        this.isCache = z;
    }

    public void setCachePath(File file) {
        this.mCachePath = file;
    }

    public void setHardwareAccelerated(boolean z) {
        this.bHardwareAccelerated = z;
    }

    public void setInitConfig(PlayerInitConfig playerInitConfig) {
        this.mPlayerInitConfig = playerInitConfig;
    }

    public void setLooping(boolean z) {
        this.looping = z;
    }

    public void setMapHeadData(Map<String, String> map) {
        this.mapHeadData = map;
    }

    public void setOverrideExtension(String str) {
        this.overrideExtension = str;
    }

    public void setSpeed(float f) {
        this.speed = f;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVideoContainer(ViewGroup viewGroup) {
        this.videoContainer = viewGroup;
    }

    @NonNull
    public String toString() {
        return "GSYModel{speed=" + this.speed + ", startPosition=" + this.startPosition + ", looping=" + this.looping + ", isCache=" + this.isCache + ", bHardwareAccelerated=" + this.bHardwareAccelerated + ", url='" + this.url + "', overrideExtension='" + this.overrideExtension + "', mCachePath=" + this.mCachePath + ", mapHeadData=" + this.mapHeadData + ", videoContainer=" + this.videoContainer + ", mPlayerInitConfig=" + this.mPlayerInitConfig + '}';
    }
}
