package org.schabi.newpipe.extractor;

import java.io.Serializable;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;

public final class Image implements Serializable {
    public static final int HEIGHT_UNKNOWN = -1;
    public static final int WIDTH_UNKNOWN = -1;
    private final ResolutionLevel estimatedResolutionLevel;
    private final int height;
    private final String url;
    private final int width;

    public enum ResolutionLevel {
        HIGH,
        MEDIUM,
        LOW,
        UNKNOWN;

        public static ResolutionLevel fromHeight(int i) {
            if (i <= 0) {
                return UNKNOWN;
            }
            if (i < 175) {
                return LOW;
            }
            return i < 720 ? MEDIUM : HIGH;
        }
    }

    public Image(String str, int i, int i2, ResolutionLevel resolutionLevel) throws NullPointerException {
        this.url = str;
        this.height = i;
        this.width = i2;
        Objects.requireNonNull(resolutionLevel, "estimatedResolutionLevel is null");
        this.estimatedResolutionLevel = resolutionLevel;
    }

    public ResolutionLevel getEstimatedResolutionLevel() {
        return this.estimatedResolutionLevel;
    }

    public int getHeight() {
        return this.height;
    }

    public String getUrl() {
        return this.url;
    }

    public int getWidth() {
        return this.width;
    }

    public String toString() {
        return "Image {url=" + this.url + ", height=" + this.height + ", width=" + this.width + ", estimatedResolutionLevel=" + this.estimatedResolutionLevel + StringSubstitutor.DEFAULT_VAR_END;
    }
}
