package androidx.media3.effect;

import android.content.Context;
import androidx.media3.common.audio.SpeedProvider;
import androidx.media3.common.util.SpeedProviderUtil;
import androidx.media3.common.util.TimestampConsumer;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
public final class TimestampAdjustment implements GlEffect {
    public final SpeedProvider speedProvider;
    public final TimestampMap timestampMap;

    public interface TimestampMap {
        void calculateOutputTimeUs(long j, TimestampConsumer timestampConsumer);
    }

    public TimestampAdjustment(TimestampMap timestampMap, SpeedProvider speedProvider) {
        this.timestampMap = timestampMap;
        this.speedProvider = speedProvider;
    }

    @Override
    public long getDurationAfterEffectApplied(long j) {
        return SpeedProviderUtil.getDurationAfterSpeedProviderApplied(this.speedProvider, j);
    }

    @Override
    public GlShaderProgram toGlShaderProgram(Context context, boolean z) {
        return new TimestampAdjustmentShaderProgram(this.timestampMap);
    }
}
