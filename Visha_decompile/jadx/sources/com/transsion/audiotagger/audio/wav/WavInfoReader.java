package com.transsion.audiotagger.audio.wav;

import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import com.transsion.audiotagger.audio.wav.chunk.WavFactChunk;
import com.transsion.audiotagger.audio.wav.chunk.WavFormatChunk;
import com.transsion.audiotagger.logging.Hex;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class WavInfoReader {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.wav");
    private String loggingName;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType;

        static {
            int[] iArr = new int[WavChunkType.values().length];
            $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType = iArr;
            try {
                iArr[WavChunkType.FACT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType[WavChunkType.DATA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType[WavChunkType.FORMAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType[WavChunkType.CORRUPT_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public WavInfoReader(String str) {
        this.loggingName = str;
    }

    private void calculateTrackLength(GenericAudioHeader genericAudioHeader) throws CannotReadException {
        if (genericAudioHeader.getNoOfSamples() != null) {
            if (genericAudioHeader.getSampleRateAsNumber() > 0) {
                genericAudioHeader.setPreciseLength(genericAudioHeader.getNoOfSamples().longValue() / genericAudioHeader.getSampleRateAsNumber());
            }
        } else {
            if (genericAudioHeader.getAudioDataLength().longValue() > 0) {
                genericAudioHeader.setPreciseLength(genericAudioHeader.getAudioDataLength().longValue() / genericAudioHeader.getByteRate().intValue());
                return;
            }
            throw new CannotReadException(this.loggingName + " Wav Data Header Missing");
        }
    }

    public GenericAudioHeader read(File file) throws Throwable {
        GenericAudioHeader genericAudioHeader = new GenericAudioHeader();
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                if (!WavRIFFHeader.isValidHeader(channel)) {
                    throw new CannotReadException(this.loggingName + " Wav RIFF Header not valid");
                }
                while (channel.position() < channel.size() && readChunk(channel, genericAudioHeader)) {
                }
                AudioFileIO.closeQuietly(randomAccessFile2);
                calculateTrackLength(genericAudioHeader);
                return genericAudioHeader;
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

    public boolean readChunk(FileChannel fileChannel, GenericAudioHeader genericAudioHeader) throws CannotReadException, IOException {
        ChunkHeader chunkHeader = new ChunkHeader(ByteOrder.LITTLE_ENDIAN);
        if (!chunkHeader.readHeader(fileChannel)) {
            return false;
        }
        String id = chunkHeader.getID();
        logger.fine(this.loggingName + " Reading Chunk:" + id + ":starting at:" + Hex.asDecAndHex(chunkHeader.getStartLocationInFile()) + ":sizeIncHeader:" + (chunkHeader.getSize() + 8));
        WavChunkType wavChunkType = WavChunkType.get(id);
        if (wavChunkType != null) {
            int i = AnonymousClass1.$SwitchMap$com$transsion$audiotagger$audio$wav$WavChunkType[wavChunkType.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    genericAudioHeader.setAudioDataLength(chunkHeader.getSize());
                    genericAudioHeader.setAudioDataStartPosition(Long.valueOf(fileChannel.position()));
                    genericAudioHeader.setAudioDataEndPosition(Long.valueOf(fileChannel.position() + chunkHeader.getSize()));
                    fileChannel.position(fileChannel.position() + chunkHeader.getSize());
                } else if (i != 3) {
                    if (i == 4) {
                        logger.severe(this.loggingName + " Found Corrupt LIST Chunk, starting at Odd Location:" + chunkHeader.getID() + StringUtils.PROCESS_POSTFIX_DELIMITER + chunkHeader.getSize());
                        fileChannel.position(fileChannel.position() - 7);
                        return true;
                    }
                    logger.config(this.loggingName + " Skipping chunk bytes:" + chunkHeader.getSize());
                    fileChannel.position(fileChannel.position() + chunkHeader.getSize());
                } else if (!new WavFormatChunk(Utils.readFileDataIntoBufferLE(fileChannel, (int) chunkHeader.getSize()), chunkHeader, genericAudioHeader).readChunk()) {
                    return false;
                }
            } else if (!new WavFactChunk(Utils.readFileDataIntoBufferLE(fileChannel, (int) chunkHeader.getSize()), chunkHeader, genericAudioHeader).readChunk()) {
                return false;
            }
        } else {
            if (chunkHeader.getSize() < 0) {
                String str = this.loggingName + " Not a valid header, unable to read a sensible size:Header" + chunkHeader.getID() + "Size:" + chunkHeader.getSize();
                logger.severe(str);
                throw new CannotReadException(str);
            }
            logger.config(this.loggingName + " Skipping chunk bytes:" + chunkHeader.getSize() + " for " + chunkHeader.getID());
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
