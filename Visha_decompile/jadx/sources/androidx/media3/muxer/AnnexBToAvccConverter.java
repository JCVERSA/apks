package androidx.media3.muxer;

import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;

@UnstableApi
public interface AnnexBToAvccConverter {
    public static final AnnexBToAvccConverter DEFAULT = new AnnexBToAvccConverter() {
        @Override
        public ByteBuffer process(ByteBuffer byteBuffer) {
            return process(byteBuffer, ByteBufferAllocator.DEFAULT);
        }

        @Override
        public ByteBuffer process(ByteBuffer byteBuffer, ByteBufferAllocator byteBufferAllocator) {
            if (!byteBuffer.hasRemaining()) {
                return byteBuffer;
            }
            ImmutableList<ByteBuffer> immutableListFindNalUnits = AnnexBUtils.findNalUnits(byteBuffer);
            int iRemaining = 0;
            for (int i = 0; i < immutableListFindNalUnits.size(); i++) {
                iRemaining += immutableListFindNalUnits.get(i).remaining() + 4;
            }
            ByteBuffer byteBufferAllocate = byteBufferAllocator.allocate(iRemaining);
            for (int i2 = 0; i2 < immutableListFindNalUnits.size(); i2++) {
                ByteBuffer byteBuffer2 = immutableListFindNalUnits.get(i2);
                byteBufferAllocate.putInt(byteBuffer2.remaining());
                byteBufferAllocate.put(byteBuffer2);
            }
            byteBufferAllocate.rewind();
            return byteBufferAllocate;
        }
    };

    ByteBuffer process(ByteBuffer byteBuffer);

    default ByteBuffer process(ByteBuffer byteBuffer, ByteBufferAllocator byteBufferAllocator) {
        return process(byteBuffer);
    }
}
