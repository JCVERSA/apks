package androidx.media3.exoplayer.drm;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.util.concurrent.g;
import java.util.Map;
import java.util.concurrent.ExecutionException;

@UnstableApi
public final class OfflineLicenseHelper {
    private static final Format FORMAT_WITH_EMPTY_DRM_INIT_DATA = new Format.Builder().setDrmInitData(new DrmInitData(new DrmInitData.SchemeData[0])).build();
    private final ConditionVariable drmListenerConditionVariable;
    private final DefaultDrmSessionManager drmSessionManager;
    private final DrmSessionEventListener.EventDispatcher eventDispatcher;
    private final Handler handler;
    private final HandlerThread handlerThread;

    public OfflineLicenseHelper(DefaultDrmSessionManager defaultDrmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.drmSessionManager = defaultDrmSessionManager;
        this.eventDispatcher = eventDispatcher;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:OfflineLicenseHelper");
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper());
        this.drmListenerConditionVariable = new ConditionVariable();
        eventDispatcher.addEventListener(new Handler(handlerThread.getLooper()), new DrmSessionEventListener() {
            @Override
            public void onDrmKeysLoaded(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override
            public void onDrmKeysRemoved(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override
            public void onDrmKeysRestored(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }

            @Override
            public void onDrmSessionManagerError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
                OfflineLicenseHelper.this.drmListenerConditionVariable.open();
            }
        });
    }

