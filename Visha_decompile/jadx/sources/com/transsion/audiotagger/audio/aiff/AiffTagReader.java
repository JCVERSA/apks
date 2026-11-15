package com.transsion.audiotagger.audio.aiff;

import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.aiff.chunk.AiffChunkReader;
import com.transsion.audiotagger.audio.aiff.chunk.AiffChunkType;
import com.transsion.audiotagger.audio.aiff.chunk.ID3Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import com.transsion.audiotagger.audio.iff.ChunkSummary;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import com.transsion.audiotagger.logging.Hex;
import com.transsion.audiotagger.tag.aiff.AiffTag;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class AiffTagReader extends AiffChunkReader {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.aiff");

    private boolean readChunk(FileChannel fileChannel, AiffTag aiffTag, String str) throws IOException {
        logger.config(str + " Reading Tag Chunk");
        ChunkHeader chunkHeader = new ChunkHeader(ByteOrder.BIG_ENDIAN);
        if (!chunkHeader.readHeader(fileChannel)) {
            return false;
        }
        logger.config(str + " Reading Chunk:" + chunkHeader.getID() + ":starting at:" + Hex.asDecAndHex(chunkHeader.getStartLocationInFile()) + ":sizeIncHeader:" + (chunkHeader.getSize() + 8));
        long jPosition = fileChannel.position();
        AiffChunkType aiffChunkType = AiffChunkType.get(chunkHeader.getID());
        if (aiffChunkType != null && aiffChunkType == AiffChunkType.TAG && chunkHeader.getSize() > 0) {
            ByteBuffer chunkDataIntoBuffer = readChunkDataIntoBuffer(fileChannel, chunkHeader);
            aiffTag.addChunkSummary(new ChunkSummary(chunkHeader.getID(), chunkHeader.getStartLocationInFile(), chunkHeader.getSize()));
            if (aiffTag.getID3Tag() == null) {
                new ID3Chunk(chunkHeader, chunkDataIntoBuffer, aiffTag).readChunk();
                aiffTag.setExistingId3Tag(true);
                aiffTag.getID3Tag().setStartLocationInFile(jPosition);
                aiffTag.getID3Tag().setEndLocationInFile(fileChannel.position());
            }
            logger.warning(str + " Ignoring ID3Tag because already have one:" + chunkHeader.getID() + StringUtils.PROCESS_POSTFIX_DELIMITER + chunkHeader.getStartLocationInFile() + Hex.asDecAndHex(chunkHeader.getStartLocationInFile() - 1) + ":sizeIncHeader:" + (chunkHeader.getSize() + 8));
        } else {
            if (aiffChunkType != null && aiffChunkType == AiffChunkType.CORRUPT_TAG_LATE) {
                logger.warning(str + "Found Corrupt ID3 Chunk, starting at Odd Location:" + chunkHeader.getID() + StringUtils.PROCESS_POSTFIX_DELIMITER + Hex.asDecAndHex(chunkHeader.getStartLocationInFile() - 1) + ":sizeIncHeader:" + (chunkHeader.getSize() + 8));
                if (aiffTag.getID3Tag() == null) {
                    aiffTag.setIncorrectlyAlignedTag(true);
                }
                fileChannel.position(fileChannel.position() - 9);
                return true;
            }
            if (aiffChunkType != null && aiffChunkType == AiffChunkType.CORRUPT_TAG_EARLY) {
                logger.warning(str + " Found Corrupt ID3 Chunk, starting at Odd Location:" + chunkHeader.getID() + StringUtils.PROCESS_POSTFIX_DELIMITER + Hex.asDecAndHex(chunkHeader.getStartLocationInFile()) + ":sizeIncHeader:" + (chunkHeader.getSize() + 8));
                if (aiffTag.getID3Tag() == null) {
                    aiffTag.setIncorrectlyAlignedTag(true);
                }
                fileChannel.position(fileChannel.position() - 7);
                return true;
            }
            logger.config(str + "Skipping Chunk:" + chunkHeader.getID() + StringUtils.PROCESS_POSTFIX_DELIMITER + chunkHeader.getSize());
            aiffTag.addChunkSummary(new ChunkSummary(chunkHeader.getID(), chunkHeader.getStartLocationInFile(), chunkHeader.getSize()));
            fileChannel.position(fileChannel.position() + chunkHeader.getSize());
        }
        IffHeaderChunk.ensureOnEqualBoundary(fileChannel, chunkHeader);
        return true;
    }

    public AiffTag read(File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                AiffAudioHeader aiffAudioHeader = new AiffAudioHeader();
                AiffTag aiffTag = new AiffTag();
                new AiffFileHeader().readHeader(channel, aiffAudioHeader, file.toString());
                while (channel.position() < channel.size()) {
                    if (!readChunk(channel, aiffTag, file.toString())) {
                        logger.severe(file + " UnableToReadProcessChunk");
                        break;
                    }
                }
                if (aiffTag.getID3Tag() == null) {
                    aiffTag.setID3Tag(AiffTag.createDefaultID3Tag());
                }
                AudioFileIO.closeQuietly(randomAccessFile2);
                return aiffTag;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                AudioFileIO.closeQuietly(randomAccessFile);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
