package com.bumptech.glide.request;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

public class ThumbnailRequestCoordinator implements RequestCoordinator, Request {
    private volatile Request full;

    @GuardedBy("requestLock")
    private RequestCoordinator.RequestState fullState;

    @GuardedBy("requestLock")
    private boolean isRunningDuringBegin;

    @Nullable
    private final RequestCoordinator parent;
    private final Object requestLock;
    private volatile Request thumb;

    @GuardedBy("requestLock")
    private RequestCoordinator.RequestState thumbState;

    public ThumbnailRequestCoordinator(Object obj, @Nullable RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.fullState = requestState;
        this.thumbState = requestState;
        this.requestLock = obj;
        this.parent = requestCoordinator;
    }

    @GuardedBy("requestLock")
    private boolean parentCanNotifyCleared() {
        RequestCoordinator requestCoordinator = this.parent;
        return requestCoordinator == null || requestCoordinator.canNotifyCleared(this);
    }

    @GuardedBy("requestLock")
    private boolean parentCanNotifyStatusChanged() {
        RequestCoordinator requestCoordinator = this.parent;
        return requestCoordinator == null || requestCoordinator.canNotifyStatusChanged(this);
    }

    @GuardedBy("requestLock")
    private boolean parentCanSetImage() {
        RequestCoordinator requestCoordinator = this.parent;
        return requestCoordinator == null || requestCoordinator.canSetImage(this);
    }

    @Override
    public void begin() {
        synchronized (this.requestLock) {
            try {
                this.isRunningDuringBegin = true;
                try {
                    if (this.fullState != RequestCoordinator.RequestState.SUCCESS) {
                        RequestCoordinator.RequestState requestState = this.thumbState;
                        RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                        if (requestState != requestState2) {
                            this.thumbState = requestState2;
                            this.thumb.begin();
                        }
                    }
                    if (this.isRunningDuringBegin) {
                        RequestCoordinator.RequestState requestState3 = this.fullState;
                        RequestCoordinator.RequestState requestState4 = RequestCoordinator.RequestState.RUNNING;
                        if (requestState3 != requestState4) {
                            this.fullState = requestState4;
                            this.full.begin();
                        }
                    }
                    this.isRunningDuringBegin = false;
                } catch (Throwable th) {
                    this.isRunningDuringBegin = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean canNotifyCleared(Request request) {
        boolean z;
        synchronized (this.requestLock) {
            try {
                z = parentCanNotifyCleared() && request.equals(this.full) && this.fullState != RequestCoordinator.RequestState.PAUSED;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override
    public boolean canNotifyStatusChanged(Request request) {
        boolean z;
        synchronized (this.requestLock) {
            try {
                z = parentCanNotifyStatusChanged() && request.equals(this.full) && !isAnyResourceSet();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override
    public boolean canSetImage(Request request) {
        boolean z;
        synchronized (this.requestLock) {
            try {
                z = parentCanSetImage() && (request.equals(this.full) || this.fullState != RequestCoordinator.RequestState.SUCCESS);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override
    public void clear() {
        synchronized (this.requestLock) {
            this.isRunningDuringBegin = false;
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.fullState = requestState;
            this.thumbState = requestState;
            this.thumb.clear();
            this.full.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.bumptech.glide.request.RequestCoordinator] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override
    public RequestCoordinator getRoot() {
        ?? root;
        synchronized (this.requestLock) {
            try {
                RequestCoordinator requestCoordinator = this.parent;
                this = this;
                if (requestCoordinator != null) {
                    root = requestCoordinator.getRoot();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override
    public boolean isAnyResourceSet() {
        boolean z;
        synchronized (this.requestLock) {
            try {
                z = this.thumb.isAnyResourceSet() || this.full.isAnyResourceSet();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override
    public boolean isCleared() {
        boolean z;
        synchronized (this.requestLock) {
            z = this.fullState == RequestCoordinator.RequestState.CLEARED;
        }
        return z;
    }

    @Override
    public boolean isComplete() {
        boolean z;
        synchronized (this.requestLock) {
            z = this.fullState == RequestCoordinator.RequestState.SUCCESS;
        }
        return z;
    }

    @Override
    public boolean isEquivalentTo(Request request) {
        if (!(request instanceof ThumbnailRequestCoordinator)) {
            return false;
        }
        ThumbnailRequestCoordinator thumbnailRequestCoordinator = (ThumbnailRequestCoordinator) request;
        if (this.full == null) {
            if (thumbnailRequestCoordinator.full != null) {
                return false;
            }
        } else if (!this.full.isEquivalentTo(thumbnailRequestCoordinator.full)) {
            return false;
        }
        if (this.thumb == null) {
            if (thumbnailRequestCoordinator.thumb != null) {
                return false;
            }
        } else if (!this.thumb.isEquivalentTo(thumbnailRequestCoordinator.thumb)) {
            return false;
        }
        return true;
    }

    @Override
    public boolean isRunning() {
        boolean z;
        synchronized (this.requestLock) {
            z = this.fullState == RequestCoordinator.RequestState.RUNNING;
        }
        return z;
    }

    @Override
    public void onRequestFailed(Request request) {
        synchronized (this.requestLock) {
            try {
                if (!request.equals(this.full)) {
                    this.thumbState = RequestCoordinator.RequestState.FAILED;
                    return;
                }
                this.fullState = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator requestCoordinator = this.parent;
                if (requestCoordinator != null) {
                    requestCoordinator.onRequestFailed(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void onRequestSuccess(Request request) {
        synchronized (this.requestLock) {
            try {
                if (request.equals(this.thumb)) {
                    this.thumbState = RequestCoordinator.RequestState.SUCCESS;
                    return;
                }
                this.fullState = RequestCoordinator.RequestState.SUCCESS;
                RequestCoordinator requestCoordinator = this.parent;
                if (requestCoordinator != null) {
                    requestCoordinator.onRequestSuccess(this);
                }
                if (!this.thumbState.isComplete()) {
                    this.thumb.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void pause() {
        synchronized (this.requestLock) {
            try {
                if (!this.thumbState.isComplete()) {
                    this.thumbState = RequestCoordinator.RequestState.PAUSED;
                    this.thumb.pause();
                }
                if (!this.fullState.isComplete()) {
                    this.fullState = RequestCoordinator.RequestState.PAUSED;
                    this.full.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setRequests(Request request, Request request2) {
        this.full = request;
        this.thumb = request2;
    }
}
