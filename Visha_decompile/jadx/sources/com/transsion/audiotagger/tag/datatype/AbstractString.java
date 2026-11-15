package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.valuepair.TextEncoding;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

public abstract class AbstractString extends AbstractDataType {
    public AbstractString(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
    }

    public boolean canBeEncoded() {
        CharsetEncoder charsetEncoderNewEncoder = TextEncoding.getInstanceOf().getCharsetForId(getBody().getTextEncoding()).newEncoder();
        if (charsetEncoderNewEncoder.canEncode((String) this.value)) {
            return true;
        }
        AbstractDataType.logger.finest("Failed Trying to decode" + this.value + "with" + charsetEncoderNewEncoder.toString());
        return false;
    }

    public CharsetDecoder getCorrectDecoder(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 2) {
            CharsetDecoder charsetDecoderNewDecoder = getTextEncodingCharSet().newDecoder();
            charsetDecoderNewDecoder.reset();
            return charsetDecoderNewDecoder;
        }
        if (getTextEncodingCharSet() != StandardCharsets.UTF_16) {
            CharsetDecoder charsetDecoderNewDecoder2 = getTextEncodingCharSet().newDecoder();
            charsetDecoderNewDecoder2.reset();
            return charsetDecoderNewDecoder2;
        }
        if (byteBuffer.getChar(0) == 65534 || byteBuffer.getChar(0) == 65279) {
            CharsetDecoder charsetDecoderNewDecoder3 = getTextEncodingCharSet().newDecoder();
            charsetDecoderNewDecoder3.reset();
            return charsetDecoderNewDecoder3;
        }
        if (byteBuffer.get(0) == 0) {
            CharsetDecoder charsetDecoderNewDecoder4 = StandardCharsets.UTF_16BE.newDecoder();
            charsetDecoderNewDecoder4.reset();
            return charsetDecoderNewDecoder4;
        }
        CharsetDecoder charsetDecoderNewDecoder5 = StandardCharsets.UTF_16LE.newDecoder();
        charsetDecoderNewDecoder5.reset();
        return charsetDecoderNewDecoder5;
    }

    @Override
    public int getSize() {
        return this.size;
    }

    public Charset getTextEncodingCharSet() {
        byte textEncoding = getBody().getTextEncoding();
        Charset charsetForId = TextEncoding.getInstanceOf().getCharsetForId(textEncoding);
        AbstractDataType.logger.finest("text encoding:" + ((int) textEncoding) + " charset:" + charsetForId.name());
        return charsetForId;
    }

    public void setSize(int i) {
        this.size = i;
    }

    public String toString() {
        return (String) this.value;
    }

    public AbstractString(String str, AbstractTagFrameBody abstractTagFrameBody, String str2) {
        super(str, abstractTagFrameBody, str2);
    }

    public AbstractString(AbstractString abstractString) {
        super(abstractString);
    }
}
