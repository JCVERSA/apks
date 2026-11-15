package com.transsion.audiotagger.audio.wav.chunk;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.audio.iff.IffHeaderChunk;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.wav.WavInfoTag;
import com.transsion.audiotagger.tag.wav.WavTag;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

public class WavInfoChunk {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.wav.WavInfoChunk");
    private String loggingName;
    private WavInfoTag wavInfoTag;

    public WavInfoChunk(WavTag wavTag, String str) {
        this.loggingName = str;
        WavInfoTag wavInfoTag = new WavInfoTag();
        this.wavInfoTag = wavInfoTag;
        wavTag.setInfoTag(wavInfoTag);
    }

    private static boolean isAlphabetic(int i) {
        return ((1086 >> Character.getType(i)) & 1) != 0;
    }

    public boolean readChunks(ByteBuffer byteBuffer) {
        while (byteBuffer.remaining() >= IffHeaderChunk.TYPE_LENGTH) {
            String fourBytesAsChars = Utils.readFourBytesAsChars(byteBuffer);
            if (fourBytesAsChars.trim().isEmpty()) {
                return true;
            }
            int i = byteBuffer.getInt();
            if (!isAlphabetic(fourBytesAsChars.charAt(0)) || !isAlphabetic(fourBytesAsChars.charAt(1)) || !isAlphabetic(fourBytesAsChars.charAt(2)) || !isAlphabetic(fourBytesAsChars.charAt(3))) {
                logger.severe(this.loggingName + "LISTINFO appears corrupt, ignoring:" + fourBytesAsChars + StringUtils.PROCESS_POSTFIX_DELIMITER + i);
                return false;
            }
            try {
                String string = Utils.getString(byteBuffer, 0, i, StandardCharsets.UTF_8);
                logger.config(this.loggingName + "Result:" + fourBytesAsChars + StringUtils.PROCESS_POSTFIX_DELIMITER + i + StringUtils.PROCESS_POSTFIX_DELIMITER + string + StringUtils.PROCESS_POSTFIX_DELIMITER);
                WavInfoIdentifier byCode = WavInfoIdentifier.getByCode(fourBytesAsChars);
                if (byCode != null && byCode.getFieldKey() != null) {
                    try {
                        this.wavInfoTag.setField(byCode.getFieldKey(), string);
                    } catch (FieldDataInvalidException e) {
                        logger.log(Level.SEVERE, this.loggingName + e.getMessage(), (Throwable) e);
                    }
                } else if (!fourBytesAsChars.trim().isEmpty()) {
                    this.wavInfoTag.addUnRecognizedField(fourBytesAsChars, string);
                }
                if (Utils.isOddLength(i) && byteBuffer.hasRemaining()) {
                    byteBuffer.get();
                }
            } catch (BufferUnderflowException e2) {
                logger.log(Level.SEVERE, this.loggingName + "LISTINFO appears corrupt, ignoring:" + e2.getMessage(), (Throwable) e2);
                return false;
            }
        }
        return true;
    }
}
