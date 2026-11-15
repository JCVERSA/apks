package com.transsion.audiotagger.audio.iff;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.Utils;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

public class ChunkHeader {
    public static final int CHUNK_HEADER_SIZE = 8;
    private ByteOrder byteOrder;
    private String chunkId;
    private long size;
    private long startLocationInFile;

    public ChunkHeader(ByteOrder byteOrder) {
        this.byteOrder = byteOrder;
    }

    public String getID() {
        return this.chunkId;
    }

    public long getSize() {
        return this.size;
    }

    public long getStartLocationInFile() {
        return this.startLocationInFile;
    }

    public boolean readHeader(FileChannel fileChannel) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        this.startLocationInFile = fileChannel.position();
        fileChannel.read(byteBufferAllocate);
        byteBufferAllocate.order(this.byteOrder);
        byteBufferAllocate.position(0);
        this.chunkId = Utils.readFourBytesAsChars(byteBufferAllocate);
        this.size = byteBufferAllocate.getInt();
        return true;
    }

    public void setID(String str) {
        this.chunkId = str;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public String toString() {
        return getID() + ":Size:" + getSize() + "startLocation:" + getStartLocationInFile();
    }

    public ByteBuffer writeHeader() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(this.byteOrder);
        byteBufferAllocate.put(this.chunkId.getBytes(StandardCharsets.US_ASCII));
        byteBufferAllocate.putInt((int) this.size);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    public boolean readHeader(RandomAccessFile randomAccessFile) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        this.startLocationInFile = randomAccessFile.getFilePointer();
        randomAccessFile.getChannel().read(byteBufferAllocate);
        byteBufferAllocate.order(this.byteOrder);
        byteBufferAllocate.position(0);
        this.chunkId = Utils.readFourBytesAsChars(byteBufferAllocate);
        this.size = byteBufferAllocate.getInt();
        return true;
    }
}
