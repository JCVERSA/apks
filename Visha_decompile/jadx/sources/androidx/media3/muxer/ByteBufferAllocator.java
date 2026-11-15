package androidx.media3.muxer;

import androidx.media3.common.util.UnstableApi;
import java.nio.ByteBuffer;

@UnstableApi
public interface ByteBufferAllocator {
    public static final ByteBufferAllocator DEFAULT = new ByteBufferAllocator() {
        @Override
        public final ByteBuffer allocate(int i) {
            return ByteBuffer.allocateDirect(i);
        }
    };

    ByteBuffer allocate(int i);
}
