package androidx.media3.transformer;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;

interface OnMediaItemChangedListener {
    void onMediaItemChanged(EditedMediaItem editedMediaItem, long j, @Nullable Format format, boolean z);
}