    private DrmSession acquireFirstSessionOnHandlerThread(final int i, @Nullable final byte[] bArr, final Format format) throws DrmSession.DrmSessionException {
        Assertions.checkNotNull(format.drmInitData);
        final g gVarO = g.o();
        this.drmListenerConditionVariable.close();
        this.handler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$acquireFirstSessionOnHandlerThread$2(i, bArr, gVarO, format);
            }
        });
        try {
            final DrmSession drmSession = (DrmSession) gVarO.get();
            this.drmListenerConditionVariable.block();
            final g gVarO2 = g.o();
            this.handler.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$acquireFirstSessionOnHandlerThread$3(drmSession, gVarO2);
                }
            });
            try {
                if (gVarO2.get() == null) {
                    return drmSession;
                }
                throw ((DrmSession.DrmSessionException) gVarO2.get());
            } catch (InterruptedException | ExecutionException e) {
                throw new IllegalStateException(e);
            }
        } catch (InterruptedException | ExecutionException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private byte[] acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(int i, @Nullable byte[] bArr, Format format) throws DrmSession.DrmSessionException {
        final DrmSession drmSessionAcquireFirstSessionOnHandlerThread = acquireFirstSessionOnHandlerThread(i, bArr, format);
        final g gVarO = g.o();
        this.handler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1(gVarO, drmSessionAcquireFirstSessionOnHandlerThread);
            }
        });
        try {
            try {
                byte[] bArr2 = (byte[]) Assertions.checkNotNull((byte[]) gVarO.get());
                releaseManagerOnHandlerThread();
                return bArr2;
            } catch (InterruptedException | ExecutionException e) {
                throw new IllegalStateException(e);
            }
        } catch (Throwable th) {
            releaseManagerOnHandlerThread();
            throw th;
        }
    }

    public void lambda$acquireFirstSessionOnHandlerThread$2(int i, byte[] bArr, g gVar, Format format) {
        try {
            this.drmSessionManager.setPlayer((Looper) Assertions.checkNotNull(Looper.myLooper()), PlayerId.UNSET);
            this.drmSessionManager.prepare();
            try {
                this.drmSessionManager.setMode(i, bArr);
                gVar.set((DrmSession) Assertions.checkNotNull(this.drmSessionManager.acquireSession(this.eventDispatcher, format)));
            } catch (Throwable th) {
                this.drmSessionManager.release();
                throw th;
            }
        } catch (Throwable th2) {
            gVar.setException(th2);
        }
    }

    public void lambda$acquireFirstSessionOnHandlerThread$3(DrmSession drmSession, g gVar) {
        try {
            DrmSession.DrmSessionException error = drmSession.getError();
            if (drmSession.getState() == 1) {
                drmSession.release(this.eventDispatcher);
                this.drmSessionManager.release();
            }
            gVar.set(error);
        } catch (Throwable th) {
            gVar.setException(th);
            drmSession.release(this.eventDispatcher);
            this.drmSessionManager.release();
        }
    }

    public void lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1(g gVar, DrmSession drmSession) {
        try {
            gVar.set(drmSession.getOfflineLicenseKeySetId());
        } catch (Throwable th) {
            try {
                gVar.setException(th);
            } finally {
                drmSession.release(this.eventDispatcher);
            }
        }
    }

    public void lambda$getLicenseDurationRemainingSec$0(g gVar, DrmSession drmSession) {
        try {
            gVar.set((Pair) Assertions.checkNotNull(WidevineUtil.getLicenseDurationRemainingSec(drmSession)));
        } catch (Throwable th) {
            try {
                gVar.setException(th);
            } finally {
                drmSession.release(this.eventDispatcher);
            }
        }
    }

    public void lambda$releaseManagerOnHandlerThread$4(g gVar) {
        try {
            this.drmSessionManager.release();
            gVar.set(null);
        } catch (Throwable th) {
            gVar.setException(th);
        }
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, DataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, false, factory, eventDispatcher);
    }

    private void releaseManagerOnHandlerThread() {
        final g gVarO = g.o();
        this.handler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$releaseManagerOnHandlerThread$4(gVarO);
            }
        });
        try {
            gVarO.get();
        } catch (InterruptedException | ExecutionException e) {
            throw new IllegalStateException(e);
        }
    }

    public synchronized byte[] downloadLicense(Format format) throws DrmSession.DrmSessionException {
        Assertions.checkArgument(format.drmInitData != null);
        return acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(2, null, format);
    }

    public synchronized Pair<Long, Long> getLicenseDurationRemainingSec(byte[] bArr) throws DrmSession.DrmSessionException {
        Pair<Long, Long> pair;
        Assertions.checkNotNull(bArr);
        try {
            final DrmSession drmSessionAcquireFirstSessionOnHandlerThread = acquireFirstSessionOnHandlerThread(1, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
            final g gVarO = g.o();
            this.handler.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$getLicenseDurationRemainingSec$0(gVarO, drmSessionAcquireFirstSessionOnHandlerThread);
                }
            });
            try {
                try {
                    pair = (Pair) gVarO.get();
                    releaseManagerOnHandlerThread();
                } catch (InterruptedException | ExecutionException e) {
                    throw new IllegalStateException(e);
                }
            } catch (Throwable th) {
                releaseManagerOnHandlerThread();
                throw th;
            }
        } catch (DrmSession.DrmSessionException e2) {
            if (e2.getCause() instanceof KeysExpiredException) {
                return Pair.create(0L, 0L);
            }
            throw e2;
        }
        return pair;
    }

    public void release() {
        this.handlerThread.quit();
    }

    public synchronized void releaseLicense(byte[] bArr) throws DrmSession.DrmSessionException {
        Assertions.checkNotNull(bArr);
        acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(3, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
    }

    public synchronized byte[] renewLicense(byte[] bArr) throws DrmSession.DrmSessionException {
        Assertions.checkNotNull(bArr);
        return acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread(2, bArr, FORMAT_WITH_EMPTY_DRM_INIT_DATA);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, boolean z, DataSource.Factory factory, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return newWidevineInstance(str, z, factory, null, eventDispatcher);
    }

    public static OfflineLicenseHelper newWidevineInstance(String str, boolean z, DataSource.Factory factory, @Nullable Map<String, String> map, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        return new OfflineLicenseHelper(new DefaultDrmSessionManager.Builder().setKeyRequestParameters(map).build(new HttpMediaDrmCallback(str, z, factory)), eventDispatcher);
    }
}
