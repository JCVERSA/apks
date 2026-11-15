package androidx.media3.exoplayer.source.preload;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.FlagSet;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import androidx.media3.exoplayer.source.preload.PreloadManagerListener;
import defpackage.w6a;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.PriorityQueue;

@UnstableApi
public abstract class BasePreloadManager<T> {
    private final Handler applicationHandler;
    private final ListenerSet<PreloadManagerListener> listeners;
    private final Object lock = new Object();
    private final Map<MediaItem, BasePreloadManager<T>.MediaSourceHolder> mediaItemMediaSourceHolderMap;
    private final MediaSource.Factory mediaSourceFactory;
    protected final Comparator<T> rankingDataComparator;

    @GuardedBy("lock")
    private final PriorityQueue<BasePreloadManager<T>.MediaSourceHolder> sourceHolderPriorityQueue;
    private final TargetPreloadStatusControl<T> targetPreloadStatusControl;

    @Nullable
    @GuardedBy("lock")
    private TargetPreloadStatusControl.PreloadStatus targetPreloadStatusOfCurrentPreloadingSource;

    public static abstract class BuilderBase<T> {
        protected w6a mediaSourceFactorySupplier;
        protected final Comparator<T> rankingDataComparator;
        protected final TargetPreloadStatusControl<T> targetPreloadStatusControl;

        public BuilderBase(Comparator<T> comparator, TargetPreloadStatusControl<T> targetPreloadStatusControl, w6a w6aVar) {
            this.rankingDataComparator = comparator;
            this.targetPreloadStatusControl = targetPreloadStatusControl;
            this.mediaSourceFactorySupplier = w6aVar;
        }

        public abstract BasePreloadManager<T> build();
    }

    public final class MediaSourceHolder implements Comparable<BasePreloadManager<T>.MediaSourceHolder> {
        public final MediaSource mediaSource;
        public final T rankingData;
        public final long startPositionUs;

        public MediaSourceHolder(BasePreloadManager basePreloadManager, MediaSource mediaSource, T t) {
            this(mediaSource, t, C.TIME_UNSET);
        }

        public MediaSourceHolder(MediaSource mediaSource, T t, long j) {
            this.mediaSource = mediaSource;
            this.rankingData = t;
            this.startPositionUs = j;
        }

        @Override
        public int compareTo(BasePreloadManager<T>.MediaSourceHolder mediaSourceHolder) {
            return BasePreloadManager.this.rankingDataComparator.compare(this.rankingData, mediaSourceHolder.rankingData);
        }
    }

    public BasePreloadManager(Comparator<T> comparator, TargetPreloadStatusControl<T> targetPreloadStatusControl, MediaSource.Factory factory) {
        Handler handlerCreateHandlerForCurrentOrMainLooper = Util.createHandlerForCurrentOrMainLooper();
        this.applicationHandler = handlerCreateHandlerForCurrentOrMainLooper;
        this.rankingDataComparator = comparator;
        this.targetPreloadStatusControl = targetPreloadStatusControl;
        this.mediaSourceFactory = factory;
        this.listeners = new ListenerSet<>(handlerCreateHandlerForCurrentOrMainLooper.getLooper(), Clock.DEFAULT, new ListenerSet.IterationFinishedEvent() {
            @Override
            public final void invoke(Object obj, FlagSet flagSet) {
                BasePreloadManager.lambda$new$0((PreloadManagerListener) obj, flagSet);
            }
        });
        this.mediaItemMediaSourceHolderMap = new HashMap();
        this.sourceHolderPriorityQueue = new PriorityQueue<>();
    }

    @GuardedBy("lock")
    private boolean isPreloading(MediaSource mediaSource) {
        return !this.sourceHolderPriorityQueue.isEmpty() && ((MediaSourceHolder) Assertions.checkNotNull(this.sourceHolderPriorityQueue.peek())).mediaSource == mediaSource;
    }

    public static void lambda$new$0(PreloadManagerListener preloadManagerListener, FlagSet flagSet) {
    }

    public static void lambda$onPreloadCompleted$1(MediaSource mediaSource, PreloadManagerListener preloadManagerListener) {
        preloadManagerListener.onCompleted(mediaSource.getMediaItem());
    }

    public void lambda$onPreloadCompleted$2(final MediaSource mediaSource) {
        this.listeners.sendEvent(-1, new ListenerSet.Event() {
            @Override
            public final void invoke(Object obj) {
                BasePreloadManager.lambda$onPreloadCompleted$1(mediaSource, (PreloadManagerListener) obj);
            }
        });
        lambda$onPreloadSkipped$5(mediaSource);
    }

    public void lambda$onPreloadError$4(final PreloadException preloadException, MediaSource mediaSource) {
        this.listeners.sendEvent(-1, new ListenerSet.Event() {
            @Override
            public final void invoke(Object obj) {
                ((PreloadManagerListener) obj).onError(preloadException);
            }
        });
        lambda$onPreloadSkipped$5(mediaSource);
    }

