package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.valuepair.TextEncoding;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import org.apache.commons.io.ByteOrderMark;

public class StringFixedLength extends AbstractString {
    public StringFixedLength(String str, AbstractTagFrameBody abstractTagFrameBody, int i) {
        super(str, abstractTagFrameBody);
        if (i >= 0) {
            setSize(i);
            return;
        }
        throw new IllegalArgumentException("size is less than zero: " + i);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof StringFixedLength) && this.size == ((StringFixedLength) obj).size && super.equals(obj);
    }

    @Override
    public Charset getTextEncodingCharSet() {
        byte textEncoding = getBody().getTextEncoding();
        Charset charsetForId = TextEncoding.getInstanceOf().getCharsetForId(textEncoding);
        AbstractDataType.logger.finest("text encoding:" + ((int) textEncoding) + " charset:" + charsetForId.name());
        return charsetForId;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        AbstractDataType.logger.config("Reading from array from offset:" + i);
        try {
            CharsetDecoder charsetDecoderNewDecoder = getTextEncodingCharSet().newDecoder();
            AbstractDataType.logger.finest("Array length is:" + bArr.length + "offset is:" + i + "Size is:" + this.size);
            int length = bArr.length - i;
            int i2 = this.size;
            if (length < i2) {
                throw new InvalidDataTypeException("byte array is to small to retrieve string of declared length:" + this.size);
            }
            String string = charsetDecoderNewDecoder.decode(ByteBuffer.wrap(bArr, i, i2)).toString();
            if (string == null) {
                throw new NullPointerException("String is null");
            }
            this.value = string;
            AbstractDataType.logger.config("Read StringFixedLength:" + this.value);
        } catch (CharacterCodingException e) {
            AbstractDataType.logger.severe(e.getMessage());
            this.value = "";
        }
    }

    @Override
    public byte[] writeByteArray() {
        int i = 0;
        if (this.value == null) {
            AbstractDataType.logger.warning("Value of StringFixedlength Field is null using default value instead");
            byte[] bArr = new byte[this.size];
            while (i < this.size) {
                bArr[i] = 32;
                i++;
            }
            return bArr;
        }
        try {
            Charset textEncodingCharSet = getTextEncodingCharSet();
            ByteBuffer byteBufferEncode = StandardCharsets.UTF_16.equals(textEncodingCharSet) ? StandardCharsets.UTF_16LE.newEncoder().encode(CharBuffer.wrap(ByteOrderMark.UTF_BOM + ((String) this.value))) : textEncodingCharSet.newEncoder().encode(CharBuffer.wrap((String) this.value));
            if (byteBufferEncode == null) {
                AbstractDataType.logger.warning("There was a serious problem writing the following StringFixedlength Field:" + this.value + ":using default value instead");
                byte[] bArr2 = new byte[this.size];
                while (i < this.size) {
                    bArr2[i] = 32;
                    i++;
                }
                return bArr2;
            }
            if (byteBufferEncode.limit() == this.size) {
                byte[] bArr3 = new byte[byteBufferEncode.limit()];
                byteBufferEncode.get(bArr3, 0, byteBufferEncode.limit());
                return bArr3;
            }
            if (byteBufferEncode.limit() > this.size) {
                AbstractDataType.logger.warning("There was a problem writing the following StringFixedlength Field:" + this.value + " when converted to bytes has length of:" + byteBufferEncode.limit() + " but field was defined with length of:" + this.size + " too long so stripping extra length");
                int i2 = this.size;
                byte[] bArr4 = new byte[i2];
                byteBufferEncode.get(bArr4, 0, i2);
                return bArr4;
            }
            AbstractDataType.logger.warning("There was a problem writing the following StringFixedlength Field:" + this.value + " when converted to bytes has length of:" + byteBufferEncode.limit() + " but field was defined with length of:" + this.size + " too short so padding with spaces to make up extra length");
            byte[] bArr5 = new byte[this.size];
            byteBufferEncode.get(bArr5, 0, byteBufferEncode.limit());
            for (int iLimit = byteBufferEncode.limit(); iLimit < this.size; iLimit++) {
                bArr5[iLimit] = 32;
            }
            return bArr5;
        } catch (CharacterCodingException e) {
            AbstractDataType.logger.warning("There was a problem writing the following StringFixedlength Field:" + this.value + StringUtils.PROCESS_POSTFIX_DELIMITER + e.getMessage() + "using default value instead");
            byte[] bArr6 = new byte[this.size];
            while (i < this.size) {
                bArr6[i] = 32;
                i++;
            }
            return bArr6;
        }
    }

    public StringFixedLength(StringFixedLength stringFixedLength) {
        super(stringFixedLength);
        this.size = stringFixedLength.size;
    }
}
