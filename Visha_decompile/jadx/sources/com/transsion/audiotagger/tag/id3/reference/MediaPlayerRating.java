package com.transsion.audiotagger.tag.id3.reference;

public class MediaPlayerRating extends ID3Rating {
    private static ID3Rating rating;

    private MediaPlayerRating() {
    }

    public static ID3Rating getInstance() {
        if (rating == null) {
            rating = new MediaPlayerRating();
        }
        return rating;
    }

    @Override
    public int convertRatingFromFiveStarScale(int i) {
        if (i < 0 || i > 5) {
            throw new IllegalArgumentException("convert Ratings from Five Star Scale accepts values from 0 to 5 not:" + i);
        }
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            return 64;
        }
        if (i == 3) {
            return 128;
        }
        if (i != 4) {
            return i != 5 ? 0 : 255;
        }
        return 196;
    }

    @Override
    public int convertRatingToFiveStarScale(int i) {
        if (i <= 0) {
            return 0;
        }
        if (i <= 1) {
            return 1;
        }
        if (i <= 64) {
            return 2;
        }
        if (i <= 128) {
            return 3;
        }
        return i <= 196 ? 4 : 5;
    }
}
