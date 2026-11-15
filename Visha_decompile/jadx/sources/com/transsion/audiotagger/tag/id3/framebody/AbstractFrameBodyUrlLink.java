package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.StringSizeTerminated;
import com.transsion.audiotagger.tag.id3.AbstractTagItem;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.charset.CharsetEncoder;

public abstract class AbstractFrameBodyUrlLink extends AbstractID3v2FrameBody {
    public AbstractFrameBodyUrlLink() {
    }

    private String encodeURL(String str) {
        try {
            String[] strArrSplit = str.split("(?<!/)/(?!/)", -1);
            StringBuffer stringBuffer = new StringBuffer(strArrSplit[0]);
            for (int i = 1; i < strArrSplit.length; i++) {
                stringBuffer.append("/");
                stringBuffer.append(URLEncoder.encode(strArrSplit[i], "utf-8"));
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
            AbstractTagItem.logger.warning("Uable to url encode because utf-8 charset not available:" + e.getMessage());
            return str;
        }
    }

    public String getUrlLink() {
        return (String) getObjectValue(DataTypes.OBJ_URLLINK);
    }

    @Override
    public String getUserFriendlyValue() {
        return getUrlLink();
    }

    public void setUrlLink(String str) {
        if (str == null) {
            throw new IllegalArgumentException(ErrorMessage.GENERAL_INVALID_NULL_ARGUMENT.getMsg());
        }
        setObjectValue(DataTypes.OBJ_URLLINK, str);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new StringSizeTerminated(DataTypes.OBJ_URLLINK, this));
    }

    @Override
    public void write(ByteArrayOutputStream byteArrayOutputStream) {
        CharsetEncoder charsetEncoderNewEncoder = StandardCharsets.ISO_8859_1.newEncoder();
        String urlLink = getUrlLink();
        if (!charsetEncoderNewEncoder.canEncode(urlLink)) {
            setUrlLink(encodeURL(urlLink));
            if (charsetEncoderNewEncoder.canEncode(getUrlLink())) {
                AbstractTagItem.logger.warning(ErrorMessage.MP3_URL_SAVED_ENCODED.getMsg(urlLink, getUrlLink()));
            } else {
                AbstractTagItem.logger.warning(ErrorMessage.MP3_UNABLE_TO_ENCODE_URL.getMsg(urlLink));
                setUrlLink("");
            }
        }
        super.write(byteArrayOutputStream);
    }

    public AbstractFrameBodyUrlLink(AbstractFrameBodyUrlLink abstractFrameBodyUrlLink) {
        super(abstractFrameBodyUrlLink);
    }

    public AbstractFrameBodyUrlLink(String str) {
        setObjectValue(DataTypes.OBJ_URLLINK, str);
    }

    public AbstractFrameBodyUrlLink(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
