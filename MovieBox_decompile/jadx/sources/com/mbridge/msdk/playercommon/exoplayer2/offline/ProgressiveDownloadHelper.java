package com.mbridge.msdk.playercommon.exoplayer2.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import java.util.List;

public final class ProgressiveDownloadHelper extends DownloadHelper {

    @Nullable
    private final String customCacheKey;
    private final Uri uri;

    public ProgressiveDownloadHelper(Uri uri) {
        this(uri, null);
    }

    @Override
    public DownloadAction getDownloadAction(@Nullable byte[] bArr, List<TrackKey> list) {
        return new ProgressiveDownloadAction(this.uri, false, bArr, this.customCacheKey);
    }

    @Override
    public int getPeriodCount() {
        return 1;
    }

    @Override
    public DownloadAction getRemoveAction(@Nullable byte[] bArr) {
        return new ProgressiveDownloadAction(this.uri, true, bArr, this.customCacheKey);
    }

    @Override
    public TrackGroupArray getTrackGroups(int i10) {
        return TrackGroupArray.EMPTY;
    }

    @Override
    protected void prepareInternal() {
    }

    public ProgressiveDownloadHelper(Uri uri, @Nullable String str) {
        this.uri = uri;
        this.customCacheKey = str;
    }
}
