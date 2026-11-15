package com.cloud.tmc.integration.net;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/integration/net/RenderWarmupMode;", "Lcom/cloud/tmc/kernel/model/BaseBean;", MRAIDPresenter.OPEN, "", "cacheSize", "", "(ZI)V", "getCacheSize", "()I", "getOpen", "()Z", "component1", "component2", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RenderWarmupMode extends BaseBean {
    private final int cacheSize;
    private final boolean open;

    public RenderWarmupMode(boolean z10, int i10) {
        this.open = z10;
        this.cacheSize = i10;
    }

    public static RenderWarmupMode copy$default(RenderWarmupMode renderWarmupMode, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = renderWarmupMode.open;
        }
        if ((i11 & 2) != 0) {
            i10 = renderWarmupMode.cacheSize;
        }
        return renderWarmupMode.copy(z10, i10);
    }

    public final boolean getOpen() {
        return this.open;
    }

    public final int getCacheSize() {
        return this.cacheSize;
    }

    public final RenderWarmupMode copy(boolean open, int cacheSize) {
        return new RenderWarmupMode(open, cacheSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RenderWarmupMode)) {
            return false;
        }
        RenderWarmupMode renderWarmupMode = (RenderWarmupMode) other;
        return this.open == renderWarmupMode.open && this.cacheSize == renderWarmupMode.cacheSize;
    }

    public final int getCacheSize() {
        return this.cacheSize;
    }

    public final boolean getOpen() {
        return this.open;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z10 = this.open;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return (r10 * 31) + this.cacheSize;
    }

    public String toString() {
        return "RenderWarmupMode(open=" + this.open + ", cacheSize=" + this.cacheSize + ")";
    }
}
