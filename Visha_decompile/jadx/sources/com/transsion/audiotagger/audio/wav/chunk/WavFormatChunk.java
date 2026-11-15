package com.transsion.audiotagger.audio.wav.chunk;

import com.transsion.audiotagger.audio.generic.GenericAudioHeader;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.Chunk;
import com.transsion.audiotagger.audio.iff.ChunkHeader;
import com.transsion.audiotagger.audio.wav.WavSubFormat;
import com.transsion.audiotagger.logging.Hex;
import java.io.IOException;
import java.nio.ByteBuffer;

public class WavFormatChunk extends Chunk {
    private static final int EXTENSIBLE_DATA_SIZE = 22;
    private static final int EXTENSIBLE_DATA_SIZE_WE_NEED = 10;
    private static final int STANDARD_DATA_SIZE = 18;
    private static final String WAV_RIFF_ENCODING_PREPEND = "WAV-RIFF ";
    private int blockAlign;
    private int channelMask;
    private GenericAudioHeader info;
    private boolean isValid;
    private WavSubFormat wsf;

    public WavFormatChunk(ByteBuffer byteBuffer, ChunkHeader chunkHeader, GenericAudioHeader genericAudioHeader) throws IOException {
        super(byteBuffer, chunkHeader);
        this.isValid = false;
        this.info = genericAudioHeader;
    }

    @Override
    public boolean readChunk() throws IOException {
        int iU = Utils.u(this.chunkData.getShort());
        this.wsf = WavSubFormat.getByCode(Integer.valueOf(iU));
        this.info.setChannelNumber(Utils.u(this.chunkData.getShort()));
        this.info.setSamplingRate(this.chunkData.getInt());
        this.info.setByteRate(this.chunkData.getInt());
        GenericAudioHeader genericAudioHeader = this.info;
        genericAudioHeader.setBitRate((genericAudioHeader.getByteRate().intValue() * Utils.BITS_IN_BYTE_MULTIPLIER) / Utils.KILOBYTE_MULTIPLIER);
        this.info.setVariableBitRate(false);
        this.blockAlign = Utils.u(this.chunkData.getShort());
        this.info.setBitsPerSample(Utils.u(this.chunkData.getShort()));
        WavSubFormat wavSubFormat = this.wsf;
        if (wavSubFormat != null && wavSubFormat == WavSubFormat.FORMAT_EXTENSIBLE && Utils.u(this.chunkData.getShort()) == 22) {
            this.info.setBitsPerSample(Utils.u(this.chunkData.getShort()));
            this.channelMask = this.chunkData.getInt();
            this.wsf = WavSubFormat.getByCode(Integer.valueOf(Utils.u(this.chunkData.getShort())));
        }
        if (this.wsf == null) {
            this.info.setEncodingType("Unknown Sub Format Code:" + Hex.asHex(iU));
            return true;
        }
        if (this.info.getBitsPerSample() <= 0) {
            this.info.setEncodingType(this.wsf.getDescription());
            return true;
        }
        this.info.setEncodingType(this.wsf.getDescription() + " " + this.info.getBitsPerSample() + " bits");
        return true;
    }

    public String toString() {
        return "RIFF-WAVE Header:\nIs valid?: " + this.isValid;
    }
}
