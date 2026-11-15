package com.transsion.audiotagger.tag.id3.reference;

import com.transsion.audiotagger.tag.reference.Tagger;

public abstract class ID3Rating {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$tag$reference$Tagger;

        static {
            int[] iArr = new int[Tagger.values().length];
            $SwitchMap$com$transsion$audiotagger$tag$reference$Tagger = iArr;
            try {
                iArr[Tagger.ITUNES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$reference$Tagger[Tagger.MEDIA_MONKEY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$tag$reference$Tagger[Tagger.MEDIAPLAYER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static ID3Rating getInstance(Tagger tagger) {
        int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$tag$reference$Tagger[tagger.ordinal()];
        if (i == 1) {
            return ITunesRating.getInstance();
        }
        if (i != 2) {
            return i != 3 ? MediaPlayerRating.getInstance() : MediaPlayerRating.getInstance();
        }
        return MediaMonkeyPlayerRating.getInstance();
    }

    public abstract int convertRatingFromFiveStarScale(int i);

    public abstract int convertRatingToFiveStarScale(int i);
}
