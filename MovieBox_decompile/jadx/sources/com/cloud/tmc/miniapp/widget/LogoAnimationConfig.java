package com.cloud.tmc.miniapp.widget;

import com.cloud.tmc.kernel.model.BaseBean;
import kotlin.jvm.internal.Intrinsics;

public final class LogoAnimationConfig extends BaseBean {
    private int loadingAnimMemorySize;
    private Boolean miniAnimateEnable;

    public LogoAnimationConfig(Boolean bool, int i10) {
        this.miniAnimateEnable = bool;
        this.loadingAnimMemorySize = i10;
    }

    public static LogoAnimationConfig copy$default(LogoAnimationConfig logoAnimationConfig, Boolean bool, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = logoAnimationConfig.miniAnimateEnable;
        }
        if ((i11 & 2) != 0) {
            i10 = logoAnimationConfig.loadingAnimMemorySize;
        }
        return logoAnimationConfig.copy(bool, i10);
    }

    public final Boolean component1() {
        return this.miniAnimateEnable;
    }

    public final int component2() {
        return this.loadingAnimMemorySize;
    }

    public final LogoAnimationConfig copy(Boolean bool, int i10) {
        return new LogoAnimationConfig(bool, i10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LogoAnimationConfig)) {
            return false;
        }
        LogoAnimationConfig logoAnimationConfig = (LogoAnimationConfig) obj;
        return Intrinsics.c(this.miniAnimateEnable, logoAnimationConfig.miniAnimateEnable) && this.loadingAnimMemorySize == logoAnimationConfig.loadingAnimMemorySize;
    }

    public final int getLoadingAnimMemorySize() {
        return this.loadingAnimMemorySize;
    }

    public final Boolean getMiniAnimateEnable() {
        return this.miniAnimateEnable;
    }

    public int hashCode() {
        Boolean bool = this.miniAnimateEnable;
        return this.loadingAnimMemorySize + ((bool == null ? 0 : bool.hashCode()) * 31);
    }

    public final void setLoadingAnimMemorySize(int i10) {
        this.loadingAnimMemorySize = i10;
    }

    public final void setMiniAnimateEnable(Boolean bool) {
        this.miniAnimateEnable = bool;
    }

    public String toString() {
        return "LogoAnimationConfig(miniAnimateEnable=" + this.miniAnimateEnable + ", loadingAnimMemorySize=" + this.loadingAnimMemorySize + ")";
    }
}
