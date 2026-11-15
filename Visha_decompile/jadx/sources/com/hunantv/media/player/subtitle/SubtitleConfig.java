package com.hunantv.media.player.subtitle;

public class SubtitleConfig {
    public int textColor = -1;
    public int backgroundColor = -1;
    public float textSizeRatio = -1.0f;
    public float paddingBottomRatio = -1.0f;

    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    public float getPaddingBottomRatio() {
        return this.paddingBottomRatio;
    }

    public int getTextColor() {
        return this.textColor;
    }

    public float getTextSizeRatio() {
        return this.textSizeRatio;
    }

    public void reset() {
        this.textColor = -1;
        this.backgroundColor = -1;
        this.textSizeRatio = -1.0f;
        this.paddingBottomRatio = -1.0f;
    }

    public SubtitleConfig setBackgroundColor(int i) {
        this.backgroundColor = i;
        return this;
    }

    public SubtitleConfig setPaddingBottomRatio(float f) {
        this.paddingBottomRatio = f;
        return this;
    }

    public SubtitleConfig setTextColor(int i) {
        this.textColor = i;
        return this;
    }

    public SubtitleConfig setTextSizeRatio(float f) {
        this.textSizeRatio = f;
        return this;
    }

    public String toString() {
        return "SubtitleConfig{textColor=" + this.textColor + ",backgroundColor=" + this.backgroundColor + ", textSizeRatio=" + this.textSizeRatio + ", paddingBottomRatio=" + this.paddingBottomRatio + '}';
    }
}
