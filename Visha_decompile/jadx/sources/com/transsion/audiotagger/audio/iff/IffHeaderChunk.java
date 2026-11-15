package com.transsion.audiotagger.audio.iff;

import com.transsion.audiotagger.audio.generic.Utils;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class IffHeaderChunk {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.iff");
    public static int SIGNATURE_LENGTH = 4;
    public static int SIZE_LENGTH = 4;
    public static int TYPE_LENGTH = 4;
    public static int HEADER_LENGTH = (4 + 4) + 4;

    public static void ensureOnEqualBoundary(RandomAccessFile randomAccessFile, ChunkHeader chunkHeader) throws IOException {
        if (!Utils.isOddLength(chunkHeader.getSize()) || randomAccessFile.getFilePointer() >= randomAccessFile.length()) {
            return;
        }
        logger.config("Skipping Byte because on odd boundary");
        randomAccessFile.skipBytes(1);
    }

    public static void ensureOnEqualBoundary(FileChannel fileChannel, ChunkHeader chunkHeader) throws IOException {
        if (!Utils.isOddLength(chunkHeader.getSize()) || fileChannel.position() >= fileChannel.size()) {
            return;
        }
        logger.config("Skipping Byte because on odd boundary");
        fileChannel.position(fileChannel.position() + 1);
    }
}
