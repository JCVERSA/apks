package androidx.media3.common;

import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import com.google.common.util.concurrent.Futures;
import defpackage.im5;
import java.util.List;
import java.util.Objects;

@UnstableApi
public class ForwardingSimpleBasePlayer extends SimpleBasePlayer {
    private Metadata lastTimedMetadata;
    private LivePositionSuppliers livePositionSuppliers;
    private int pendingDiscontinuityReason;
    private boolean pendingFirstFrameRendered;
    private long pendingPositionDiscontinuityNewPositionMs;
    private int playWhenReadyChangeReason;
    private final Player player;

    public static final class LivePositionSuppliers {
        public final SimpleBasePlayer.LivePositionSupplier bufferedPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier contentBufferedPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier contentPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier currentPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier totalBufferedPositionSupplier;

        public LivePositionSuppliers(final Player player) {
            Objects.requireNonNull(player);
            this.currentPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() {
                @Override
                public final long get() {
                    return player.getCurrentPosition();
                }
            });
            this.bufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() {
                @Override
                public final long get() {
                    return player.getBufferedPosition();
                }
            });
            this.contentPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() {
                @Override
                public final long get() {
                    return player.getContentPosition();
                }
            });
            this.contentBufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() {
                @Override
                public final long get() {
                    return player.getContentBufferedPosition();
                }
            });
            this.totalBufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() {
                @Override
                public final long get() {
                    return player.getTotalBufferedDuration();
                }
            });
        }

        public void disconnect(long j, long j2) {
            this.currentPositionSupplier.disconnect(j);
            this.bufferedPositionSupplier.disconnect(j);
            this.contentPositionSupplier.disconnect(j2);
            this.contentBufferedPositionSupplier.disconnect(j2);
            this.totalBufferedPositionSupplier.disconnect(0L);
        }
    }

    public ForwardingSimpleBasePlayer(final Player player) {
        super(player.getApplicationLooper());
        this.player = player;
        this.lastTimedMetadata = new Metadata(C.TIME_UNSET, new Metadata.Entry[0]);
        this.playWhenReadyChangeReason = 1;
        this.pendingDiscontinuityReason = 5;
        this.livePositionSuppliers = new LivePositionSuppliers(player);
        player.addListener(new Player.Listener() {
            @Override
            public void onEvents(Player player2, Player.Events events) {
                ForwardingSimpleBasePlayer.this.invalidateState();
            }

            @Override
            public void onMetadata(Metadata metadata) {
                ForwardingSimpleBasePlayer.this.lastTimedMetadata = metadata;
            }

            @Override
            public void onPlayWhenReadyChanged(boolean z, int i) {
                ForwardingSimpleBasePlayer.this.playWhenReadyChangeReason = i;
            }

            @Override
            public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
                ForwardingSimpleBasePlayer.this.pendingDiscontinuityReason = i;
                ForwardingSimpleBasePlayer.this.pendingPositionDiscontinuityNewPositionMs = positionInfo2.positionMs;
                ForwardingSimpleBasePlayer.this.livePositionSuppliers.disconnect(positionInfo.positionMs, positionInfo.contentPositionMs);
                ForwardingSimpleBasePlayer.this.livePositionSuppliers = new LivePositionSuppliers(player);
            }

            @Override
            public void onRenderedFirstFrame() {
                ForwardingSimpleBasePlayer.this.pendingFirstFrameRendered = true;
            }
        });
    }

    public final Player getPlayer() {
        return this.player;
    }

    @Override
    public SimpleBasePlayer.State getState() {
        SimpleBasePlayer.State.Builder builder = new SimpleBasePlayer.State.Builder();
        LivePositionSuppliers livePositionSuppliers = this.livePositionSuppliers;
        if (this.player.isCommandAvailable(16)) {
            builder.setAdBufferedPositionMs(livePositionSuppliers.bufferedPositionSupplier);
            builder.setAdPositionMs(livePositionSuppliers.currentPositionSupplier);
        }
        if (this.player.isCommandAvailable(21)) {
            builder.setAudioAttributes(this.player.getAudioAttributes());
        }
        builder.setAvailableCommands(this.player.getAvailableCommands());
        if (this.player.isCommandAvailable(16)) {
            builder.setContentBufferedPositionMs(livePositionSuppliers.contentBufferedPositionSupplier);
            builder.setContentPositionMs(livePositionSuppliers.contentPositionSupplier);
            if (this.player.isCommandAvailable(17)) {
                builder.setCurrentAd(this.player.getCurrentAdGroupIndex(), this.player.getCurrentAdIndexInAdGroup());
            }
        }
        if (this.player.isCommandAvailable(28)) {
            builder.setCurrentCues(this.player.getCurrentCues());
        }
        if (this.player.isCommandAvailable(17)) {
            builder.setCurrentMediaItemIndex(this.player.getCurrentMediaItemIndex());
        }
        builder.setDeviceInfo(this.player.getDeviceInfo());
        if (this.player.isCommandAvailable(23)) {
            builder.setDeviceVolume(this.player.getDeviceVolume());
            builder.setIsDeviceMuted(this.player.isDeviceMuted());
        }
        builder.setIsLoading(this.player.isLoading());
        builder.setMaxSeekToPreviousPositionMs(this.player.getMaxSeekToPreviousPosition());
        if (this.pendingFirstFrameRendered) {
            builder.setNewlyRenderedFirstFrame(true);
            this.pendingFirstFrameRendered = false;
        }
        builder.setPlaybackParameters(this.player.getPlaybackParameters());
        builder.setPlaybackState(this.player.getPlaybackState());
        builder.setPlaybackSuppressionReason(this.player.getPlaybackSuppressionReason());
        builder.setPlayerError(this.player.getPlayerError());
        if (this.player.isCommandAvailable(17)) {
            builder.setPlaylist(this.player.getCurrentTimeline(), this.player.isCommandAvailable(30) ? this.player.getCurrentTracks() : Tracks.EMPTY, this.player.isCommandAvailable(18) ? this.player.getMediaMetadata() : null);
        }
        if (this.player.isCommandAvailable(18)) {
            builder.setPlaylistMetadata(this.player.getPlaylistMetadata());
        }
        builder.setPlayWhenReady(this.player.getPlayWhenReady(), this.playWhenReadyChangeReason);
        long j = this.pendingPositionDiscontinuityNewPositionMs;
        if (j != C.TIME_UNSET) {
            builder.setPositionDiscontinuity(this.pendingDiscontinuityReason, j);
            this.pendingPositionDiscontinuityNewPositionMs = C.TIME_UNSET;
        }
        builder.setRepeatMode(this.player.getRepeatMode());
        builder.setSeekBackIncrementMs(this.player.getSeekBackIncrement());
        builder.setSeekForwardIncrementMs(this.player.getSeekForwardIncrement());
        builder.setShuffleModeEnabled(this.player.getShuffleModeEnabled());
        builder.setSurfaceSize(this.player.getSurfaceSize());
        builder.setTimedMetadata(this.lastTimedMetadata);
        if (this.player.isCommandAvailable(16)) {
            builder.setTotalBufferedDurationMs(livePositionSuppliers.totalBufferedPositionSupplier);
        }
        builder.setTrackSelectionParameters(this.player.getTrackSelectionParameters());
        builder.setVideoSize(this.player.getVideoSize());
        if (this.player.isCommandAvailable(22)) {
            builder.setVolume(this.player.getVolume());
        }
        return builder.build();
    }

    @Override
    public im5 handleAddMediaItems(int i, List<MediaItem> list) {
        if (list.size() == 1) {
            this.player.addMediaItem(i, list.get(0));
        } else {
            this.player.addMediaItems(i, list);
        }
        return Futures.h();
    }

    @Override
    public im5 handleClearVideoOutput(@Nullable Object obj) {
        if (obj instanceof SurfaceView) {
            this.player.clearVideoSurfaceView((SurfaceView) obj);
        } else if (obj instanceof TextureView) {
            this.player.clearVideoTextureView((TextureView) obj);
        } else if (obj instanceof SurfaceHolder) {
            this.player.clearVideoSurfaceHolder((SurfaceHolder) obj);
        } else if (obj instanceof Surface) {
            this.player.clearVideoSurface((Surface) obj);
        } else {
            if (obj != null) {
                throw new IllegalStateException();
            }
            this.player.clearVideoSurface();
        }
        return Futures.h();
    }

    @Override
    public im5 handleDecreaseDeviceVolume(int i) {
        if (this.player.isCommandAvailable(34)) {
            this.player.decreaseDeviceVolume(i);
        } else {
            this.player.decreaseDeviceVolume();
        }
        return Futures.h();
    }

    @Override
    public im5 handleIncreaseDeviceVolume(int i) {
        if (this.player.isCommandAvailable(34)) {
            this.player.increaseDeviceVolume(i);
        } else {
            this.player.increaseDeviceVolume();
        }
        return Futures.h();
    }

    @Override
    public im5 handleMoveMediaItems(int i, int i2, int i3) {
        if (i2 == i + 1) {
            this.player.moveMediaItem(i, i3);
        } else {
            this.player.moveMediaItems(i, i2, i3);
        }
        return Futures.h();
    }

    @Override
    public im5 handlePrepare() {
        this.player.prepare();
        return Futures.h();
    }

    @Override
    public im5 handleRelease() {
        this.player.release();
        return Futures.h();
    }

    @Override
    public im5 handleRemoveMediaItems(int i, int i2) {
        if (i2 == i + 1) {
            this.player.removeMediaItem(i);
        } else {
            this.player.removeMediaItems(i, i2);
        }
        return Futures.h();
    }

    @Override
    public im5 handleReplaceMediaItems(int i, int i2, List<MediaItem> list) {
        if (i2 == i + 1 && list.size() == 1) {
            this.player.replaceMediaItem(i, list.get(0));
        } else {
            this.player.replaceMediaItems(i, i2, list);
        }
        return Futures.h();
    }

    @Override
    public im5 handleSeek(int i, long j, int i2) {
        switch (i2) {
            case 4:
                this.player.seekToDefaultPosition();
                break;
            case 5:
                this.player.seekTo(j);
                break;
            case 6:
                this.player.seekToPreviousMediaItem();
                break;
            case 7:
                this.player.seekToPrevious();
                break;
            case 8:
                this.player.seekToNextMediaItem();
                break;
            case 9:
                this.player.seekToNext();
                break;
            case 10:
                if (i != -1) {
                    this.player.seekTo(i, j);
                }
                break;
            case 11:
                this.player.seekBack();
                break;
            case 12:
                this.player.seekForward();
                break;
            default:
                throw new IllegalStateException();
        }
        return Futures.h();
    }

    @Override
    public im5 handleSetAudioAttributes(AudioAttributes audioAttributes, boolean z) {
        this.player.setAudioAttributes(audioAttributes, z);
        return Futures.h();
    }

    @Override
    public im5 handleSetDeviceMuted(boolean z, int i) {
        if (this.player.isCommandAvailable(34)) {
            this.player.setDeviceMuted(z, i);
        } else {
            this.player.setDeviceMuted(z);
        }
        return Futures.h();
    }

    @Override
    public im5 handleSetDeviceVolume(int i, int i2) {
        if (this.player.isCommandAvailable(33)) {
            this.player.setDeviceVolume(i, i2);
        } else {
            this.player.setDeviceVolume(i);
        }
        return Futures.h();
    }

    @Override
    public im5 handleSetMediaItems(List<MediaItem> list, int i, long j) {
        boolean z = list.size() == 1 && this.player.isCommandAvailable(31);
        if (i == -1) {
            if (z) {
                this.player.setMediaItem(list.get(0));
            } else {
                this.player.setMediaItems(list);
            }
        } else if (z) {
            this.player.setMediaItem(list.get(0), j);
        } else {
            this.player.setMediaItems(list, i, j);
        }
        return Futures.h();
    }

    @Override
    public im5 handleSetPlayWhenReady(boolean z) {
        this.player.setPlayWhenReady(z);
        return Futures.h();
    }

    @Override
    public im5 handleSetPlaybackParameters(PlaybackParameters playbackParameters) {
        this.player.setPlaybackParameters(playbackParameters);
        return Futures.h();
    }

    @Override
    public im5 handleSetPlaylistMetadata(MediaMetadata mediaMetadata) {
        this.player.setPlaylistMetadata(mediaMetadata);
        return Futures.h();
    }

    @Override
    public im5 handleSetRepeatMode(int i) {
        this.player.setRepeatMode(i);
        return Futures.h();
    }

    @Override
    public im5 handleSetShuffleModeEnabled(boolean z) {
        this.player.setShuffleModeEnabled(z);
        return Futures.h();
    }

    @Override
    public im5 handleSetTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        this.player.setTrackSelectionParameters(trackSelectionParameters);
        return Futures.h();
    }

    @Override
    public im5 handleSetVideoOutput(Object obj) {
        if (obj instanceof SurfaceView) {
            this.player.setVideoSurfaceView((SurfaceView) obj);
        } else if (obj instanceof TextureView) {
            this.player.setVideoTextureView((TextureView) obj);
        } else if (obj instanceof SurfaceHolder) {
            this.player.setVideoSurfaceHolder((SurfaceHolder) obj);
        } else {
            if (!(obj instanceof Surface)) {
                throw new IllegalStateException();
            }
            this.player.setVideoSurface((Surface) obj);
        }
        return Futures.h();
    }

    @Override
    public im5 handleSetVolume(float f) {
        this.player.setVolume(f);
        return Futures.h();
    }

    @Override
    public im5 handleStop() {
        this.player.stop();
        return Futures.h();
    }
}
