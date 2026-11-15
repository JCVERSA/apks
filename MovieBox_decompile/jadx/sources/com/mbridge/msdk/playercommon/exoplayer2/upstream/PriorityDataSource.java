package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.PriorityTaskManager;
import java.io.IOException;

public final class PriorityDataSource implements DataSource {
    private final int priority;
    private final PriorityTaskManager priorityTaskManager;
    private final DataSource upstream;

    public PriorityDataSource(DataSource dataSource, PriorityTaskManager priorityTaskManager, int i10) {
        this.upstream = (DataSource) Assertions.checkNotNull(dataSource);
        this.priorityTaskManager = (PriorityTaskManager) Assertions.checkNotNull(priorityTaskManager);
        this.priority = i10;
    }

    @Override
    public void close() throws IOException {
        this.upstream.close();
    }

    @Override
    @Nullable
    public Uri getUri() {
        return this.upstream.getUri();
    }

    @Override
    public long open(DataSpec dataSpec) throws IOException {
        this.priorityTaskManager.proceedOrThrow(this.priority);
        return this.upstream.open(dataSpec);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        this.priorityTaskManager.proceedOrThrow(this.priority);
        return this.upstream.read(bArr, i10, i11);
    }
}
