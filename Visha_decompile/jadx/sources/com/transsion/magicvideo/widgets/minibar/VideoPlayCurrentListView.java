package com.transsion.magicvideo.widgets.minibar;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayInfo;
import com.transsion.magicvideo.player.VideoPlayManager;
import java.util.ArrayList;

public class VideoPlayCurrentListView extends VideoPlayListView {
    public VideoPlayCurrentListView(Context context) {
        super(context);
    }

    @Override
    public void forceExit() {
        super.forceExit();
    }

    @Override
    public void loadMiMediaVideData(MIMediaVideoPlayInfo mIMediaVideoPlayInfo, boolean z) {
        super.loadMiMediaVideData(mIMediaVideoPlayInfo, z);
    }

    @Override
    public boolean onInfo(int i, int i2) {
        return super.onInfo(i, i2);
    }

    @Override
    public void onLoadingOnlineVideo(boolean z, boolean z2) {
        super.onLoadingOnlineVideo(z, z2);
    }

    @Override
    public void onMusicPlayerProgressUpdate(int i, int i2) {
        super.onMusicPlayerProgressUpdate(i, i2);
    }

    @Override
    public void onPlayItemChanged(MediaItem mediaItem) {
        super.onPlayItemChanged(mediaItem);
    }

    @Override
    public void onPlayListLoadFinished(ArrayList arrayList) {
        super.onPlayListLoadFinished(arrayList);
    }

    @Override
    public void onPlayerStateUpdate(int i) {
        super.onPlayerStateUpdate(i);
    }

    @Override
    public void onShowError(int i, int i2) {
        super.onShowError(i, i2);
    }

    @Override
    public void onStartChangedPlayItem(MediaItem mediaItem, boolean z) {
        super.onStartChangedPlayItem(mediaItem, z);
    }

    @Override
    public void onUpdateAll(VideoPlayManager videoPlayManager) {
        super.onUpdateAll(videoPlayManager);
    }

    @Override
    public void onUpdateNotification(int i) {
        super.onUpdateNotification(i);
    }

    @Override
    public void onVideoSizeChanged(int i, int i2) {
        super.onVideoSizeChanged(i, i2);
    }

    @Override
    public void onVolumeChange(int i) {
        super.onVolumeChange(i);
    }

    @Override
    public void seekTo(int i) {
        super.seekTo(i);
    }

    @Override
    public boolean showLast() {
        return false;
    }

    @Override
    public void videoPlayOrPause() {
        super.videoPlayOrPause();
    }

    public VideoPlayCurrentListView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VideoPlayCurrentListView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
