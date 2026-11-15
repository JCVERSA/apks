package com.transsion.dbdata.beans.subtitle;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public interface ISubtitleState {

    @Retention(RetentionPolicy.SOURCE)
    public @interface SubtitleDownState {
        public static final int DOWN_LONGING = 1;
        public static final int DOWN_SUCCESS = 2;
        public static final int NO_DOWN = 0;
    }

    int getSubtitleState();
}
