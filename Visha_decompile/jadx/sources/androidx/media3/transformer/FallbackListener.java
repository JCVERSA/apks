package androidx.media3.transformer;

import androidx.annotation.IntRange;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

final class FallbackListener {
    private final Composition composition;
    private TransformationRequest fallbackTransformationRequest;
    private final TransformationRequest originalTransformationRequest;
    private final AtomicInteger trackCount = new AtomicInteger();
    private final HandlerWrapper transformerListenerHandler;
    private final ListenerSet<Transformer.Listener> transformerListeners;

    public FallbackListener(Composition composition, ListenerSet<Transformer.Listener> listenerSet, HandlerWrapper handlerWrapper, TransformationRequest transformationRequest) {
        this.composition = composition;
        this.transformerListeners = listenerSet;
        this.transformerListenerHandler = handlerWrapper;
        this.originalTransformationRequest = transformationRequest;
        this.fallbackTransformationRequest = transformationRequest;
    }

    public void lambda$onTransformationRequestFinalized$0(TransformationRequest transformationRequest, Transformer.Listener listener) {
        listener.onFallbackApplied(this.composition, this.originalTransformationRequest, transformationRequest);
    }

    public void lambda$onTransformationRequestFinalized$1(final TransformationRequest transformationRequest) {
        this.transformerListeners.sendEvent(-1, new ListenerSet.Event() {
            @Override
            public final void invoke(Object obj) {
                this.a.lambda$onTransformationRequestFinalized$0(transformationRequest, (Transformer.Listener) obj);
            }
        });
    }

    public synchronized void onTransformationRequestFinalized(TransformationRequest transformationRequest) {
        try {
            Assertions.checkState(this.trackCount.getAndDecrement() > 0);
            TransformationRequest.Builder builderBuildUpon = this.fallbackTransformationRequest.buildUpon();
            if (!Objects.equals(transformationRequest.audioMimeType, this.originalTransformationRequest.audioMimeType)) {
                builderBuildUpon.setAudioMimeType(transformationRequest.audioMimeType);
            }
            if (!Objects.equals(transformationRequest.videoMimeType, this.originalTransformationRequest.videoMimeType)) {
                builderBuildUpon.setVideoMimeType(transformationRequest.videoMimeType);
            }
            int i = transformationRequest.outputHeight;
            if (i != this.originalTransformationRequest.outputHeight) {
                builderBuildUpon.setResolution(i);
            }
            int i2 = transformationRequest.hdrMode;
            if (i2 != this.originalTransformationRequest.hdrMode) {
                builderBuildUpon.setHdrMode(i2);
            }
            final TransformationRequest transformationRequestBuild = builderBuildUpon.build();
            this.fallbackTransformationRequest = transformationRequestBuild;
            if (this.trackCount.get() == 0 && !this.originalTransformationRequest.equals(this.fallbackTransformationRequest)) {
                this.transformerListenerHandler.post(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$onTransformationRequestFinalized$1(transformationRequestBuild);
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setTrackCount(@IntRange(from = 1) int i) {
        this.trackCount.set(i);
    }
}
