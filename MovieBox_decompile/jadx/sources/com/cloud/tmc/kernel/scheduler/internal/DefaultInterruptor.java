package com.cloud.tmc.kernel.scheduler.internal;

import com.cloud.tmc.kernel.scheduler.Interruptor;

public class DefaultInterruptor implements Interruptor {
    private boolean isInterrupted = false;

    @Override
    public void interrupt() {
        this.isInterrupted = true;
    }

    public boolean isInterrupted() {
        return this.isInterrupted;
    }

    public void setInterrupted(boolean z10) {
        this.isInterrupted = z10;
    }
}
