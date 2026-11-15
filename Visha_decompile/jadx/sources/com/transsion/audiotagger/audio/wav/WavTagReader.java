package com.transsion.audiotagger.audio.wav;

import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import com.transsion.audiotagger.audio.iff.ChunkSummary;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import com.transsion.audiotagger.audio.wav.chunk.WavId3Chunk;
import com.transsion.audiotagger.audio.wav.chunk.WavListChunk;
import com.transsion.audiotagger.logging.Hex;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.wav.WavInfoTag;
import com.transsion.audiotagger.tag.wav.WavTag;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class WavTagReader {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.wav");
    private String loggingName;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType;

        static {
            int[] iArr = new int[WavChunkType.values().length];
            $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType = iArr;
            try {
                iArr[WavChunkType.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType[WavChunkType.CORRUPT_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType[WavChunkType.ID3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType[WavChunkType.CORRUPT_ID3_EARLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType[WavChunkType.CORRUPT_ID3_LATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public WavTagReader(String str) {
        this.loggingName = str;
    }

    private void createDefaultMetadataTagsIfMissing(WavTag wavTag) {
        if (!wavTag.isExistingId3Tag()) {
            wavTag.setID3Tag(WavTag.createDefaultID3Tag());
        }
        if (wavTag.isExistingInfoTag()) {
            return;
        }
        wavTag.setInfoTag(new WavInfoTag());
    }

    public WavTag read(File file) throws Throwable {
        logger.config(this.loggingName + " Read Tag:start");
        WavTag wavTag = new WavTag(TagOptionSingleton.getInstance().getWavOptions());
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                if (!WavRIFFHeader.isValidHeader(channel)) {
                    throw new CannotReadException(this.loggingName + " Wav RIFF Header not valid");
                }
                while (channel.position() < channel.size() && readChunk(channel, wavTag)) {
                }
                AudioFileIO.closeQuietly(randomAccessFile2);
                createDefaultMetadataTagsIfMissing(wavTag);
                logger.config(this.loggingName + " Read Tag:end");
                return wavTag;
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

    public boolean readChunk(FileChannel fileChannel, WavTag wavTag) throws CannotReadException, IOException {
        ChunkHeader chunkHeader = new ChunkHeader(ByteOrder.LITTLE_ENDIAN);
        if (!chunkHeader.readHeader(fileChannel)) {
            return false;
        }
        String id = chunkHeader.getID();
        logger.config(this.loggingName + " Next Id is:" + id + ":FileLocation:" + fileChannel.position() + ":Size:" + chunkHeader.getSize());
        WavChunkType wavChunkType = WavChunkType.get(id);
        if (wavChunkType != null) {
            int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType[wavChunkType.ordinal()];
            if (i == 1) {
                wavTag.addChunkSummary(new ChunkSummary(chunkHeader.getID(), chunkHeader.getStartLocationInFile(), chunkHeader.getSize()));
                if (wavTag.getInfoTag() != null) {
                    logger.warning(this.loggingName + " Ignoring LIST chunk because already have one:" + chunkHeader.getID() + StringUtils.PROCESS_POSTFIX_DELIMITER + Hex.asDecAndHex(chunkHeader.getStartLocationInFile() - 1) + ":sizeIncHeader:" + (chunkHeader.getSize() + 8));
                } else if (!new WavListChunk(this.loggingName, Utils.readFileDataIntoBufferLE(fileChannel, (int) chunkHeader.getSize()), chunkHeader, wavTag).readChunk()) {
                    return false;
                }
            } else {
                if (i == 2) {
                    logger.severe(this.loggingName + " Found Corrupt LIST Chunk, starting at Odd Location:" + chunkHeader.getID() + StringUtils.PROCESS_POSTFIX_DELIMITER + chunkHeader.getSize());
                    if (wavTag.getInfoTag() == null && wavTag.getID3Tag() == null) {
                        wavTag.setIncorrectlyAlignedTag(true);
                    }
                    fileChannel.position(fileChannel.position() - 7);
                    return true;
                }
                if (i == 3) {
                    wavTag.addChunkSummary(new ChunkSummary(chunkHeader.getID(), chunkHeader.getStartLocationInFile(), chunkHeader.getSize()));
                    if (wavTag.getID3Tag() != null) {
                        logger.warning(this.loggingName + " Ignoring id3 chunk because already have one:" + chunkHeader.getID() + StringUtils.PROCESS_POSTFIX_DELIMITER + Hex.asDecAndHex(chunkHeader.getStartLocationInFile()) + ":sizeIncHeader:" + (chunkHeader.getSize() + 8));
                    } else if (!new WavId3Chunk(Utils.readFileDataIntoBufferLE(fileChannel, (int) chunkHeader.getSize()), chunkHeader, wavTag).readChunk()) {
                        return false;
                    }
                } else {
                    if (i == 4) {
                        logger.severe(this.loggingName + " Found Corrupt id3 chunk, starting at Odd Location:" + chunkHeader.getID() + StringUtils.PROCESS_POSTFIX_DELIMITER + chunkHeader.getSize());
                        if (wavTag.getInfoTag() == null && wavTag.getID3Tag() == null) {
                            wavTag.setIncorrectlyAlignedTag(true);
                        }
                        fileChannel.position(fileChannel.position() - 7);
                        return true;
                    }
                    if (i == 5) {
                        logger.severe(this.loggingName + " Found Corrupt id3 chunk, starting at Odd Location:" + chunkHeader.getID() + StringUtils.PROCESS_POSTFIX_DELIMITER + chunkHeader.getSize());
                        if (wavTag.getInfoTag() == null && wavTag.getID3Tag() == null) {
                            wavTag.setIncorrectlyAlignedTag(true);
                        }
                        fileChannel.position(fileChannel.position() - 7);
                        return true;
                    }
                    wavTag.addChunkSummary(new ChunkSummary(chunkHeader.getID(), chunkHeader.getStartLocationInFile(), chunkHeader.getSize()));
                    fileChannel.position(fileChannel.position() + chunkHeader.getSize());
                }
            }
        } else {
            if (chunkHeader.getSize() < 0) {
                String str = this.loggingName + " Not a valid header, unable to read a sensible size:Header" + chunkHeader.getID() + "Size:" + chunkHeader.getSize();
                logger.severe(str);
                throw new CannotReadException(str);
            }
            logger.config(this.loggingName + " Skipping chunk bytes:" + chunkHeader.getSize() + "for" + chunkHeader.getID());
            fileChannel.position(fileChannel.position() + chunkHeader.getSize());
            if (fileChannel.position() > fileChannel.size()) {
                String str2 = this.loggingName + " Failed to move to invalid position to " + fileChannel.position() + " because file length is only " + fileChannel.size() + " indicates invalid chunk";
                logger.severe(str2);
                throw new CannotReadException(str2);
            }
        }
        IffHeaderChunk.ensureOnEqualBoundary(fileChannel, chunkHeader);
        return true;
    }
}
