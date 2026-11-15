package com.mbridge.msdk.playercommon.exoplayer2.upstream;

public interface BandwidthMeter {

    public interface EventListener {
        void onBandwidthSample(int i10, long j10, long j11);
    }

    long getBitrateEstimate();
}
