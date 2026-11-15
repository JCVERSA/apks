package com.transsion.vishaplayersdk.exo2player;

import androidx.annotation.Nullable;
import androidx.media3.datasource.DataSink;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.File;
import java.util.Map;

public interface ExoMediaSourceInterceptListener {
    DataSink.Factory cacheWriteDataSinkFactory(String str, String str2);

    DataSource.Factory getHttpDataSourceFactory(String str, @Nullable TransferListener transferListener, int i, int i2, Map<String, String> map, boolean z);

    MediaSource getMediaSource(String str, boolean z, boolean z2, boolean z3, File file);
}
