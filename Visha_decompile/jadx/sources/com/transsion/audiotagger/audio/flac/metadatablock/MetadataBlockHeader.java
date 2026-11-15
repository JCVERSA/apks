package com.transsion.audiotagger.audio.flac.metadatablock;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.socket.pkgdata.SocketData;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class MetadataBlockHeader {
    public static final int BLOCK_LENGTH = 3;
    public static final int BLOCK_TYPE_LENGTH = 1;
    public static final int HEADER_LENGTH = 4;
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.flac");
    private BlockType blockType;
    private byte[] bytes;
    private int dataLength;
    private boolean isLastBlock;

    public MetadataBlockHeader(ByteBuffer byteBuffer) throws CannotReadException {
        this.isLastBlock = ((byteBuffer.get(0) & SocketData.CLAZZ_TYPE_END_SOCKET) >>> 7) == 1;
        int i = byteBuffer.get(0) & 127;
        if (i >= BlockType.values().length) {
            throw new CannotReadException(ErrorMessage.FLAC_NO_BLOCKTYPE.getMsg(Integer.valueOf(i)));
        }
        this.blockType = BlockType.values()[i];
        this.dataLength = (u(byteBuffer.get(1)) << 16) + (u(byteBuffer.get(2)) << 8) + u(byteBuffer.get(3));
        this.bytes = new byte[4];
        for (int i2 = 0; i2 < 4; i2++) {
            this.bytes[i2] = byteBuffer.get(i2);
        }
    }

    public static MetadataBlockHeader readHeader(FileChannel fileChannel) throws CannotReadException, IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        int i = fileChannel.read(byteBufferAllocate);
        if (i >= 4) {
            byteBufferAllocate.rewind();
            return new MetadataBlockHeader(byteBufferAllocate);
        }
        throw new IOException("Unable to read required number of databytes read:" + i + ":required:4");
    }

    private int u(int i) {
        return i & 255;
    }

    public BlockType getBlockType() {
        return this.blockType;
    }

    public byte[] getBytes() {
        return this.bytes;
    }

    public byte[] getBytesWithoutIsLastBlockFlag() {
        byte[] bArr = this.bytes;
        bArr[0] = (byte) (bArr[0] & 127);
        return bArr;
    }

    public int getDataLength() {
        return this.dataLength;
    }

    public boolean isLastBlock() {
        return this.isLastBlock;
    }

    public String toString() {
        return "BlockType:" + this.blockType + " DataLength:" + this.dataLength + " isLastBlock:" + this.isLastBlock;
    }

    public MetadataBlockHeader(boolean z, BlockType blockType, int i) {
        int id;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        this.blockType = blockType;
        this.isLastBlock = z;
        this.dataLength = i;
        if (z) {
            id = blockType.getId() | 128;
        } else {
            id = blockType.getId();
        }
        byteBufferAllocate.put((byte) id);
        byteBufferAllocate.put((byte) ((16711680 & i) >>> 16));
        byteBufferAllocate.put((byte) ((65280 & i) >>> 8));
        byteBufferAllocate.put((byte) (i & 255));
        this.bytes = new byte[4];
        for (int i2 = 0; i2 < 4; i2++) {
            this.bytes[i2] = byteBufferAllocate.get(i2);
        }
    }
}
