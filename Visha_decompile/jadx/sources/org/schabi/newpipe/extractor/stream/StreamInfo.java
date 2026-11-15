package org.schabi.newpipe.extractor.stream;

import defpackage.ok3;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.MetaInfo;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.extractor.utils.a;

public class StreamInfo extends Info {
    private int ageLimit;
    private List<AudioStream> audioStreams;
    private String category;
    private String dashMpdUrl;
    private Description description;
    private long dislikeCount;
    private long duration;
    private String hlsUrl;
    private String host;
    private Locale language;
    private String licence;
    private long likeCount;
    private List<MetaInfo> metaInfo;
    private List<Frameset> previewFrames;
    private StreamExtractor.Privacy privacy;
    private List<InfoItem> relatedItems;
    private boolean shortFormContent;
    private long startPosition;
    private List<StreamSegment> streamSegments;
    private StreamType streamType;
    private List<Image> subChannelAvatars;
    private String subChannelName;
    private String subChannelUrl;
    private List<SubtitlesStream> subtitles;
    private String supportInfo;
    private List<String> tags;
    private String textualUploadDate;
    private List<Image> thumbnails;
    private DateWrapper uploadDate;
    private List<Image> uploaderAvatars;
    private String uploaderName;
    private long uploaderSubscriberCount;
    private String uploaderUrl;
    private boolean uploaderVerified;
    private List<VideoStream> videoOnlyStreams;
    private List<VideoStream> videoStreams;
    private long viewCount;

    public static class StreamExtractException extends ExtractionException {
        public StreamExtractException(String str) {
            super(str);
        }
    }

    public StreamInfo(int i, String str, String str2, StreamType streamType, String str3, String str4, int i2) {
        super(i, str3, str, str2, str4);
        this.thumbnails = Collections.emptyList();
        this.duration = -1L;
        this.viewCount = -1L;
        this.likeCount = -1L;
        this.dislikeCount = -1L;
        this.uploaderName = "";
        this.uploaderUrl = "";
        this.uploaderAvatars = Collections.emptyList();
        this.uploaderVerified = false;
        this.uploaderSubscriberCount = -1L;
        this.subChannelName = "";
        this.subChannelUrl = "";
        this.subChannelAvatars = Collections.emptyList();
        this.videoStreams = Collections.emptyList();
        this.audioStreams = Collections.emptyList();
        this.videoOnlyStreams = Collections.emptyList();
        this.dashMpdUrl = "";
        this.hlsUrl = "";
        this.relatedItems = Collections.emptyList();
        this.startPosition = 0L;
        this.subtitles = Collections.emptyList();
        this.host = "";
        this.category = "";
        this.licence = "";
        this.supportInfo = "";
        this.language = null;
        this.tags = Collections.emptyList();
        this.streamSegments = Collections.emptyList();
        this.metaInfo = Collections.emptyList();
        this.shortFormContent = false;
        this.previewFrames = Collections.emptyList();
        this.streamType = streamType;
        this.ageLimit = i2;
    }

    private static StreamInfo extractImportantData(StreamExtractor streamExtractor) throws ExtractionException {
        String strP = streamExtractor.p();
        StreamType streamTypeJ = streamExtractor.J();
        String strI = streamExtractor.i();
        String strK = streamExtractor.k();
        int iR = streamExtractor.r();
        if (streamTypeJ == StreamType.NONE || a.m(strP) || a.m(strI) || strK == null || iR == -1) {
            throw new ExtractionException("Some important stream information was not given.");
        }
        return new StreamInfo(streamExtractor.n(), strP, streamExtractor.l(), streamTypeJ, strI, strK, iR);
    }

