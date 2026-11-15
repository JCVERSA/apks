package com.transsion.dbdata.beans.appconfig;

import java.io.Serializable;

public class ControllerLimitBean implements Serializable {
    private String highFrameRateTip;
    private String highResolutionTip;
    private String maxHardwareResolution;
    private String maxPlatformResolution;
    private String resolutionTip;

    public String getHighFrameRateTip() {
        return this.highFrameRateTip;
    }

    public String getHighResolutionTip() {
        return this.highResolutionTip;
    }

    public String getMaxHardwareResolution() {
        return this.maxHardwareResolution;
    }

    public String getMaxPlatformResolution() {
        return this.maxPlatformResolution;
    }

    public String getResolutionTip() {
        return this.resolutionTip;
    }

    public void setHighFrameRateTip(String str) {
        this.highFrameRateTip = str;
    }

    public void setHighResolutionTip(String str) {
        this.highResolutionTip = str;
    }

    public void setMaxHardwareResolution(String str) {
        this.maxHardwareResolution = str;
    }

    public void setMaxPlatformResolution(String str) {
        this.maxPlatformResolution = str;
    }

    public void setResolutionTip(String str) {
        this.resolutionTip = str;
    }

    public String toString() {
        if (this.maxHardwareResolution == null || this.maxPlatformResolution == null || this.resolutionTip == null || this.highFrameRateTip == null || this.highResolutionTip == null) {
            return "";
        }
        return "ControllerLimitBean{maxHardwareResolution='" + this.maxHardwareResolution + "', maxPlatformResolution='" + this.maxPlatformResolution + "', resolutionTip='" + this.resolutionTip + "', highFrameRateTip='" + this.highFrameRateTip + "', highResolutionTip='" + this.highResolutionTip + "'}";
    }
}
