package com.transsion.audiotagger.audio.dsf;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class DsdChunk {
    public static final int CHUNKSIZE_LENGTH = 8;
    public static final int DSD_HEADER_LENGTH = IffHeaderChunk.SIGNATURE_LENGTH + 24;
    public static final int FILESIZE_LENGTH = 8;
    public static final int FMT_CHUNK_MIN_DATA_SIZE = 40;
    public static final int METADATA_OFFSET_LENGTH = 8;
    private long chunkSizeLength;
    private long fileLength;
    private long metadataOffset;

    private DsdChunk(ByteBuffer byteBuffer) {
        this.chunkSizeLength = byteBuffer.getLong();
        this.fileLength = byteBuffer.getLong();
        this.metadataOffset = byteBuffer.getLong();
    }

    public static DsdChunk readChunk(ByteBuffer byteBuffer) {
        if (DsfChunkType.DSD.getCode().equals(Utils.readFourBytesAsChars(byteBuffer))) {
            return new DsdChunk(byteBuffer);
        }
        return null;
    }

    public long getChunkSizeLength() {
        return this.chunkSizeLength;
    }

    public long getFileLength() {
        return this.fileLength;
    }

    public long getMetadataOffset() {
        return this.metadataOffset;
    }

    public void setChunkSizeLength(long j) {
        this.chunkSizeLength = j;
    }

    public void setFileLength(long j) {
        this.fileLength = j;
    }

    public void setMetadataOffset(long j) {
        this.metadataOffset = j;
    }

    public String toString() {
        return "ChunkSize:" + this.chunkSizeLength + ":fileLength:" + this.fileLength + ":metadata:" + this.metadataOffset;
    }

    public ByteBuffer write() {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(DSD_HEADER_LENGTH);
        byteBufferAllocateDirect.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocateDirect.put(DsfChunkType.DSD.getCode().getBytes(StandardCharsets.US_ASCII));
        byteBufferAllocateDirect.putLong(this.chunkSizeLength);
        byteBufferAllocateDirect.putLong(this.fileLength);
        byteBufferAllocateDirect.putLong(this.metadataOffset);
        byteBufferAllocateDirect.flip();
        return byteBufferAllocateDirect;
    }
}
