package com.transsion.audiotagger.audio.ogg.util;

import com.transsion.audiotagger.StandardCharsets;
import java.util.logging.Logger;

public class VorbisSetupHeader implements VorbisHeader {
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.audio.ogg.atom");
    private boolean isValid = false;

    public VorbisSetupHeader(byte[] bArr) {
        decodeHeader(bArr);
    }

    public void decodeHeader(byte[] bArr) {
        byte b = bArr[0];
        logger.fine("packetType" + ((int) b));
        String str = new String(bArr, 1, 6, StandardCharsets.ISO_8859_1);
        if (b == VorbisPacketType.SETUP_HEADER.getType() && str.equals(VorbisHeader.CAPTURE_PATTERN)) {
            this.isValid = true;
        }
    }

    public boolean isValid() {
        return this.isValid;
    }
}