    private static void extractOptionalData(StreamInfo streamInfo, StreamExtractor streamExtractor) {
        try {
            streamInfo.setThumbnails(streamExtractor.R());
        } catch (Exception e) {
            streamInfo.addError(e);
        }
        try {
            streamInfo.setDuration(streamExtractor.C());
        } catch (Exception e2) {
            streamInfo.addError(e2);
        }
        try {
            streamInfo.setUploaderName(streamExtractor.W());
        } catch (Exception e3) {
            streamInfo.addError(e3);
        }
        try {
            streamInfo.setUploaderUrl(streamExtractor.Y());
        } catch (Exception e4) {
            streamInfo.addError(e4);
        }
        try {
            streamInfo.setUploaderAvatars(streamExtractor.V());
        } catch (Exception e5) {
            streamInfo.addError(e5);
        }
        try {
            streamInfo.setUploaderVerified(streamExtractor.d0());
        } catch (Exception e6) {
            streamInfo.addError(e6);
        }
        try {
            streamInfo.setUploaderSubscriberCount(streamExtractor.X());
        } catch (Exception e7) {
            streamInfo.addError(e7);
        }
        try {
            streamInfo.setSubChannelName(streamExtractor.L());
        } catch (Exception e8) {
            streamInfo.addError(e8);
        }
        try {
            streamInfo.setSubChannelUrl(streamExtractor.M());
        } catch (Exception e9) {
            streamInfo.addError(e9);
        }
        try {
            streamInfo.setSubChannelAvatars(streamExtractor.K());
        } catch (Exception e10) {
            streamInfo.addError(e10);
        }
        try {
            streamInfo.setDescription(streamExtractor.v());
        } catch (Exception e11) {
            streamInfo.addError(e11);
        }
        try {
            streamInfo.setViewCount(streamExtractor.b0());
        } catch (Exception e12) {
            streamInfo.addError(e12);
        }
        try {
            streamInfo.setTextualUploadDate(streamExtractor.Q());
        } catch (Exception e13) {
            streamInfo.addError(e13);
        }
        try {
            streamInfo.setUploadDate(streamExtractor.U());
        } catch (Exception e14) {
            streamInfo.addError(e14);
        }
        try {
            streamInfo.setStartPosition(streamExtractor.S());
        } catch (Exception e15) {
            streamInfo.addError(e15);
        }
        try {
            streamInfo.setLikeCount(streamExtractor.E());
        } catch (Exception e16) {
            streamInfo.addError(e16);
        }
        try {
            streamInfo.setDislikeCount(streamExtractor.w());
        } catch (Exception e17) {
            streamInfo.addError(e17);
        }
        try {
            streamInfo.setSubtitles(streamExtractor.N());
        } catch (Exception e18) {
            streamInfo.addError(e18);
        }
        try {
            streamInfo.setHost(streamExtractor.A());
        } catch (Exception e19) {
            streamInfo.addError(e19);
        }
        try {
            streamInfo.setPrivacy(streamExtractor.G());
        } catch (Exception e20) {
            streamInfo.addError(e20);
        }
        try {
            streamInfo.setCategory(streamExtractor.t());
        } catch (Exception e21) {
            streamInfo.addError(e21);
        }
        try {
            streamInfo.setLicence(streamExtractor.D());
        } catch (Exception e22) {
            streamInfo.addError(e22);
        }
        try {
            streamInfo.setLanguageInfo(streamExtractor.B());
        } catch (Exception e23) {
            streamInfo.addError(e23);
        }
        try {
            streamInfo.setTags(streamExtractor.P());
        } catch (Exception e24) {
            streamInfo.addError(e24);
        }
        try {
            streamInfo.setSupportInfo(streamExtractor.O());
        } catch (Exception e25) {
            streamInfo.addError(e25);
        }
        try {
            streamInfo.setStreamSegments(streamExtractor.I());
        } catch (Exception e26) {
            streamInfo.addError(e26);
        }
        try {
            streamInfo.setMetaInfo(streamExtractor.F());
        } catch (Exception e27) {
            streamInfo.addError(e27);
        }
        try {
            streamInfo.setPreviewFrames(streamExtractor.y());
        } catch (Exception e28) {
            streamInfo.addError(e28);
        }
        try {
            streamInfo.setShortFormContent(streamExtractor.c0());
        } catch (Exception e29) {
            streamInfo.addError(e29);
        }
        streamInfo.setRelatedItems(ok3.b(streamInfo, streamExtractor));
    }

