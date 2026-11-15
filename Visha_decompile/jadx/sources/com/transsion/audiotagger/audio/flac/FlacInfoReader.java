package com.transsion.audiotagger.audio.flac;

import com.transsion.audiotagger.audio.AudioFileIO;
import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.flac.metadatablock.BlockType;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockDataStreamInfo;
import com.transsion.audiotagger.audio.flac.metadatablock.MetadataBlockHeader;
import com.transsion.audiotagger.audio.generic.Utils;
import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class FlacInfoReader {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.flac");

    private int computeBitrate(long j, float f) {
        return (int) (((j / ((long) Utils.KILOBYTE_MULTIPLIER)) * ((long) Utils.BITS_IN_BYTE_MULTIPLIER)) / f);
    }

    public int countMetaBlocks(File file) throws Throwable {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                new FlacStreamReader(channel, file.getPath() + " ").findStream();
                boolean zIsLastBlock = false;
                int i = 0;
                while (!zIsLastBlock) {
                    MetadataBlockHeader header = MetadataBlockHeader.readHeader(channel);
                    logger.config(file + ":Found block:" + header.getBlockType());
                    channel.position(channel.position() + ((long) header.getDataLength()));
                    zIsLastBlock = header.isLastBlock();
                    i++;
                }
                AudioFileIO.closeQuietly(randomAccessFile2);
                return i;
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

    public FlacAudioHeader read(File file) throws Throwable {
        logger.config(file.getPath() + ":start");
        Closeable closeable = null;
        MetadataBlockDataStreamInfo metadataBlockDataStreamInfo = null;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile.getChannel();
                new FlacStreamReader(channel, file.getPath()).findStream();
                boolean zIsLastBlock = false;
                while (!zIsLastBlock) {
                    MetadataBlockHeader header = MetadataBlockHeader.readHeader(channel);
                    logger.info(file.getPath() + " " + header.toString());
                    if (header.getBlockType() == BlockType.STREAMINFO) {
                        metadataBlockDataStreamInfo = new MetadataBlockDataStreamInfo(header, channel);
                        if (!metadataBlockDataStreamInfo.isValid()) {
                            throw new CannotReadException(file.getPath() + ":FLAC StreamInfo not valid");
                        }
                    } else {
                        channel.position(channel.position() + ((long) header.getDataLength()));
                    }
                    zIsLastBlock = header.isLastBlock();
                }
                long jPosition = channel.position();
                if (metadataBlockDataStreamInfo == null) {
                    throw new CannotReadException(file.getPath() + ":Unable to find Flac StreamInfo");
                }
                FlacAudioHeader flacAudioHeader = new FlacAudioHeader();
                flacAudioHeader.setNoOfSamples(Long.valueOf(metadataBlockDataStreamInfo.getNoOfSamples()));
                flacAudioHeader.setPreciseLength(metadataBlockDataStreamInfo.getPreciseLength());
                flacAudioHeader.setChannelNumber(metadataBlockDataStreamInfo.getNoOfChannels());
                flacAudioHeader.setSamplingRate(metadataBlockDataStreamInfo.getSamplingRate());
                flacAudioHeader.setBitsPerSample(metadataBlockDataStreamInfo.getBitsPerSample());
                flacAudioHeader.setEncodingType(metadataBlockDataStreamInfo.getEncodingType());
                flacAudioHeader.setLossless(true);
                flacAudioHeader.setMd5(metadataBlockDataStreamInfo.getMD5Signature());
                flacAudioHeader.setAudioDataLength(channel.size() - jPosition);
                flacAudioHeader.setAudioDataStartPosition(Long.valueOf(jPosition));
                flacAudioHeader.setAudioDataEndPosition(Long.valueOf(channel.size()));
                flacAudioHeader.setBitRate(computeBitrate(flacAudioHeader.getAudioDataLength().longValue(), metadataBlockDataStreamInfo.getPreciseLength()));
                AudioFileIO.closeQuietly(randomAccessFile);
                return flacAudioHeader;
            } catch (Throwable th) {
                th = th;
                closeable = randomAccessFile;
                AudioFileIO.closeQuietly(closeable);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
