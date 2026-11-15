package com.transsion.audiotagger.audio.aiff;

import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.aiff.chunk.AiffChunkSummary;
import com.transsion.audiotagger.audio.aiff.chunk.AiffChunkType;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.exceptions.CannotWriteException;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.aiff.AiffTag;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class AiffTagWriter {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.aiff");

    private void deleteRemainderOfFile(FileChannel fileChannel, AiffTag aiffTag, String str) throws IOException {
        if (Utils.isOddLength(AiffChunkSummary.getChunkBeforeStartingMetadataTag(aiffTag).getEndLocation())) {
            logger.severe(str + " Truncating corrupted ID3 tags from:" + aiffTag.getStartLocationInFileOfId3Chunk());
            fileChannel.truncate(aiffTag.getStartLocationInFileOfId3Chunk());
            return;
        }
        logger.severe(str + " Truncating corrupted ID3 tags from:" + (aiffTag.getStartLocationInFileOfId3Chunk() - 1));
        fileChannel.truncate(aiffTag.getStartLocationInFileOfId3Chunk() - 1);
    }

    private void deleteTagChunk(FileChannel fileChannel, AiffTag aiffTag, ChunkHeader chunkHeader, String str) throws IOException {
        int size = (int) chunkHeader.getSize();
        int i = size + 8;
        long j = i;
        if (Utils.isOddLength(j) && aiffTag.getStartLocationInFileOfId3Chunk() + j < fileChannel.size()) {
            i = size + 9;
        }
        long j2 = i;
        long size2 = fileChannel.size() - j2;
        logger.severe(str + " Size of id3 chunk to delete is:" + i + ":Location:" + aiffTag.getStartLocationInFileOfId3Chunk());
        fileChannel.position(aiffTag.getStartLocationInFileOfId3Chunk() + j2);
        deleteTagChunkUsingSmallByteBufferSegments(aiffTag, fileChannel, size2, j2);
        logger.severe(str + " Setting new length to:" + size2);
        fileChannel.truncate(size2);
    }

    private void deleteTagChunkUsingChannelTransfer(AiffTag aiffTag, FileChannel fileChannel, long j) throws IOException {
        long startLocationInFileOfId3Chunk = aiffTag.getStartLocationInFileOfId3Chunk();
        while (true) {
            long j2 = j - startLocationInFileOfId3Chunk;
            long jTransferFrom = fileChannel.transferFrom(fileChannel, startLocationInFileOfId3Chunk, j2);
            if (jTransferFrom >= j2) {
                return;
            } else {
                startLocationInFileOfId3Chunk += jTransferFrom;
            }
        }
    }

    private void deleteTagChunkUsingSmallByteBufferSegments(AiffTag aiffTag, FileChannel fileChannel, long j, long j2) throws IOException {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((int) TagOptionSingleton.getInstance().getWriteChunkSize());
        while (true) {
            if (fileChannel.read(byteBufferAllocateDirect) < 0 && byteBufferAllocateDirect.position() == 0) {
                return;
            }
            byteBufferAllocateDirect.flip();
            long jPosition = fileChannel.position();
            fileChannel.position((jPosition - j2) - ((long) byteBufferAllocateDirect.limit()));
            fileChannel.write(byteBufferAllocateDirect);
            fileChannel.position(jPosition);
            byteBufferAllocateDirect.compact();
        }
    }

    private AiffTag getExistingMetadata(File file) throws CannotWriteException, IOException {
        try {
            return new AiffTagReader().read(file);
        } catch (CannotReadException unused) {
            throw new CannotWriteException(file + " Failed to read file");
        }
    }

    private boolean isAtEndOfFileAllowingForPaddingByte(AiffTag aiffTag, FileChannel fileChannel) throws IOException {
        return aiffTag.getID3Tag().getEndLocationInFile().longValue() == fileChannel.size() || (Utils.isOddLength(aiffTag.getID3Tag().getEndLocationInFile().longValue()) && aiffTag.getID3Tag().getEndLocationInFile().longValue() + 1 == fileChannel.size());
    }

    private void rewriteRiffHeaderSize(FileChannel fileChannel) throws IOException {
        fileChannel.position(IffHeaderChunk.SIGNATURE_LENGTH);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(IffHeaderChunk.SIZE_LENGTH);
        byteBufferAllocateDirect.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocateDirect.putInt((((int) fileChannel.size()) - IffHeaderChunk.SIGNATURE_LENGTH) - IffHeaderChunk.SIZE_LENGTH);
        byteBufferAllocateDirect.flip();
        fileChannel.write(byteBufferAllocateDirect);
    }

    private ChunkHeader seekToStartOfMetadata(FileChannel fileChannel, AiffTag aiffTag, String str) throws CannotWriteException, IOException {
        fileChannel.position(aiffTag.getStartLocationInFileOfId3Chunk());
        ChunkHeader chunkHeader = new ChunkHeader(ByteOrder.BIG_ENDIAN);
        chunkHeader.readHeader(fileChannel);
        fileChannel.position(fileChannel.position() - 8);
        if (AiffChunkType.TAG.getCode().equals(chunkHeader.getID())) {
            return chunkHeader;
        }
        throw new CannotWriteException(str + " Unable to find ID3 chunk at expected location:" + aiffTag.getStartLocationInFileOfId3Chunk());
    }

    private void writeDataToFile(FileChannel fileChannel, ByteBuffer byteBuffer) throws IOException {
        ChunkHeader chunkHeader = new ChunkHeader(ByteOrder.BIG_ENDIAN);
        chunkHeader.setID(AiffChunkType.TAG.getCode());
        chunkHeader.setSize(byteBuffer.limit());
        fileChannel.write(chunkHeader.writeHeader());
        fileChannel.write(byteBuffer);
        writeExtraByteIfChunkOddSize(fileChannel, byteBuffer.limit());
    }

    private void writeExtraByteIfChunkOddSize(FileChannel fileChannel, long j) throws IOException {
        if (Utils.isOddLength(j)) {
            fileChannel.write(ByteBuffer.allocateDirect(1));
        }
    }

    public ByteBuffer convert(AiffTag aiffTag, AiffTag aiffTag2) throws UnsupportedEncodingException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            long sizeOfID3TagOnly = aiffTag2.getSizeOfID3TagOnly();
            if (sizeOfID3TagOnly > 0 && (sizeOfID3TagOnly & 1) != 0) {
                sizeOfID3TagOnly++;
            }
            aiffTag.getID3Tag().write(byteArrayOutputStream, (int) sizeOfID3TagOnly);
            if ((byteArrayOutputStream.toByteArray().length & 1) != 0) {
                int length = byteArrayOutputStream.toByteArray().length + 1;
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                aiffTag.getID3Tag().write(byteArrayOutputStream2, length);
                byteArrayOutputStream = byteArrayOutputStream2;
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
            byteBufferWrap.rewind();
            return byteBufferWrap;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void delete(Tag tag, File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rw");
                try {
                    FileChannel channel = randomAccessFile2.getChannel();
                    logger.severe(file + " Deleting tag from file");
                    AiffTag existingMetadata = getExistingMetadata(file);
                    if (existingMetadata.isExistingId3Tag() && existingMetadata.getID3Tag().getStartLocationInFile() != null) {
                        ChunkHeader chunkHeaderSeekToStartOfMetadata = seekToStartOfMetadata(channel, existingMetadata, file.toString());
                        if (isAtEndOfFileAllowingForPaddingByte(existingMetadata, channel)) {
                            logger.severe(file + " Setting new length to:" + existingMetadata.getStartLocationInFileOfId3Chunk());
                            channel.truncate(existingMetadata.getStartLocationInFileOfId3Chunk());
                        } else {
                            logger.severe(file + " Deleting tag chunk");
                            deleteTagChunk(channel, existingMetadata, chunkHeaderSeekToStartOfMetadata, file.toString());
                        }
                        rewriteRiffHeaderSize(channel);
                    }
                    logger.severe(file + " Deleted tag from file");
                    AudioFileIO.closeQuietly(randomAccessFile2);
                } catch (IOException e) {
                    e = e;
                    randomAccessFile = randomAccessFile2;
                    throw new CannotWriteException(file + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage());
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    AudioFileIO.closeQuietly(randomAccessFile);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void write(Tag tag, File file) throws Throwable {
        logger.severe(file + " Writing Aiff tag to file");
        try {
            AiffTag existingMetadata = getExistingMetadata(file);
            RandomAccessFile randomAccessFile = null;
            try {
                try {
                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rw");
                    try {
                        FileChannel channel = randomAccessFile2.getChannel();
                        long size = channel.size();
                        ByteBuffer byteBufferConvert = convert((AiffTag) tag, existingMetadata);
                        if (!existingMetadata.isExistingId3Tag() || existingMetadata.getID3Tag().getStartLocationInFile() == null) {
                            channel.position(channel.size());
                            if (Utils.isOddLength(channel.size())) {
                                channel.write(ByteBuffer.allocateDirect(1));
                            }
                            writeDataToFile(channel, byteBufferConvert);
                        } else if (!existingMetadata.isIncorrectlyAlignedTag()) {
                            ChunkHeader chunkHeaderSeekToStartOfMetadata = seekToStartOfMetadata(channel, existingMetadata, file.toString());
                            logger.info(file + "Current Space allocated:" + existingMetadata.getSizeOfID3TagOnly() + ":NewTagRequires:" + byteBufferConvert.limit());
                            if (isAtEndOfFileAllowingForPaddingByte(existingMetadata, channel)) {
                                writeDataToFile(channel, byteBufferConvert);
                            } else {
                                deleteTagChunk(channel, existingMetadata, chunkHeaderSeekToStartOfMetadata, file.toString());
                                channel.position(channel.size());
                                writeExtraByteIfChunkOddSize(channel, channel.size());
                                writeDataToFile(channel, byteBufferConvert);
                            }
                        } else {
                            if (!AiffChunkSummary.isOnlyMetadataTagsAfterStartingMetadataTag(existingMetadata)) {
                                throw new CannotWriteException(file + " Metadata tags are corrupted and not at end of file so cannot be fixed");
                            }
                            deleteRemainderOfFile(channel, existingMetadata, file.toString());
                            channel.position(channel.size());
                            writeExtraByteIfChunkOddSize(channel, channel.size());
                            writeDataToFile(channel, byteBufferConvert);
                        }
                        if (size != channel.size()) {
                            rewriteRiffHeaderSize(channel);
                        }
                        AudioFileIO.closeQuietly(randomAccessFile2);
                    } catch (IOException e) {
                        e = e;
                        throw new CannotWriteException(file + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage());
                    } catch (Throwable th) {
                        th = th;
                        randomAccessFile = randomAccessFile2;
                        AudioFileIO.closeQuietly(randomAccessFile);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            throw new CannotWriteException(file + StringUtils.PROCESS_POSTFIX_DELIMITER + e3.getMessage());
        }
    }
}
