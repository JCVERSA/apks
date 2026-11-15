package com.transsion.audiotagger.audio.aiff;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import com.transsion.audiotagger.logging.Hex;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.logging.Logger;

public class AiffFileHeader {
    private static final String FORM = "FORM";
    private static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.aiff.AudioFileHeader");

    private void readFileType(ByteBuffer byteBuffer, AiffAudioHeader aiffAudioHeader) throws CannotReadException, IOException {
        String fourBytesAsChars = Utils.readFourBytesAsChars(byteBuffer);
        AiffType aiffType = AiffType.AIFF;
        if (aiffType.getCode().equals(fourBytesAsChars)) {
            aiffAudioHeader.setFileType(aiffType);
            return;
        }
        AiffType aiffType2 = AiffType.AIFC;
        if (aiffType2.getCode().equals(fourBytesAsChars)) {
            aiffAudioHeader.setFileType(aiffType2);
            return;
        }
        throw new CannotReadException("Invalid AIFF file: Incorrect file type info " + fourBytesAsChars);
    }

    public long readHeader(FileChannel fileChannel, AiffAudioHeader aiffAudioHeader, String str) throws CannotReadException, IOException {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(IffHeaderChunk.HEADER_LENGTH);
        byteBufferAllocateDirect.order(ByteOrder.BIG_ENDIAN);
        int i = fileChannel.read(byteBufferAllocateDirect);
        byteBufferAllocateDirect.position(0);
        if (i < IffHeaderChunk.HEADER_LENGTH) {
            throw new IOException(str + " AIFF:Unable to read required number of databytes read:" + i + ":required:" + IffHeaderChunk.HEADER_LENGTH);
        }
        String fourBytesAsChars = Utils.readFourBytesAsChars(byteBufferAllocateDirect);
        if (!FORM.equals(fourBytesAsChars)) {
            throw new CannotReadException(str + "Not an AIFF file: incorrect signature " + fourBytesAsChars);
        }
        long j = byteBufferAllocateDirect.getInt();
        logger.severe(str + " Reading AIFF header size:" + Hex.asDecAndHex(j));
        readFileType(byteBufferAllocateDirect, aiffAudioHeader);
        return j - ((long) IffHeaderChunk.TYPE_LENGTH);
    }
}
