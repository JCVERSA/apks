package com.transsion.audiotagger.audio.asf.io;

import com.transsion.audiotagger.audio.asf.data.AudioStreamChunk;
import com.transsion.audiotagger.audio.asf.data.Chunk;
import com.transsion.audiotagger.audio.asf.data.GUID;
import com.transsion.audiotagger.audio.asf.data.StreamChunk;
import com.transsion.audiotagger.audio.asf.data.VideoStreamChunk;
import com.transsion.audiotagger.audio.asf.util.Utils;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;

public class StreamChunkReader implements ChunkReader {
    private static final GUID[] APPLYING = {GUID.GUID_STREAM};

    @Override
    public boolean canFail() {
        return true;
    }

    @Override
    public GUID[] getApplyingIds() {
        return (GUID[]) APPLYING.clone();
    }

    @Override
    public Chunk read(GUID guid, InputStream inputStream, long j) throws IOException {
        long j2;
        BigInteger bigInteger;
        long j3;
        StreamChunk streamChunk;
        BigInteger big64 = Utils.readBig64(inputStream);
        GUID guid2 = Utils.readGUID(inputStream);
        GUID guid3 = GUID.GUID_AUDIOSTREAM;
        if (!guid3.equals(guid2) && !GUID.GUID_VIDEOSTREAM.equals(guid2)) {
            return null;
        }
        GUID guid4 = Utils.readGUID(inputStream);
        long uint64 = Utils.readUINT64(inputStream);
        long uint32 = Utils.readUINT32(inputStream);
        long uint33 = Utils.readUINT32(inputStream);
        int uint16 = Utils.readUINT16(inputStream);
        int i = uint16 & 127;
        boolean z = (uint16 & 32768) != 0;
        inputStream.skip(4L);
        if (guid3.equals(guid2)) {
            AudioStreamChunk audioStreamChunk = new AudioStreamChunk(big64);
            long uint17 = Utils.readUINT16(inputStream);
            long uint18 = Utils.readUINT16(inputStream);
            long uint34 = Utils.readUINT32(inputStream);
            long uint35 = Utils.readUINT32(inputStream);
            long uint19 = Utils.readUINT16(inputStream);
            int uint110 = Utils.readUINT16(inputStream);
            j2 = uint32;
            int uint111 = Utils.readUINT16(inputStream);
            byte[] bArr = new byte[uint111];
            inputStream.read(bArr);
            audioStreamChunk.setCompressionFormat(uint17);
            audioStreamChunk.setChannelCount(uint18);
            audioStreamChunk.setSamplingRate(uint34);
            audioStreamChunk.setAverageBytesPerSec(uint35);
            audioStreamChunk.setErrorConcealment(guid4);
            audioStreamChunk.setBlockAlignment(uint19);
            audioStreamChunk.setBitsPerSample(uint110);
            audioStreamChunk.setCodecData(bArr);
            j3 = uint111 + 18;
            streamChunk = audioStreamChunk;
            bigInteger = big64;
        } else {
            j2 = uint32;
            bigInteger = big64;
            VideoStreamChunk videoStreamChunk = new VideoStreamChunk(bigInteger);
            long uint36 = Utils.readUINT32(inputStream);
            long uint37 = Utils.readUINT32(inputStream);
            inputStream.skip(1L);
            inputStream.skip(2L);
            inputStream.skip(16L);
            byte[] bArr2 = new byte[4];
            inputStream.read(bArr2);
            videoStreamChunk.setPictureWidth(uint36);
            videoStreamChunk.setPictureHeight(uint37);
            videoStreamChunk.setCodecId(bArr2);
            j3 = 31;
            streamChunk = videoStreamChunk;
        }
        streamChunk.setStreamNumber(i);
        streamChunk.setStreamSpecificDataSize(uint33);
        streamChunk.setTypeSpecificDataSize(j2);
        streamChunk.setTimeOffset(uint64);
        streamChunk.setContentEncrypted(z);
        streamChunk.setPosition(j);
        inputStream.skip(((bigInteger.longValue() - 24) - j3) - 54);
        return streamChunk;
    }
}
