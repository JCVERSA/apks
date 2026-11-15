package com.transsion.liblan.interfaces;

import android.net.Uri;

public interface ITranMedia extends ITranLANObject<EventTran> {

    public static class AudioTrack extends Track {
        public final int channels;
        public final int rate;

        public AudioTrack(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3, String str4, int i6, int i7) {
            super(0, str, str2, i, i2, i3, i4, i5, str3, str4);
            this.channels = i6;
            this.rate = i7;
        }
    }

    public interface EventListener extends TranAbstractLANEvent.Listener<EventTran> {
    }

    public static class EventTran extends TranAbstractLANEvent {
        public static final int DURATION_CHANGED = 2;
        public static final int META_CHANGED = 0;
        public static final int PARSED_CHANGED = 3;
        public static final int STATE_CHANGED = 5;
        public static final int SUB_ITEM_ADDED = 1;
        public static final int SUB_ITEM_TREE_ADDED = 6;

        public EventTran(int i) {
            super(i);
        }

        public int getMetaId() {
            return (int) this.arg1;
        }

        public int getParsedStatus() {
            return (int) this.arg1;
        }

        public EventTran(int i, long j) {
            super(i, j);
        }
    }

    public static class MediaType {
        public static final int DIRECTORY = 2;
        public static final int DISC = 3;
        public static final int FILE = 1;
        public static final int PLAYLIST = 5;
        public static final int STREAM = 4;
        public static final int UNKNOWN = 0;
    }

    public static class Meta {
        public static final int ACTORS = 22;
        public static final int ALBUM = 4;
        public static final int ALBUM_ARTIST = 23;
        public static final int ARTIST = 1;
        public static final int ARTWORK_URL = 15;
        public static final int COPYRIGHT = 3;
        public static final int DATE = 8;
        public static final int DESCRIPTION = 6;
        public static final int DIRECTOR = 18;
        public static final int DISC_NUMBER = 24;
        public static final int ENCODED_BY = 14;
        public static final int EPISODE = 20;
        public static final int GENRE = 2;
        public static final int LANGUAGE = 11;
        public static final int MAX = 25;
        public static final int NOW_PLAYING = 12;
        public static final int PUBLISHER = 13;
        public static final int RATING = 7;
        public static final int SEASON = 19;
        public static final int SETTING = 9;
        public static final int SHOW_NAME = 21;
        public static final int TITLE = 0;
        public static final int TRACK_ID = 16;
        public static final int TRACK_NUMBER = 5;
        public static final int TRACK_TOTAL = 17;
        public static final int URL = 10;
    }

    public static class Parse {
        public static final int DO_INTERACT = 8;
        public static final int FETCH_LOCAL = 2;
        public static final int FETCH_NETWORK = 4;
        public static final int PARSE_LOCAL = 0;
        public static final int PARSE_NETWORK = 1;
    }

    public static class ParsedStatus {
        public static final int DONE = 4;
        public static final int FAILED = 2;
        public static final int SKIPPED = 1;
        public static final int TIMEOUT = 3;
    }

    public static class Slave {
        public final int priority;
        public final int type;
        public final String uri;

        public static class Type {
            public static final int AUDIO = 1;
            public static final int SUBTITLE = 0;
        }

        public Slave(int i, int i2, String str) {
            this.type = i;
            this.priority = i2;
            this.uri = str;
        }
    }

    public static class State {
        public static final int ENDED = 6;
        public static final int ERROR = 7;
        public static final int MAX = 8;
        public static final int NOTHING_SPECIAL = 0;
        public static final int OPENING = 1;
        public static final int PAUSED = 4;
        public static final int PLAYING = 3;
        public static final int STOPPED = 5;
    }

    public static class Stats {
        public final int decodedAudio;
        public final int decodedVideo;
        public final float demuxBitrate;
        public final int demuxCorrupted;
        public final int demuxDiscontinuity;
        public final int demuxReadBytes;
        public final int displayedPictures;
        public final float inputBitrate;
        public final int lostAbuffers;
        public final int lostPictures;
        public final int playedAbuffers;
        public final int readBytes;
        public final float sendBitrate;
        public final int sentBytes;
        public final int sentPackets;