    private static void extractStreams(StreamInfo streamInfo, StreamExtractor streamExtractor) throws ExtractionException {
        try {
            streamInfo.setDashMpdUrl(streamExtractor.u());
        } catch (Exception e) {
            streamInfo.addError(new ExtractionException("Couldn't get DASH manifest", e));
        }
        try {
            streamInfo.setHlsUrl(streamExtractor.z());
        } catch (Exception e2) {
            streamInfo.addError(new ExtractionException("Couldn't get HLS manifest", e2));
        }
        try {
            streamInfo.setAudioStreams(streamExtractor.s());
        } catch (ContentNotSupportedException e3) {
            throw e3;
        } catch (Exception e4) {
            streamInfo.addError(new ExtractionException("Couldn't get audio streams", e4));
        }
        try {
            streamInfo.setVideoStreams(streamExtractor.a0());
        } catch (Exception e5) {
            streamInfo.addError(new ExtractionException("Couldn't get video streams", e5));
        }
        try {
            streamInfo.setVideoOnlyStreams(streamExtractor.Z());
        } catch (Exception e6) {
            streamInfo.addError(new ExtractionException("Couldn't get video only streams", e6));
        }
        if (streamInfo.videoStreams.isEmpty() && streamInfo.audioStreams.isEmpty()) {
            throw new StreamExtractException("Could not get any stream. See error variable to get further details.");
        }
    }

    public static StreamInfo getInfo(String str) throws IOException, ExtractionException {
        return getInfo(org.schabi.newpipe.extractor.a.g(str), str);
    }

    public int getAgeLimit() {
        return this.ageLimit;
    }

    public List<AudioStream> getAudioStreams() {
        return this.audioStreams;
    }

    public String getCategory() {
        return this.category;
    }

    public String getDashMpdUrl() {
        return this.dashMpdUrl;
    }

    public Description getDescription() {
        return this.description;
    }

