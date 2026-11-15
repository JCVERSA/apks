package com.transsion.audiotagger.audio.mp3;

import androidx.core.view.MotionEventCompat;
import com.transsion.audiotagger.audio.AudioFile;
import com.transsion.audiotagger.audio.exceptions.InvalidAudioFrameException;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class VbriFrame {
    private static final int BYTE_1 = 0;
    private static final int BYTE_2 = 1;
    private static final int BYTE_3 = 2;
    private static final int BYTE_4 = 3;
    public static final int MAX_BUFFER_SIZE_NEEDED_TO_READ_VBRI = 156;
    private static final int VBRI_AUDIOSIZE_BUFFER_SIZE = 4;
    private static final int VBRI_DELAY_BUFFER_SIZE = 2;
    private static final int VBRI_FRAMECOUNT_BUFFER_SIZE = 4;
    private static final int VBRI_HEADER_BUFFER_SIZE = 120;
    private static final int VBRI_IDENTIFIER_BUFFER_SIZE = 4;
    private static final int VBRI_OFFSET = 36;
    private static final int VBRI_QUALITY_BUFFER_SIZE = 2;
    private static final int VBRI_TOC_ENTRY_BUFFER_SIZE = 2;
    private static final byte[] VBRI_VBR_ID = {86, 66, 82, 73};
    private ByteBuffer header;
    private LameFrame lameFrame;
    private boolean vbr = false;
    private int frameCount = -1;
    private int audioSize = -1;

    private VbriFrame(ByteBuffer byteBuffer) {
        this.header = byteBuffer;
        byteBuffer.rewind();
        byteBuffer.position(10);
        setAudioSize();
        setFrameCount();
    }

    public static ByteBuffer isVbriFrame(ByteBuffer byteBuffer, MPEGFrameHeader mPEGFrameHeader) {
        int iPosition = byteBuffer.position();
        AudioFile.logger.finest("Checking VBRI Frame at" + iPosition);
        byteBuffer.position(iPosition + 36);
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        byteBuffer.position(iPosition);
        byte[] bArr = new byte[4];
        byteBufferSlice.get(bArr);
        if (!Arrays.equals(bArr, VBRI_VBR_ID)) {
            return null;
        }
        AudioFile.logger.finest("Found VBRI Frame");
        return byteBufferSlice;
    }

    public static VbriFrame parseVBRIFrame(ByteBuffer byteBuffer) throws InvalidAudioFrameException {
        return new VbriFrame(byteBuffer);
    }

    private void setAudioSize() {
        byte[] bArr = new byte[4];
        this.header.get(bArr);
        this.audioSize = (bArr[3] & 255) | ((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    private void setFrameCount() {
        byte[] bArr = new byte[4];
        this.header.get(bArr);
        this.frameCount = (bArr[3] & 255) | ((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    public final int getAudioSize() {
        return this.audioSize;
    }

    public String getEncoder() {
        return "Fraunhofer";
    }

    public final int getFrameCount() {
        return this.frameCount;
    }

    public final boolean isVbr() {
        return true;
    }

    public String toString() {
        return "VBRIheader vbr:" + this.vbr + " frameCount:" + this.frameCount + " audioFileSize:" + this.audioSize + " encoder:" + getEncoder();
    }
}
