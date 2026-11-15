package org.schabi.newpipe.extractor.utils;

import java.io.Serializable;
import java.util.Objects;
import org.apache.commons.text.StringSubstitutor;
import org.schabi.newpipe.extractor.Image;

public final class ImageSuffix implements Serializable {
    private final int height;
    private final Image.ResolutionLevel resolutionLevel;
    private final String suffix;
    private final int width;

    public ImageSuffix(String str, int i, int i2, Image.ResolutionLevel resolutionLevel) throws NullPointerException {
        this.suffix = str;
        this.height = i;
        this.width = i2;
        Objects.requireNonNull(resolutionLevel, "estimatedResolutionLevel is null");
        this.resolutionLevel = resolutionLevel;
    }

    public int getHeight() {
        return this.height;
    }

    public Image.ResolutionLevel getResolutionLevel() {
        return this.resolutionLevel;
    }

    public String getSuffix() {
        return this.suffix;
    }

    public int getWidth() {
        return this.width;
    }

    public String toString() {
        return "ImageSuffix {suffix=" + this.suffix + ", height=" + this.height + ", width=" + this.width + ", resolutionLevel=" + this.resolutionLevel + StringSubstitutor.DEFAULT_VAR_END;
    }
}
