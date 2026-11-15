package org.apache.commons.compress;

import java.io.IOException;

public class MemoryLimitException extends IOException {
    private static final long serialVersionUID = 1;
    private final int memoryLimitInKb;
    private final long memoryNeededInKb;

    public MemoryLimitException(long j10, int i10) {
        super(buildMessage(j10, i10));
        this.memoryNeededInKb = j10;
        this.memoryLimitInKb = i10;
    }

    private static String buildMessage(long j10, int i10) {
        return j10 + " kb of memory would be needed; limit was " + i10 + " kb. If the file is not corrupt, consider increasing the memory limit.";
    }

    public int getMemoryLimitInKb() {
        return this.memoryLimitInKb;
    }

    public long getMemoryNeededInKb() {
        return this.memoryNeededInKb;
    }

    public MemoryLimitException(long j10, int i10, Exception exc) {
        super(buildMessage(j10, i10), exc);
        this.memoryNeededInKb = j10;
        this.memoryLimitInKb = i10;
    }
}