        public Stats(int i, float f, int i2, float f2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, float f3) {
            this.readBytes = i;
            this.inputBitrate = f;
            this.demuxReadBytes = i2;
            this.demuxBitrate = f2;
            this.demuxCorrupted = i3;
            this.demuxDiscontinuity = i4;
            this.decodedVideo = i5;
            this.decodedAudio = i6;
            this.displayedPictures = i7;
            this.lostPictures = i8;
            this.playedAbuffers = i9;
            this.lostAbuffers = i10;
            this.sentPackets = i11;
            this.sentBytes = i12;
            this.sendBitrate = f3;
        }
    }

    public static class SubtitleTrack extends Track {
        public final String encoding;

        public SubtitleTrack(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3, String str4, String str5) {
            super(2, str, str2, i, i2, i3, i4, i5, str3, str4);
            this.encoding = str5;
        }
    }

    public static abstract class Track {
        public final int bitrate;
        public final String codec;
        public final String description;
        public final int fourcc;
        public final int id;
        public final String language;
        public final int level;
        public final String originalCodec;
        public final int profile;
        public final int type;

        public static class Type {
            public static final int AUDIO = 0;
            public static final int TEXT = 2;
            public static final int UNKNOWN = -1;
            public static final int VIDEO = 1;
        }

        public Track(int i, String str, String str2, int i2, int i3, int i4, int i5, int i6, String str3, String str4) {
            this.type = i;
            this.codec = str;
            this.originalCodec = str2;
            this.fourcc = i2;
            this.id = i3;
            this.profile = i4;
            this.level = i5;
            this.bitrate = i6;
            this.language = str3;
            this.description = str4;
        }
    }

    public static class UnknownTrack extends Track {
        public UnknownTrack(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3, String str4) {
            super(-1, str, str2, i, i2, i3, i4, i5, str3, str4);
        }
    }

    public static class VideoTrack extends Track {
        public final int frameRateDen;
        public final int frameRateNum;
        public final int height;
        public final int orientation;
        public final int projection;
        public final int sarDen;
        public final int sarNum;
        public final int width;

        public static final class Orientation {
            public static final int BOTTOM_LEFT = 2;
            public static final int BOTTOM_RIGHT = 3;
            public static final int LEFT_BOTTOM = 5;
            public static final int LEFT_TOP = 4;
            public static final int RIGHT_BOTTOM = 7;
            public static final int RIGHT_TOP = 6;
            public static final int TOP_LEFT = 0;
            public static final int TOP_RIGHT = 1;
        }

        public static final class Projection {
            public static final int CUBEMAP_LAYOUT_STANDARD = 256;
            public static final int EQUI_RECTANGULAR = 1;
            public static final int RECTANGULAR = 0;
        }

        public VideoTrack(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3, String str4, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
            super(1, str, str2, i, i2, i3, i4, i5, str3, str4);
            this.height = i6;
            this.width = i7;
            this.sarNum = i8;
            this.sarDen = i9;
            this.frameRateNum = i10;
            this.frameRateDen = i11;
            this.orientation = i12;
            this.projection = i13;
        }
    }

    void addOption(String str);

    void addSlave(Slave slave);

    void clearSlaves();

    long getDuration();

    String getMeta(int i);

    String getMeta(int i, boolean z);

    Slave[] getSlaves();

    int getState();

    Stats getStats();

    Track getTrack(int i);

    int getTrackCount();

    int getType();

    Uri getUri();

    boolean isParsed();

    boolean parse();

    boolean parse(int i);

    boolean parseAsync();

    boolean parseAsync(int i);

    boolean parseAsync(int i, int i2);

    void setEventListener(EventListener eventListener);

    void setHWDecoderEnabled(boolean z, boolean z2);

    void setPlayerDefaultOptions();

    ITranMediaList subItems();
}
