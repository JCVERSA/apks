package com.transsion.widgets.ratingbar;

public enum RatingStatus {
    DISABLE(0),
    ENABLE(1);

    int mStatus;

    RatingStatus(int i) {
        this.mStatus = i;
    }

    public static RatingStatus getStatus(int i) {
        RatingStatus ratingStatus = DISABLE;
        return i == ratingStatus.mStatus ? ratingStatus : ENABLE;
    }
}
