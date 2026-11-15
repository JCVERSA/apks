package com.transsion.audiotagger.tag.vorbiscomment;

import com.transsion.audiotagger.audio.exceptions.CannotReadException;
import com.transsion.audiotagger.audio.generic.Utils;
import com.transsion.audiotagger.logging.ErrorMessage;
import java.io.IOException;
import java.util.logging.Logger;

public class VorbisCommentReader {
    public static final int FIELD_COMMENT_LENGTH_LENGTH = 4;
    public static final int FIELD_USER_COMMENT_LIST_LENGTH = 4;
    public static final int FIELD_VENDOR_LENGTH_LENGTH = 4;
    public static final int FIELD_VENDOR_LENGTH_POS = 0;
    public static final int FIELD_VENDOR_STRING_POS = 4;
    private static final int JAUDIOTAGGER_MAX_COMMENT_LENGTH = 10000000;
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.tag.vorbiscomment.VorbisCommentReader");

    public VorbisCommentTag read(byte[] bArr, boolean z) throws CannotReadException, IOException {
        VorbisCommentTag vorbisCommentTag = new VorbisCommentTag();
        byte[] bArr2 = new byte[4];
        System.arraycopy(bArr, 0, bArr2, 0, 4);
        int intLE = Utils.getIntLE(bArr2);
        byte[] bArr3 = new byte[intLE];
        System.arraycopy(bArr, 4, bArr3, 0, intLE);
        vorbisCommentTag.setVendor(new String(bArr3, "UTF-8"));
        logger.config("Vendor is:" + vorbisCommentTag.getVendor());
        byte[] bArr4 = new byte[4];
        System.arraycopy(bArr, intLE + 4, bArr4, 0, 4);
        int i = intLE + 8;
        int intLE2 = Utils.getIntLE(bArr4);
        logger.config("Number of user comments:" + intLE2);
        for (int i2 = 0; i2 < intLE2; i2++) {
            byte[] bArr5 = new byte[4];
            System.arraycopy(bArr, i, bArr5, 0, 4);
            i += 4;
            int intLE3 = Utils.getIntLE(bArr5);
            logger.config("Next Comment Length:" + intLE3);
            if (intLE3 > 10000000) {
                logger.warning(ErrorMessage.VORBIS_COMMENT_LENGTH_TOO_LARGE.getMsg(Integer.valueOf(intLE3)));
                break;
            }
            if (intLE3 > bArr.length) {
                logger.warning(ErrorMessage.VORBIS_COMMENT_LENGTH_LARGE_THAN_HEADER.getMsg(Integer.valueOf(intLE3), Integer.valueOf(bArr.length)));
                break;
            }
            byte[] bArr6 = new byte[intLE3];
            System.arraycopy(bArr, i, bArr6, 0, intLE3);
            i += intLE3;
            VorbisCommentTagField vorbisCommentTagField = new VorbisCommentTagField(bArr6);
            logger.config("Adding:" + vorbisCommentTagField.getId());
            vorbisCommentTag.addField(vorbisCommentTagField);
        }
        if (!z || (bArr[i] & 1) == 1) {
            return vorbisCommentTag;
        }
        throw new CannotReadException(ErrorMessage.OGG_VORBIS_NO_FRAMING_BIT.getMsg(Integer.valueOf(bArr[i] & 1)));
    }
}
