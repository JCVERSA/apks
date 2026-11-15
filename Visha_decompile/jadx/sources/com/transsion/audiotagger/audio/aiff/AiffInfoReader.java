package com.transsion.audiotagger.audio.aiff;

import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.aiff.chunk.AiffChunkReader;
import com.transsion.audiotagger.audio.aiff.chunk.AiffChunkType;
import com.transsion.audiotagger.audio.aiff.chunk.AnnotationChunk;
import com.transsion.audiotagger.audio.aiff.chunk.ApplicationChunk;
import com.transsion.audiotagger.audio.aiff.chunk.AuthorChunk;
import com.transsion.audiotagger.audio.aiff.chunk.CommentsChunk;
import com.transsion.audiotagger.audio.aiff.chunk.CommonChunk;
import com.transsion.audiotagger.audio.aiff.chunk.CopyrightChunk;
import com.transsion.audiotagger.audio.aiff.chunk.FormatVersionChunk;
import com.transsion.audiotagger.audio.aiff.chunk.NameChunk;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import com.transsion.audiotagger.logging.Hex;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class AiffInfoReader extends AiffChunkReader {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.aiff");

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType;

        static {
            int[] iArr = new int[AiffChunkType.values().length];
            $SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType = iArr;
            try {
                iArr[AiffChunkType.FORMAT_VERSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType[AiffChunkType.APPLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType[AiffChunkType.COMMON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType[AiffChunkType.COMMENTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType[AiffChunkType.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType[AiffChunkType.AUTHOR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType[AiffChunkType.COPYRIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType[AiffChunkType.ANNOTATION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType[AiffChunkType.SOUND.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    private void calculateBitRate(GenericAudioHeader genericAudioHeader) throws CannotReadException {
        if (genericAudioHeader.getAudioDataLength() != null) {
            genericAudioHeader.setBitRate((int) Math.round((genericAudioHeader.getAudioDataLength().longValue() * ((long) Utils.BITS_IN_BYTE_MULTIPLIER)) / (genericAudioHeader.getPreciseTrackLength() * ((double) Utils.KILOBYTE_MULTIPLIER))));
        }
    }

    private Chunk createChunk(FileChannel fileChannel, ChunkHeader chunkHeader, AiffAudioHeader aiffAudioHeader) throws IOException {
        AiffChunkType aiffChunkType = AiffChunkType.get(chunkHeader.getID());
        if (aiffChunkType == null) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$com$transsion$audiotagger$audio$aiff$chunk$AiffChunkType[aiffChunkType.ordinal()]) {
            case 1:
                return new FormatVersionChunk(chunkHeader, readChunkDataIntoBuffer(fileChannel, chunkHeader), aiffAudioHeader);
            case 2:
                return new ApplicationChunk(chunkHeader, readChunkDataIntoBuffer(fileChannel, chunkHeader), aiffAudioHeader);
            case 3:
                return new CommonChunk(chunkHeader, readChunkDataIntoBuffer(fileChannel, chunkHeader), aiffAudioHeader);
            case 4:
                return new CommentsChunk(chunkHeader, readChunkDataIntoBuffer(fileChannel, chunkHeader), aiffAudioHeader);
            case 5:
                return new NameChunk(chunkHeader, readChunkDataIntoBuffer(fileChannel, chunkHeader), aiffAudioHeader);
            case 6:
                return new AuthorChunk(chunkHeader, readChunkDataIntoBuffer(fileChannel, chunkHeader), aiffAudioHeader);
            case 7:
                return new CopyrightChunk(chunkHeader, readChunkDataIntoBuffer(fileChannel, chunkHeader), aiffAudioHeader);
            case 8:
                return new AnnotationChunk(chunkHeader, readChunkDataIntoBuffer(fileChannel, chunkHeader), aiffAudioHeader);
            case 9:
                aiffAudioHeader.setAudioDataLength(chunkHeader.getSize());
                aiffAudioHeader.setAudioDataStartPosition(Long.valueOf(fileChannel.position()));
                aiffAudioHeader.setAudioDataEndPosition(Long.valueOf(fileChannel.position() + chunkHeader.getSize()));
                return null;
            default:
                return null;
        }
    }

    private boolean readChunk(FileChannel fileChannel, AiffAudioHeader aiffAudioHeader, String str) throws CannotReadException, IOException {
        logger.config(str + " Reading Info Chunk");
        ChunkHeader chunkHeader = new ChunkHeader(ByteOrder.BIG_ENDIAN);
        if (!chunkHeader.readHeader(fileChannel)) {
            return false;
        }
        logger.config(str + "Reading Next Chunk:" + chunkHeader.getID() + ":starting at:" + chunkHeader.getStartLocationInFile() + ":sizeIncHeader:" + (chunkHeader.getSize() + 8));
        Chunk chunkCreateChunk = createChunk(fileChannel, chunkHeader, aiffAudioHeader);
        if (chunkCreateChunk != null) {
            if (!chunkCreateChunk.readChunk()) {
                logger.severe(str + "ChunkReadFail:" + chunkHeader.getID());
                return false;
            }
        } else {
            if (chunkHeader.getSize() < 0) {
                String str2 = str + " Not a valid header, unable to read a sensible size:Header" + chunkHeader.getID() + "Size:" + chunkHeader.getSize();
                logger.severe(str2);
                throw new CannotReadException(str2);
            }
            fileChannel.position(fileChannel.position() + chunkHeader.getSize());
        }
        IffHeaderChunk.ensureOnEqualBoundary(fileChannel, chunkHeader);
        return true;
    }

    public GenericAudioHeader read(File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                logger.config(file + " Reading AIFF file size:" + Hex.asDecAndHex(channel.size()));
                AiffAudioHeader aiffAudioHeader = new AiffAudioHeader();
                new AiffFileHeader().readHeader(channel, aiffAudioHeader, file.toString());
                while (channel.position() < channel.size()) {
                    if (!readChunk(channel, aiffAudioHeader, file.toString())) {
                        logger.severe(file + " UnableToReadProcessChunk");
                        break;
                    }
                }
                calculateBitRate(aiffAudioHeader);
                AudioFileIO.closeQuietly(randomAccessFile2);
                return aiffAudioHeader;
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
