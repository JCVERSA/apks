package org.schabi.newpipe.extractor;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

public abstract class InfoItem implements Serializable {
    private final InfoType infoType;
    private final String name;
    private final int serviceId;
    private List<Image> thumbnails = Collections.emptyList();
    private final String url;

    public enum InfoType {
        STREAM,
        PLAYLIST,
        CHANNEL,
        COMMENT
    }

    public InfoItem(InfoType infoType, int i, String str, String str2) {
        this.infoType = infoType;
        this.serviceId = i;
        this.url = str;
        this.name = str2;
    }

    public InfoType getInfoType() {
        return this.infoType;
    }

    public String getName() {
        return this.name;
    }

    public int getServiceId() {
        return this.serviceId;
    }

    public List<Image> getThumbnails() {
        return this.thumbnails;
    }

    public String getUrl() {
        return this.url;
    }

    public void setThumbnails(List<Image> list) {
        this.thumbnails = list;
    }

    public String toString() {
        return getClass().getSimpleName() + "[url=\"" + this.url + "\", name=\"" + this.name + "\"]";
    }
}
