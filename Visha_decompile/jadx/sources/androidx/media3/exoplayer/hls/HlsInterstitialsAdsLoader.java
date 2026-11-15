package androidx.media3.exoplayer.hls;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ads.AdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

@UnstableApi
public final class HlsInterstitialsAdsLoader implements AdsLoader {
    private static final String TAG = "HlsInterstitiaAdsLoader";
    private boolean isReleased;

    @Nullable
    private Player player;
    private final PlayerListener playerListener = new PlayerListener();
    private final Map<Object, AdsLoader.EventListener> activeEventListeners = new HashMap();
    private final Map<Object, AdPlaybackState> activeAdPlaybackStates = new HashMap();
    private final List<Listener> listeners = new ArrayList();
    private final Set<Object> unsupportedAdsIds = new HashSet();

    public static final class AdsMediaSourceFactory implements MediaSource.Factory {
        private final AdViewProvider adViewProvider;
        private final HlsInterstitialsAdsLoader adsLoader;
        private final MediaSource.Factory mediaSourceFactory;

        public AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, AdViewProvider adViewProvider, Context context) {
            this(hlsInterstitialsAdsLoader, context, null, adViewProvider);
        }

        @Override
        public MediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.localConfiguration);
            MediaSource mediaSourceCreateMediaSource = this.mediaSourceFactory.createMediaSource(mediaItem);
            MediaItem.AdsConfiguration adsConfiguration = mediaItem.localConfiguration.adsConfiguration;
            if (adsConfiguration == null) {
                return mediaSourceCreateMediaSource;
            }
            if (adsConfiguration.adsId instanceof String) {
                return new AdsMediaSource(mediaSourceCreateMediaSource, new DataSpec(mediaItem.localConfiguration.adsConfiguration.adTagUri), Assertions.checkNotNull(mediaItem.localConfiguration.adsConfiguration.adsId), this.mediaSourceFactory, this.adsLoader, this.adViewProvider, false);
            }
            throw new IllegalArgumentException("Please use an AdsConfiguration with an adsId of type String when using HlsInterstitialsAdsLoader");
        }

        @Override
        public int[] getSupportedTypes() {
            return new int[]{2};
        }

        public AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, AdViewProvider adViewProvider, MediaSource.Factory factory) {
            this(hlsInterstitialsAdsLoader, null, factory, adViewProvider);
        }

        @Override
        public AdsMediaSourceFactory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.mediaSourceFactory.setDrmSessionManagerProvider(drmSessionManagerProvider);
            return this;
        }

        @Override
        public AdsMediaSourceFactory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.mediaSourceFactory.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            return this;
        }

        private AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, @Nullable Context context, @Nullable MediaSource.Factory factory, AdViewProvider adViewProvider) {
            boolean z = true;
            Assertions.checkArgument((context == null && factory == null) ? false : true);
            this.adsLoader = hlsInterstitialsAdsLoader;
            factory = factory == null ? new HlsMediaSource.Factory(new DefaultDataSource.Factory((Context) Assertions.checkNotNull(context))) : factory;
            this.mediaSourceFactory = factory;
            this.adViewProvider = adViewProvider;
            for (int i : factory.getSupportedTypes()) {
                if (i == 2) {
                    Assertions.checkState(z);
                }
            }
            z = false;
            Assertions.checkState(z);
        }
    }

    public interface Listener {
        default void onAdCompleted(MediaItem mediaItem, Object obj, int i, int i2) {
        }

        default void onContentTimelineChanged(MediaItem mediaItem, Object obj, Timeline timeline) {
        }

        default void onMetadata(MediaItem mediaItem, Object obj, int i, int i2, Metadata metadata) {
        }

        default void onPrepareCompleted(MediaItem mediaItem, Object obj, int i, int i2) {
        }

        default void onPrepareError(MediaItem mediaItem, Object obj, int i, int i2, IOException iOException) {
        }

        default void onStart(MediaItem mediaItem, Object obj, AdViewProvider adViewProvider) {
        }

        default void onStop(MediaItem mediaItem, Object obj, AdPlaybackState adPlaybackState) {
        }
    }

    public class PlayerListener implements Player.Listener {
        private final Timeline.Period period;

        private PlayerListener() {
            this.period = new Timeline.Period();
        }

        private void markAdAsPlayedAndNotifyListeners(final MediaItem mediaItem, final Object obj, final int i, final int i2) {
            AdPlaybackState adPlaybackState = (AdPlaybackState) HlsInterstitialsAdsLoader.this.activeAdPlaybackStates.get(obj);
            if (adPlaybackState != null) {
                HlsInterstitialsAdsLoader.this.putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackState.withPlayedAd(i, i2));
                HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        ((HlsInterstitialsAdsLoader.Listener) obj2).onAdCompleted(mediaItem, obj, i, i2);
                    }
                });
            }
        }

        @Override
        public void onMetadata(final Metadata metadata) {
            Player player = HlsInterstitialsAdsLoader.this.player;
            if (player == null || !player.isPlayingAd()) {
                return;
            }
            player.getCurrentTimeline().getPeriod(player.getCurrentPeriodIndex(), this.period);
            final Object obj = this.period.adPlaybackState.adsId;
            if (obj == null || !HlsInterstitialsAdsLoader.this.activeAdPlaybackStates.containsKey(obj)) {
                return;
            }
            final MediaItem mediaItem = (MediaItem) Assertions.checkNotNull(player.getCurrentMediaItem());
            final int currentAdGroupIndex = player.getCurrentAdGroupIndex();
            final int currentAdIndexInAdGroup = player.getCurrentAdIndexInAdGroup();
            HlsInterstitialsAdsLoader.this.notifyListeners(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    ((HlsInterstitialsAdsLoader.Listener) obj2).onMetadata(mediaItem, obj, currentAdGroupIndex, currentAdIndexInAdGroup, metadata);
                }
            });
        }

        @Override
        public void onPlaybackStateChanged(int i) {
            Player player = HlsInterstitialsAdsLoader.this.player;
            if (i == 4 && player != null && player.isPlayingAd()) {
                player.getCurrentTimeline().getPeriod(player.getCurrentPeriodIndex(), this.period);
                Object obj = this.period.adPlaybackState.adsId;
                if (obj == null || !HlsInterstitialsAdsLoader.this.activeAdPlaybackStates.containsKey(obj)) {
                    return;
                }
                markAdAsPlayedAndNotifyListeners((MediaItem) Assertions.checkNotNull(player.getCurrentMediaItem()), obj, player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup());
            }
        }

        @Override
        public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
            if (i != 0 || HlsInterstitialsAdsLoader.this.player == null || positionInfo.mediaItem == null || positionInfo.adGroupIndex == -1) {
                return;
            }
            HlsInterstitialsAdsLoader.this.player.getCurrentTimeline().getPeriod(positionInfo.periodIndex, this.period);
            Object obj = this.period.adPlaybackState.adsId;
            if (obj == null || !HlsInterstitialsAdsLoader.this.activeAdPlaybackStates.containsKey(obj)) {
                return;
            }
            markAdAsPlayedAndNotifyListeners(positionInfo.mediaItem, obj, positionInfo.adGroupIndex, positionInfo.adIndexInAdGroup);
        }
    }

    private static long getInterstitialDurationUs(HlsMediaPlaylist.Interstitial interstitial, long j) {
        long j2 = interstitial.playoutLimitUs;
        if (j2 != C.TIME_UNSET) {
            return j2;
        }
        long j3 = interstitial.durationUs;
        if (j3 != C.TIME_UNSET) {
            return j3;
        }
        long j4 = interstitial.endDateUnixUs;
        if (j4 != C.TIME_UNSET) {
            return j4 - interstitial.startDateUnixUs;
        }
        long j5 = interstitial.plannedDurationUs;
        return j5 != C.TIME_UNSET ? j5 : j;
    }

    private static boolean isHlsMediaItem(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = (MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration);
        return Objects.equals(localConfiguration.mimeType, MimeTypes.APPLICATION_M3U8) || Util.inferContentType(localConfiguration.uri) == 2;
    }

    private static boolean isLiveMediaItem(MediaItem mediaItem, Timeline timeline) {
        int firstWindowIndex = timeline.getFirstWindowIndex(false);
        Timeline.Window window = new Timeline.Window();
        while (firstWindowIndex != -1) {
            timeline.getWindow(firstWindowIndex, window);
            if (window.mediaItem.equals(mediaItem)) {
                return window.isLive();
            }
            firstWindowIndex = timeline.getNextWindowIndex(firstWindowIndex, 0, false);
        }
        return false;
    }

    private static boolean isSupportedMediaItem(MediaItem mediaItem, Timeline timeline) {
        return isHlsMediaItem(mediaItem) && !isLiveMediaItem(mediaItem, timeline);
    }

    public static void lambda$handleContentTimelineChanged$1(AdsMediaSource adsMediaSource, Object obj, Timeline timeline, Listener listener) {
        listener.onContentTimelineChanged(adsMediaSource.getMediaItem(), obj, timeline);
    }

    public static void lambda$handlePrepareComplete$2(AdsMediaSource adsMediaSource, Object obj, int i, int i2, Listener listener) {
        listener.onPrepareCompleted(adsMediaSource.getMediaItem(), obj, i, i2);
    }

    public static void lambda$handlePrepareError$3(AdsMediaSource adsMediaSource, Object obj, int i, int i2, IOException iOException, Listener listener) {
        listener.onPrepareError(adsMediaSource.getMediaItem(), obj, i, i2, iOException);
    }

    public static void lambda$stop$4(AdsMediaSource adsMediaSource, AdPlaybackState adPlaybackState, Listener listener) {
        listener.onStop(adsMediaSource.getMediaItem(), adsMediaSource.getAdsId(), (AdPlaybackState) Assertions.checkNotNull(adPlaybackState));
    }

    private static AdPlaybackState mapHlsInterstitialsToAdPlaybackState(HlsMediaPlaylist hlsMediaPlaylist, AdPlaybackState adPlaybackState) {
        long[] jArr;
        AdPlaybackState adPlaybackStateWithNewAdGroup = adPlaybackState;
        for (int i = 0; i < hlsMediaPlaylist.interstitials.size(); i++) {
            HlsMediaPlaylist.Interstitial interstitial = hlsMediaPlaylist.interstitials.get(i);
            if (interstitial.assetUri == null) {
                Log.w(TAG, "Ignoring interstitials with X-ASSET-LIST. Not yet supported.");
            } else {
                long j = interstitial.cue.contains(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_PRE) ? 0L : interstitial.cue.contains("POST") ? Long.MIN_VALUE : interstitial.startDateUnixUs - hlsMediaPlaylist.startTimeUs;
                int adGroupIndexForPositionUs = adPlaybackStateWithNewAdGroup.getAdGroupIndexForPositionUs(j, hlsMediaPlaylist.durationUs);
                if (adGroupIndexForPositionUs == -1) {
                    adPlaybackStateWithNewAdGroup = adPlaybackStateWithNewAdGroup.withNewAdGroup(0, j);
                    adGroupIndexForPositionUs = 0;
                } else if (adPlaybackStateWithNewAdGroup.getAdGroup(adGroupIndexForPositionUs).timeUs != j) {
                    adGroupIndexForPositionUs++;
                    adPlaybackStateWithNewAdGroup = adPlaybackStateWithNewAdGroup.withNewAdGroup(adGroupIndexForPositionUs, j);
                }
                int iMax = Math.max(adPlaybackStateWithNewAdGroup.getAdGroup(adGroupIndexForPositionUs).count, 0);
                long interstitialDurationUs = getInterstitialDurationUs(interstitial, C.TIME_UNSET);
                if (iMax == 0) {
                    jArr = new long[1];
                } else {
                    long[] jArr2 = adPlaybackStateWithNewAdGroup.getAdGroup(adGroupIndexForPositionUs).durationsUs;
                    long[] jArr3 = new long[jArr2.length + 1];
                    System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
                    jArr = jArr3;
                }
                jArr[jArr.length - 1] = interstitialDurationUs;
                long j2 = interstitial.resumeOffsetUs;
                if (j2 == C.TIME_UNSET) {
                    j2 = interstitialDurationUs != C.TIME_UNSET ? interstitialDurationUs : 0L;
                }
                adPlaybackStateWithNewAdGroup = adPlaybackStateWithNewAdGroup.withAdCount(adGroupIndexForPositionUs, iMax + 1).withAdDurationsUs(adGroupIndexForPositionUs, jArr).withContentResumeOffsetUs(adGroupIndexForPositionUs, adPlaybackStateWithNewAdGroup.getAdGroup(adGroupIndexForPositionUs).contentResumeOffsetUs + j2).withAvailableAdMediaItem(adGroupIndexForPositionUs, iMax, MediaItem.fromUri(interstitial.assetUri));
            }
        }
        return adPlaybackStateWithNewAdGroup;
    }

    public void notifyListeners(Consumer<Listener> consumer) {
        for (int i = 0; i < this.listeners.size(); i++) {
            consumer.accept(this.listeners.get(i));
        }
    }

    public void putAndNotifyAdPlaybackStateUpdate(Object obj, AdPlaybackState adPlaybackState) {
        if (adPlaybackState.equals(this.activeAdPlaybackStates.put(obj, adPlaybackState))) {
            return;
        }
        AdsLoader.EventListener eventListener = this.activeEventListeners.get(obj);
        if (eventListener != null) {
            eventListener.onAdPlaybackState(adPlaybackState);
        } else {
            this.activeAdPlaybackStates.remove(obj);
        }
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    @Override
    public void handleContentTimelineChanged(final AdsMediaSource adsMediaSource, final Timeline timeline) {
        final Object adsId = adsMediaSource.getAdsId();
        if (this.isReleased) {
            AdsLoader.EventListener eventListenerRemove = this.activeEventListeners.remove(adsId);
            if (eventListenerRemove != null) {
                this.unsupportedAdsIds.remove(adsId);
                if (((AdPlaybackState) Assertions.checkNotNull(this.activeAdPlaybackStates.remove(adsId))).equals(AdPlaybackState.NONE)) {
                    eventListenerRemove.onAdPlaybackState(new AdPlaybackState(adsId, new long[0]));
                    return;
                }
                return;
            }
            return;
        }
        if (((AdPlaybackState) Assertions.checkNotNull(this.activeAdPlaybackStates.get(adsId))).equals(AdPlaybackState.NONE)) {
            AdPlaybackState adPlaybackState = new AdPlaybackState(adsId, new long[0]);
            Object obj = timeline.getWindow(0, new Timeline.Window()).manifest;
            if (obj instanceof HlsManifest) {
                adPlaybackState = mapHlsInterstitialsToAdPlaybackState(((HlsManifest) obj).mediaPlaylist, adPlaybackState);
            }
            putAndNotifyAdPlaybackStateUpdate(adsId, adPlaybackState);
            if (this.unsupportedAdsIds.contains(adsId)) {
                return;
            }
            notifyListeners(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    HlsInterstitialsAdsLoader.lambda$handleContentTimelineChanged$1(adsMediaSource, adsId, timeline, (HlsInterstitialsAdsLoader.Listener) obj2);
                }
            });
        }
    }

    @Override
    public void handlePrepareComplete(final AdsMediaSource adsMediaSource, final int i, final int i2) {
        final Object adsId = adsMediaSource.getAdsId();
        if (this.isReleased || this.unsupportedAdsIds.contains(adsId)) {
            return;
        }
        notifyListeners(new Consumer() {
            @Override
            public final void accept(Object obj) {
                HlsInterstitialsAdsLoader.lambda$handlePrepareComplete$2(adsMediaSource, adsId, i, i2, (HlsInterstitialsAdsLoader.Listener) obj);
            }
        });
    }

    @Override
    public void handlePrepareError(final AdsMediaSource adsMediaSource, final int i, final int i2, final IOException iOException) {
        final Object adsId = adsMediaSource.getAdsId();
        putAndNotifyAdPlaybackStateUpdate(adsId, ((AdPlaybackState) Assertions.checkNotNull(this.activeAdPlaybackStates.get(adsId))).withAdLoadError(i, i2));
        if (this.isReleased || this.unsupportedAdsIds.contains(adsId)) {
            return;
        }
        notifyListeners(new Consumer() {
            @Override
            public final void accept(Object obj) {
                HlsInterstitialsAdsLoader.lambda$handlePrepareError$3(adsMediaSource, adsId, i, i2, iOException, (HlsInterstitialsAdsLoader.Listener) obj);
            }
        });
    }

    @Override
    public void release() {
        if (this.activeEventListeners.isEmpty()) {
            this.player = null;
        }
        this.isReleased = true;
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    @Override
    public void setPlayer(@Nullable Player player) {
        boolean z = true;
        Assertions.checkState(!this.isReleased);
        if (Objects.equals(this.player, player)) {
            return;
        }
        if (this.player != null && !this.activeEventListeners.isEmpty()) {
            this.player.removeListener(this.playerListener);
        }
        if (player != null && !this.activeEventListeners.isEmpty()) {
            z = false;
        }
        Assertions.checkState(z);
        this.player = player;
    }

    @Override
    public void setSupportedContentTypes(int... iArr) {
        for (int i : iArr) {
            if (i == 2) {
                return;
            }
        }
        throw new IllegalArgumentException();
    }

    @Override
    public void start(AdsMediaSource adsMediaSource, DataSpec dataSpec, final Object obj, final AdViewProvider adViewProvider, AdsLoader.EventListener eventListener) {
        if (this.isReleased) {
            eventListener.onAdPlaybackState(new AdPlaybackState(obj, new long[0]));
            return;
        }
        if (this.activeAdPlaybackStates.containsKey(obj) || this.unsupportedAdsIds.contains(obj)) {
            throw new IllegalStateException("media item with adsId='" + obj + "' already started. Make sure adsIds are unique within the same playlist.");
        }
        if (this.activeEventListeners.isEmpty()) {
            ((Player) Assertions.checkStateNotNull(this.player, "setPlayer(Player) needs to be called")).addListener(this.playerListener);
        }
        this.activeEventListeners.put(obj, eventListener);
        final MediaItem mediaItem = adsMediaSource.getMediaItem();
        Player player = this.player;
        if (player != null && isSupportedMediaItem(mediaItem, player.getCurrentTimeline())) {
            this.activeAdPlaybackStates.put(obj, AdPlaybackState.NONE);
            notifyListeners(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    ((HlsInterstitialsAdsLoader.Listener) obj2).onStart(mediaItem, obj, adViewProvider);
                }
            });
            return;
        }
        putAndNotifyAdPlaybackStateUpdate(obj, new AdPlaybackState(obj, new long[0]));
        if (this.player != null) {
            Log.w(TAG, "Unsupported media item. Playing without ads for adsId=" + obj);
            this.unsupportedAdsIds.add(obj);
        }
    }

    @Override
    public void stop(final AdsMediaSource adsMediaSource, AdsLoader.EventListener eventListener) {
        Object adsId = adsMediaSource.getAdsId();
        this.activeEventListeners.remove(adsId);
        final AdPlaybackState adPlaybackStateRemove = this.activeAdPlaybackStates.remove(adsId);
        if (this.player != null && this.activeEventListeners.isEmpty()) {
            this.player.removeListener(this.playerListener);
            if (this.isReleased) {
                this.player = null;
            }
        }
        if (!this.isReleased && !this.unsupportedAdsIds.contains(adsId)) {
            notifyListeners(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    HlsInterstitialsAdsLoader.lambda$stop$4(adsMediaSource, adPlaybackStateRemove, (HlsInterstitialsAdsLoader.Listener) obj);
                }
            });
        }
        this.unsupportedAdsIds.remove(adsId);
    }
}
