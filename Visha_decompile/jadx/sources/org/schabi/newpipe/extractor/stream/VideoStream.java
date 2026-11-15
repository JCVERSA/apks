package org.schabi.newpipe.extractor.stream;

import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;

public final class VideoStream extends Stream {
    public static final String RESOLUTION_UNKNOWN = "";
    private int bitrate;
    private String codec;
    private int fps;
    private int height;
    private int indexEnd;
    private int indexStart;
    private int initEnd;
    private int initStart;

    @Deprecated
    public final boolean isVideoOnly;
    private int itag;
    private ItagItem itagItem;
    private String quality;

    @Deprecated
    public final String resolution;
    private int width;

    public static final class a {
        public String a;
        public String b;
        public boolean c;
        public DeliveryMethod d = DeliveryMethod.PROGRESSIVE_HTTP;
        public MediaFormat e;
        public String f;
        public Boolean g;
        public String h;
        public ItagItem i;

        public VideoStream a() {
            String str = this.a;
            if (str == null) {
                throw new IllegalStateException("The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class.");
            }
            String str2 = this.b;
            if (str2 == null) {
                throw new IllegalStateException("The content of the video stream has been not set or is null. Please specify a non-null one with setContent.");
            }
            DeliveryMethod deliveryMethod = this.d;
            if (deliveryMethod == null) {
                throw new IllegalStateException("The delivery method of the video stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod.");
            }
            Boolean bool = this.g;
            if (bool == null) {
                throw new IllegalStateException("The video stream has been not set as a video-only stream or as a video stream with embedded audio. Please specify this information with setIsVideoOnly.");
            }
            String str3 = this.h;
            if (str3 != null) {
                return new VideoStream(str, str2, this.c, this.e, deliveryMethod, str3, bool.booleanValue(), this.f, this.i);
            }
            throw new IllegalStateException("The resolution of the video stream has been not set. Please specify it with setResolution (use an empty string if you are not able to get it).");
        }

        public a b(String str, boolean z) {
            this.b = str;
            this.c = z;
            return this;
        }

        public a c(DeliveryMethod deliveryMethod) {
            this.d = deliveryMethod;
            return this;
        }

        public a d(String str) {
            this.a = str;
            return this;
        }

        public a e(boolean z) {
            this.g = Boolean.valueOf(z);
            return this;
        }

        public a f(ItagItem itagItem) {
            this.i = itagItem;
            return this;
        }

        public a g(String str) {
            this.f = str;
            return this;
        }

        public a h(MediaFormat mediaFormat) {
            this.e = mediaFormat;
            return this;
        }

        public a i(String str) {
            this.h = str;
            return this;
        }
    }

    @Override
    public boolean equalStats(Stream stream) {
        if (super.equalStats(stream) && (stream instanceof VideoStream)) {
            VideoStream videoStream = (VideoStream) stream;
            if (this.resolution.equals(videoStream.resolution) && this.isVideoOnly == videoStream.isVideoOnly) {
                return true;
            }
        }
        return false;
    }

    public int getBitrate() {
        return this.bitrate;
    }

    public String getCodec() {
        return this.codec;
    }

    public int getFps() {
        return this.fps;
    }

    public int getHeight() {
        return this.height;
    }

    public int getIndexEnd() {
        return this.indexEnd;
    }

    public int getIndexStart() {
        return this.indexStart;
    }

    public int getInitEnd() {
        return this.initEnd;
    }

    public int getInitStart() {
        return this.initStart;
    }

    public int getItag() {
        return this.itag;
    }

    @Override
    public ItagItem getItagItem() {
        return this.itagItem;
    }

    public String getQuality() {
        return this.quality;
    }

    public String getResolution() {
        return this.resolution;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isVideoOnly() {
        return this.isVideoOnly;
    }

    private VideoStream(String str, String str2, boolean z, MediaFormat mediaFormat, DeliveryMethod deliveryMethod, String str3, boolean z2, String str4, ItagItem itagItem) {
        super(str, str2, z, mediaFormat, deliveryMethod, str4);
        this.itag = -1;
        if (itagItem != null) {
            this.itagItem = itagItem;
            this.itag = itagItem.id;
            this.bitrate = itagItem.getBitrate();
            this.initStart = itagItem.getInitStart();
            this.initEnd = itagItem.getInitEnd();
            this.indexStart = itagItem.getIndexStart();
            this.indexEnd = itagItem.getIndexEnd();
            this.codec = itagItem.getCodec();
            this.height = itagItem.getHeight();
            this.width = itagItem.getWidth();
            this.quality = itagItem.getQuality();
            this.fps = itagItem.getFps();
        }
        this.resolution = str3;
        this.isVideoOnly = z2;
    }
}
