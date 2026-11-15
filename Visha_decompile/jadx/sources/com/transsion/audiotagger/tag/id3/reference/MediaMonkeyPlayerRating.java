package com.transsion.audiotagger.tag.id3.reference;

public class MediaMonkeyPlayerRating extends ID3Rating {
    private static ID3Rating rating;

    private MediaMonkeyPlayerRating() {
    }

    public static ID3Rating getInstance() {
        if (rating == null) {
            rating = new MediaMonkeyPlayerRating();
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
        if (i > 1) {
            if (i <= 8) {
                return 0;
            }
            if (i > 18 && i > 28 && i > 28 && i > 28 && i > 28) {
                if (i > 29) {
                    if (i > 39 && i > 49) {
                        if (i > 113) {
                            if (i <= 167) {
                                return 3;
                            }
                            return i <= 218 ? 4 : 5;
                        }
                    }
                }
                return 2;
            }
        }
        return 1;
    }
}
