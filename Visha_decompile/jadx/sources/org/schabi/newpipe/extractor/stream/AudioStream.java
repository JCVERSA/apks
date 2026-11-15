package org.schabi.newpipe.extractor.stream;

import java.util.Locale;
import java.util.Objects;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;

public final class AudioStream extends Stream {
    public static final int UNKNOWN_BITRATE = -1;
    private final Locale audioLocale;
    private final String audioTrackId;
    private final String audioTrackName;
    private final AudioTrackType audioTrackType;
    private final int averageBitrate;
    private int bitrate;
    private String codec;
    private int indexEnd;
    private int indexStart;
    private int initEnd;
    private int initStart;
    private int itag;
    private ItagItem itagItem;
    private String quality;

    public static final class a {
        public String a;
        public String b;
        public boolean c;
        public MediaFormat e;
        public String f;
        public String h;
        public String i;
        public Locale j;
        public AudioTrackType k;
        public ItagItem l;
        public DeliveryMethod d = DeliveryMethod.PROGRESSIVE_HTTP;
        public int g = -1;

        public AudioStream a() {
            String str = this.a;
            if (str == null) {
                throw new IllegalStateException("The identifier of the audio stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class.");
            }
            String str2 = this.b;
            if (str2 == null) {
                throw new IllegalStateException("The content of the audio stream has been not set or is null. Please specify a non-null one with setContent.");
            }
            DeliveryMethod deliveryMethod = this.d;
            if (deliveryMethod != null) {
                return new AudioStream(str, str2, this.c, this.e, deliveryMethod, this.g, this.f, this.h, this.i, this.j, this.k, this.l);
            }
            throw new IllegalStateException("The delivery method of the audio stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod.");
        }

        public a b(Locale locale) {
            this.j = locale;
            return this;
        }

        public a c(String str) {
            this.h = str;
            return this;
        }

        public a d(String str) {
            this.i = str;
            return this;
        }

        public a e(AudioTrackType audioTrackType) {
            this.k = audioTrackType;
            return this;
        }

        public a f(int i) {
            this.g = i;
            return this;
        }

        public a g(String str, boolean z) {
            this.b = str;
            this.c = z;
            return this;
        }

        public a h(DeliveryMethod deliveryMethod) {
            this.d = deliveryMethod;
            return this;
        }

        public a i(String str) {
            this.a = str;
            return this;
        }

        public a j(ItagItem itagItem) {
            this.l = itagItem;
            return this;
        }

        public a k(String str) {
            this.f = str;
            return this;
        }

        public a l(MediaFormat mediaFormat) {
            this.e = mediaFormat;
            return this;
        }
    }

    @Override
    public boolean equalStats(Stream stream) {
        if (super.equalStats(stream) && (stream instanceof AudioStream)) {
            AudioStream audioStream = (AudioStream) stream;
            if (this.averageBitrate == audioStream.averageBitrate && Objects.equals(this.audioTrackId, audioStream.audioTrackId) && this.audioTrackType == audioStream.audioTrackType && Objects.equals(this.audioLocale, audioStream.audioLocale)) {
                return true;
            }
        }
        return false;
    }

    public Locale getAudioLocale() {
        return this.audioLocale;
    }

    public String getAudioTrackId() {
        return this.audioTrackId;
    }

    public String getAudioTrackName() {
        return this.audioTrackName;
    }

    public AudioTrackType getAudioTrackType() {
        return this.audioTrackType;
    }

    public int getAverageBitrate() {
        return this.averageBitrate;
    }

    public int getBitrate() {
        return this.bitrate;
    }

    public String getCodec() {
        return this.codec;
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

    private AudioStream(String str, String str2, boolean z, MediaFormat mediaFormat, DeliveryMethod deliveryMethod, int i, String str3, String str4, String str5, Locale locale, AudioTrackType audioTrackType, ItagItem itagItem) {
        super(str, str2, z, mediaFormat, deliveryMethod, str3);
        this.itag = -1;
        if (itagItem != null) {
            this.itagItem = itagItem;
            this.itag = itagItem.id;
            this.quality = itagItem.getQuality();
            this.bitrate = itagItem.getBitrate();
            this.initStart = itagItem.getInitStart();
            this.initEnd = itagItem.getInitEnd();
            this.indexStart = itagItem.getIndexStart();
            this.indexEnd = itagItem.getIndexEnd();
            this.codec = itagItem.getCodec();
        }
        this.averageBitrate = i;
        this.audioTrackId = str4;
        this.audioTrackName = str5;
        this.audioLocale = locale;
        this.audioTrackType = audioTrackType;
    }
}
