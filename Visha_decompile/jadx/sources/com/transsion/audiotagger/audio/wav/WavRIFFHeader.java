package com.transsion.audiotagger.audio.wav;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public class WavRIFFHeader {
    public static final String RIFF_SIGNATURE = "RIFF";
    public static final String WAVE_SIGNATURE = "WAVE";

    public static boolean isValidHeader(FileChannel fileChannel) throws CannotReadException, IOException {
        long size = fileChannel.size() - fileChannel.position();
        int i = IffHeaderChunk.HEADER_LENGTH;
        if (size < i) {
            throw new CannotReadException("This is not a WAV File (<12 bytes)");
        }
        ByteBuffer fileDataIntoBufferLE = Utils.readFileDataIntoBufferLE(fileChannel, i);
        if (!Utils.readFourBytesAsChars(fileDataIntoBufferLE).equals(RIFF_SIGNATURE)) {
            return false;
        }
        fileDataIntoBufferLE.getInt();
        return Utils.readFourBytesAsChars(fileDataIntoBufferLE).equals(WAVE_SIGNATURE);
    }
}
