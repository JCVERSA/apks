package com.transsion.audiotagger.audio.ogg.util;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.id3.AbstractID3v2Tag;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.logging.Logger;

public class OggInfoReader {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.ogg.atom");

    private int computeBitrate(int i, long j) {
        if (i == 0) {
            i = 1;
        }
        return (int) (((j / ((long) Utils.KILOBYTE_MULTIPLIER)) * ((long) Utils.BITS_IN_BYTE_MULTIPLIER)) / ((long) i));
    }

    public GenericAudioHeader read(RandomAccessFile randomAccessFile) throws CannotReadException, IOException {
        double absoluteGranulePosition;
        long filePointer = randomAccessFile.getFilePointer();
        GenericAudioHeader genericAudioHeader = new GenericAudioHeader();
        logger.fine("Started");
        byte[] bArr = OggPageHeader.CAPTURE_PATTERN;
        byte[] bArr2 = new byte[bArr.length];
        randomAccessFile.read(bArr2);
        if (!Arrays.equals(bArr2, bArr)) {
            randomAccessFile.seek(0L);
            if (!AbstractID3v2Tag.isId3Tag(randomAccessFile)) {
                throw new CannotReadException(ErrorMessage.OGG_HEADER_CANNOT_BE_FOUND.getMsg(new String(bArr2)));
            }
            randomAccessFile.read(bArr2);
            if (Arrays.equals(bArr2, bArr)) {
                filePointer = randomAccessFile.getFilePointer();
            }
        }
        randomAccessFile.seek(filePointer);
        randomAccessFile.seek(randomAccessFile.length() - 2);
        while (true) {
            if (randomAccessFile.getFilePointer() < 4) {
                absoluteGranulePosition = -1.0d;
                break;
            }
            int i = randomAccessFile.read();
            byte[] bArr3 = OggPageHeader.CAPTURE_PATTERN;
            if (i == bArr3[3]) {
                randomAccessFile.seek(randomAccessFile.getFilePointer() - 4);
                byte[] bArr4 = new byte[3];
                randomAccessFile.readFully(bArr4);
                if (bArr4[0] == bArr3[0] && bArr4[1] == bArr3[1] && bArr4[2] == bArr3[2]) {
                    randomAccessFile.seek(randomAccessFile.getFilePointer() - 3);
                    long filePointer2 = randomAccessFile.getFilePointer();
                    randomAccessFile.seek(randomAccessFile.getFilePointer() + 26);
                    int i2 = randomAccessFile.readByte() & 255;
                    randomAccessFile.seek(filePointer2);
                    byte[] bArr5 = new byte[i2 + 27];
                    randomAccessFile.readFully(bArr5);
                    OggPageHeader oggPageHeader = new OggPageHeader(bArr5);
                    randomAccessFile.seek(0L);
                    absoluteGranulePosition = oggPageHeader.getAbsoluteGranulePosition();
                    break;
                }
            }
            randomAccessFile.seek(randomAccessFile.getFilePointer() - 2);
        }
        if (absoluteGranulePosition == -1.0d) {
            throw new CannotReadException(ErrorMessage.OGG_VORBIS_NO_SETUP_BLOCK.getMsg());
        }
        int pageLength = OggPageHeader.read(randomAccessFile).getPageLength();
        byte[] bArr6 = new byte[pageLength];
        if (pageLength < 27) {
            throw new CannotReadException("Invalid Identification header for this Ogg File");
        }
        randomAccessFile.read(bArr6);
        VorbisIdentificationHeader vorbisIdentificationHeader = new VorbisIdentificationHeader(bArr6);
        genericAudioHeader.setPreciseLength((float) (absoluteGranulePosition / ((double) vorbisIdentificationHeader.getSamplingRate())));
        genericAudioHeader.setChannelNumber(vorbisIdentificationHeader.getChannelNumber());
        genericAudioHeader.setSamplingRate(vorbisIdentificationHeader.getSamplingRate());
        genericAudioHeader.setEncodingType(vorbisIdentificationHeader.getEncodingType());
        genericAudioHeader.setBitsPerSample(16);
        if (vorbisIdentificationHeader.getNominalBitrate() != 0 && vorbisIdentificationHeader.getMaxBitrate() == vorbisIdentificationHeader.getNominalBitrate() && vorbisIdentificationHeader.getMinBitrate() == vorbisIdentificationHeader.getNominalBitrate()) {
            genericAudioHeader.setBitRate(vorbisIdentificationHeader.getNominalBitrate() / 1000);
            genericAudioHeader.setVariableBitRate(false);
        } else if (vorbisIdentificationHeader.getNominalBitrate() != 0 && vorbisIdentificationHeader.getMaxBitrate() == 0 && vorbisIdentificationHeader.getMinBitrate() == 0) {
            genericAudioHeader.setBitRate(vorbisIdentificationHeader.getNominalBitrate() / 1000);
            genericAudioHeader.setVariableBitRate(true);
        } else {
            genericAudioHeader.setBitRate(computeBitrate(genericAudioHeader.getTrackLength(), randomAccessFile.length()));
            genericAudioHeader.setVariableBitRate(true);
        }
        return genericAudioHeader;
    }
}
