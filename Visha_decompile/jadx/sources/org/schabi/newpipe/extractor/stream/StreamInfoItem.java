package org.schabi.newpipe.extractor.stream;

import java.util.Collections;
import java.util.List;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.localization.DateWrapper;

public class StreamInfoItem extends InfoItem {
    private long duration;
    private String shortDescription;
    private boolean shortFormContent;
    private final StreamType streamType;
    private String textualUploadDate;
    private DateWrapper uploadDate;
    private List<Image> uploaderAvatars;
    private String uploaderName;
    private String uploaderUrl;
    private boolean uploaderVerified;
    private long viewCount;

    public StreamInfoItem(int i, String str, String str2, StreamType streamType) {
        super(InfoItem.InfoType.STREAM, i, str, str2);
        this.viewCount = -1L;
        this.duration = -1L;
        this.uploaderUrl = null;
        this.uploaderAvatars = Collections.emptyList();
        this.uploaderVerified = false;
        this.shortFormContent = false;
        this.streamType = streamType;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getShortDescription() {
        return this.shortDescription;
    }

    public StreamType getStreamType() {
        return this.streamType;
    }

    public String getTextualUploadDate() {
        return this.textualUploadDate;
    }

    public DateWrapper getUploadDate() {
        return this.uploadDate;
    }

    public List<Image> getUploaderAvatars() {
        return this.uploaderAvatars;
    }

    public String getUploaderName() {
        return this.uploaderName;
    }

    public String getUploaderUrl() {
        return this.uploaderUrl;
    }

    public long getViewCount() {
        return this.viewCount;
    }

    public boolean isShortFormContent() {
        return this.shortFormContent;
    }

    public boolean isUploaderVerified() {
        return this.uploaderVerified;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setShortDescription(String str) {
        this.shortDescription = str;
    }

    public void setShortFormContent(boolean z) {
        this.shortFormContent = z;
    }

    public void setTextualUploadDate(String str) {
        this.textualUploadDate = str;
    }

    public void setUploadDate(DateWrapper dateWrapper) {
        this.uploadDate = dateWrapper;
    }

    public void setUploaderAvatars(List<Image> list) {
        this.uploaderAvatars = list;
    }

    public void setUploaderName(String str) {
        this.uploaderName = str;
    }

    public void setUploaderUrl(String str) {
        this.uploaderUrl = str;
    }

    public void setUploaderVerified(boolean z) {
        this.uploaderVerified = z;
    }

    public void setViewCount(long j) {
        this.viewCount = j;
    }

    @Override
    public String toString() {
        return "StreamInfoItem{streamType=" + this.streamType + ", uploaderName='" + this.uploaderName + "', textualUploadDate='" + this.textualUploadDate + "', viewCount=" + this.viewCount + ", duration=" + this.duration + ", uploaderUrl='" + this.uploaderUrl + "', infoType=" + getInfoType() + ", serviceId=" + getServiceId() + ", url='" + getUrl() + "', name='" + getName() + "', thumbnails='" + getThumbnails() + "', uploaderVerified='" + isUploaderVerified() + "'}";
    }
}