    public void lambda$onPreloadSkipped$5(MediaSource mediaSource) {
        synchronized (this.lock) {
            try {
                if (isPreloading(mediaSource)) {
                    do {
                        this.sourceHolderPriorityQueue.poll();
                        if (this.sourceHolderPriorityQueue.isEmpty()) {
                            break;
                        }
                    } while (!maybeStartPreloadNextSource());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @GuardedBy("lock")
    private boolean maybeStartPreloadNextSource() {
        if (!shouldStartPreloadingNextSource()) {
            return false;
        }
        MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Assertions.checkNotNull(this.sourceHolderPriorityQueue.peek());
        TargetPreloadStatusControl.PreloadStatus targetPreloadStatus = this.targetPreloadStatusControl.getTargetPreloadStatus(mediaSourceHolder.rankingData);
        this.targetPreloadStatusOfCurrentPreloadingSource = targetPreloadStatus;
        if (targetPreloadStatus != null) {
            preloadSourceInternal(mediaSourceHolder.mediaSource, mediaSourceHolder.startPositionUs);
            return true;
        }
        clearSourceInternal(mediaSourceHolder.mediaSource);
        return false;
    }

    private void verifyApplicationThread() {
        if (Looper.myLooper() != this.applicationHandler.getLooper()) {
            throw new IllegalStateException("Preload manager is accessed on the wrong thread.");
        }
    }

    public final void add(MediaItem mediaItem, T t) {
        add(this.mediaSourceFactory.createMediaSource(mediaItem), t);
    }

    public void addListener(PreloadManagerListener preloadManagerListener) {
        this.listeners.add(preloadManagerListener);
    }

    public void clearListeners() {
        verifyApplicationThread();
        this.listeners.clear();
    }

    public abstract void clearSourceInternal(MediaSource mediaSource);

    public MediaSource createMediaSourceForPreloading(MediaSource mediaSource) {
        return mediaSource;
    }

    @Nullable
    public final MediaSource getMediaSource(MediaItem mediaItem) {
        if (this.mediaItemMediaSourceHolderMap.containsKey(mediaItem)) {
            return this.mediaItemMediaSourceHolderMap.get(mediaItem).mediaSource;
        }
        return null;
    }

    public final int getSourceCount() {
        return this.mediaItemMediaSourceHolderMap.size();
    }

    @Nullable
    public final TargetPreloadStatusControl.PreloadStatus getTargetPreloadStatus(MediaSource mediaSource) {
        synchronized (this.lock) {
            try {
                if (!isPreloading(mediaSource)) {
                    return null;
                }
                return this.targetPreloadStatusOfCurrentPreloadingSource;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void invalidate() {
        synchronized (this.lock) {
            try {
                this.sourceHolderPriorityQueue.clear();
                this.sourceHolderPriorityQueue.addAll(this.mediaItemMediaSourceHolderMap.values());
                while (!this.sourceHolderPriorityQueue.isEmpty() && !maybeStartPreloadNextSource()) {
                    this.sourceHolderPriorityQueue.poll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onPreloadCompleted(final MediaSource mediaSource) {
        synchronized (this.lock) {
            try {
                if (isPreloading(mediaSource)) {
                    this.applicationHandler.post(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.lambda$onPreloadCompleted$2(mediaSource);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onPreloadError(final PreloadException preloadException, final MediaSource mediaSource) {
        synchronized (this.lock) {
            try {
                if (isPreloading(mediaSource)) {
                    this.applicationHandler.post(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.lambda$onPreloadError$4(preloadException, mediaSource);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onPreloadSkipped(final MediaSource mediaSource) {
        synchronized (this.lock) {
            try {
                if (isPreloading(mediaSource)) {
                    this.applicationHandler.post(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.lambda$onPreloadSkipped$5(mediaSource);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void preloadSourceInternal(MediaSource mediaSource, long j);

    public final void release() {
        reset();
        releaseInternal();
        clearListeners();
    }

    public void releaseInternal() {
    }

    public abstract void releaseSourceInternal(MediaSource mediaSource);

    public final boolean remove(MediaItem mediaItem) {
        if (!this.mediaItemMediaSourceHolderMap.containsKey(mediaItem)) {
            return false;
        }
        MediaSource mediaSource = this.mediaItemMediaSourceHolderMap.get(mediaItem).mediaSource;
        this.mediaItemMediaSourceHolderMap.remove(mediaItem);
        releaseSourceInternal(mediaSource);
        return true;
    }

    public void removeListener(PreloadManagerListener preloadManagerListener) {
        verifyApplicationThread();
        this.listeners.remove(preloadManagerListener);
    }

    public final void reset() {
        Iterator<BasePreloadManager<T>.MediaSourceHolder> it = this.mediaItemMediaSourceHolderMap.values().iterator();
        while (it.hasNext()) {
            releaseSourceInternal(it.next().mediaSource);
        }
        this.mediaItemMediaSourceHolderMap.clear();
        synchronized (this.lock) {
            this.sourceHolderPriorityQueue.clear();
            this.targetPreloadStatusOfCurrentPreloadingSource = null;
        }
    }

    public boolean shouldStartPreloadingNextSource() {
        return true;
    }

    public final void add(MediaSource mediaSource, T t) {
        MediaSource mediaSourceCreateMediaSourceForPreloading = createMediaSourceForPreloading(mediaSource);
        this.mediaItemMediaSourceHolderMap.put(mediaSourceCreateMediaSourceForPreloading.getMediaItem(), new MediaSourceHolder(this, mediaSourceCreateMediaSourceForPreloading, t));
    }

    public final boolean remove(MediaSource mediaSource) {
        MediaItem mediaItem = mediaSource.getMediaItem();
        if (!this.mediaItemMediaSourceHolderMap.containsKey(mediaItem) || mediaSource != this.mediaItemMediaSourceHolderMap.get(mediaItem).mediaSource) {
            return false;
        }
        this.mediaItemMediaSourceHolderMap.remove(mediaItem);
        releaseSourceInternal(mediaSource);
        return true;
    }
}
