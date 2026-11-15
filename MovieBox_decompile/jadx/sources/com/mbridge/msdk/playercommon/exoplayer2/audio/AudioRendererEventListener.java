package com.mbridge.msdk.playercommon.exoplayer2.audio;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderCounters;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

public interface AudioRendererEventListener {

    public static final class EventDispatcher {

        @Nullable
        private final Handler handler;

        @Nullable
        private final AudioRendererEventListener listener;

        public EventDispatcher(@Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener) {
            this.handler = audioRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.listener = audioRendererEventListener;
        }

        public void audioSessionId(final int i10) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    @Override
                    public void run() {
                        EventDispatcher.this.listener.onAudioSessionId(i10);
                    }
                });
            }
        }

        public void audioTrackUnderrun(final int i10, final long j10, final long j11) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    @Override
                    public void run() {
                        EventDispatcher.this.listener.onAudioSinkUnderrun(i10, j10, j11);
                    }
                });
            }
        }

        public void decoderInitialized(final String str, final long j10, final long j11) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    @Override
                    public void run() {
                        EventDispatcher.this.listener.onAudioDecoderInitialized(str, j10, j11);
                    }
                });
            }
        }

        public void disabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    @Override
                    public void run() {
                        decoderCounters.ensureUpdated();
                        EventDispatcher.this.listener.onAudioDisabled(decoderCounters);
                    }
                });
            }
        }

        public void enabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    @Override
                    public void run() {
                        EventDispatcher.this.listener.onAudioEnabled(decoderCounters);
                    }
                });
            }
        }

        public void inputFormatChanged(final Format format) {
            if (this.listener != null) {
                this.handler.post(new Runnable() {
                    @Override
                    public void run() {
                        EventDispatcher.this.listener.onAudioInputFormatChanged(format);
                    }
                });
            }
        }
    }

    void onAudioDecoderInitialized(String str, long j10, long j11);

    void onAudioDisabled(DecoderCounters decoderCounters);

    void onAudioEnabled(DecoderCounters decoderCounters);

    void onAudioInputFormatChanged(Format format);

    void onAudioSessionId(int i10);

    void onAudioSinkUnderrun(int i10, long j10, long j11);
}