    public long getDislikeCount() {
        return this.dislikeCount;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getHlsUrl() {
        return this.hlsUrl;
    }

    public String getHost() {
        return this.host;
    }

    public Locale getLanguageInfo() {
        return this.language;
    }

    public String getLicence() {
        return this.licence;
    }

    public long getLikeCount() {
        return this.likeCount;
    }

    public List<MetaInfo> getMetaInfo() {
        return this.metaInfo;
    }

    public List<Frameset> getPreviewFrames() {
        return this.previewFrames;
    }

    public StreamExtractor.Privacy getPrivacy() {
        return this.privacy;
    }

    public List<InfoItem> getRelatedItems() {
        return this.relatedItems;
    }

    @Deprecated
    public List<InfoItem> getRelatedStreams() {
        return getRelatedItems();
    }

    public long getStartPosition() {
        return this.startPosition;
    }

    public List<StreamSegment> getStreamSegments() {
        return this.streamSegments;
    }

    public StreamType getStreamType() {
        return this.streamType;
    }

    public List<Image> getSubChannelAvatars() {
        return this.subChannelAvatars;
    }

    public String getSubChannelName() {
        return this.subChannelName;
    }

    public String getSubChannelUrl() {
        return this.subChannelUrl;
    }

    public List<SubtitlesStream> getSubtitles() {
        return this.subtitles;
    }

    public String getSupportInfo() {
        return this.supportInfo;
    }

    public List<String> getTags() {
        return this.tags;
    }

    public String getTextualUploadDate() {
        return this.textualUploadDate;
    }

    public List<Image> getThumbnails() {
        return this.thumbnails;
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

    public long getUploaderSubscriberCount() {
        return this.uploaderSubscriberCount;
    }

    public String getUploaderUrl() {
        return this.uploaderUrl;
    }

    public List<VideoStream> getVideoOnlyStreams() {
        return this.videoOnlyStreams;
    }

    public List<VideoStream> getVideoStreams() {
        return this.videoStreams;
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

    public void setAgeLimit(int i) {
        this.ageLimit = i;
    }

    public void setAudioStreams(List<AudioStream> list) {
        this.audioStreams = list;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setDashMpdUrl(String str) {
        this.dashMpdUrl = str;
    }

    public void setDescription(Description description) {
        this.description = description;
    }

    public void setDislikeCount(long j) {
        this.dislikeCount = j;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setHlsUrl(String str) {
        this.hlsUrl = str;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setLanguageInfo(Locale locale) {
        this.language = locale;
    }

    public void setLicence(String str) {
        this.licence = str;
    }

    public void setLikeCount(long j) {
        this.likeCount = j;
    }

    public void setMetaInfo(List<MetaInfo> list) {
        this.metaInfo = list;
    }

    public void setPreviewFrames(List<Frameset> list) {
        this.previewFrames = list;
    }

    public void setPrivacy(StreamExtractor.Privacy privacy) {
        this.privacy = privacy;
    }

    public void setRelatedItems(List<InfoItem> list) {
        this.relatedItems = list;
    }

    @Deprecated
    public void setRelatedStreams(List<InfoItem> list) {
        setRelatedItems(list);
    }

    public void setShortFormContent(boolean z) {
        this.shortFormContent = z;
    }

    public void setStartPosition(long j) {
        this.startPosition = j;
    }

    public void setStreamSegments(List<StreamSegment> list) {
        this.streamSegments = list;
    }

    public void setStreamType(StreamType streamType) {
        this.streamType = streamType;
    }

    public void setSubChannelAvatars(List<Image> list) {
        this.subChannelAvatars = list;
    }

    public void setSubChannelName(String str) {
        this.subChannelName = str;
    }

    public void setSubChannelUrl(String str) {
        this.subChannelUrl = str;
    }

    public void setSubtitles(List<SubtitlesStream> list) {
        this.subtitles = list;
    }

    public void setSupportInfo(String str) {
        this.supportInfo = str;
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public void setTextualUploadDate(String str) {
        this.textualUploadDate = str;
    }

    public void setThumbnails(List<Image> list) {
        this.thumbnails = list;
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

    public void setUploaderSubscriberCount(long j) {
        this.uploaderSubscriberCount = j;
    }

    public void setUploaderUrl(String str) {
        this.uploaderUrl = str;
    }

    public void setUploaderVerified(boolean z) {
        this.uploaderVerified = z;
    }

    public void setVideoOnlyStreams(List<VideoStream> list) {
        this.videoOnlyStreams = list;
    }

    public void setVideoStreams(List<VideoStream> list) {
        this.videoStreams = list;
    }

    public void setViewCount(long j) {
        this.viewCount = j;
    }

    public static StreamInfo getInfo(StreamingService streamingService, String str) throws IOException, ExtractionException {
        return getInfo(streamingService.s(str));
    }

    public static StreamInfo getInfo(StreamExtractor streamExtractor) throws IOException, ExtractionException {
        streamExtractor.b();
        try {
            StreamInfo streamInfoExtractImportantData = extractImportantData(streamExtractor);
            extractStreams(streamInfoExtractImportantData, streamExtractor);
            extractOptionalData(streamInfoExtractImportantData, streamExtractor);
            return streamInfoExtractImportantData;
        } catch (ExtractionException e) {
            String strX = streamExtractor.x();
            if (a.m(strX)) {
                throw e;
            }
            throw new ContentNotAvailableException(strX, e);
        }
    }
}
