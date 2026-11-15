package com.hunantv.media.widget;

import androidx.annotation.Nullable;
import com.hunantv.media.player.subtitle.SubtitleConfig;
import com.hunantv.media.player.subtitle.SubtitleSource;

public interface ISubtitle {

    public interface SubtitleCallback {
        void onError(SubtitleSource subtitleSource);

        void onSuccess(SubtitleSource subtitleSource);
    }

    void enableSubtitle(boolean z);

    @Nullable
    SubtitleSource getSubtitleSource();

    void removeSubtitleSource();

    void setSubtitleCallback(SubtitleCallback subtitleCallback);

    void setSubtitleConfig(SubtitleConfig subtitleConfig);

    void setSubtitleSource(SubtitleSource subtitleSource);
}
