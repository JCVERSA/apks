package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.valuepair.TextEncoding;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import org.apache.commons.io.ByteOrderMark;

public class TextEncodedStringNullTerminated extends AbstractString {
    public TextEncodedStringNullTerminated(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof TextEncodedStringNullTerminated) && super.equals(obj);
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
        int i2;
        int iPosition;
        if (i >= bArr.length) {
            throw new InvalidDataTypeException("Unable to find null terminated string");
        }
        AbstractDataType.logger.finer("Reading from array starting from offset:" + i);
        Charset textEncodingCharSet = getTextEncodingCharSet();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i, bArr.length - i);
        boolean z = false;
        boolean z2 = StandardCharsets.ISO_8859_1 == textEncodingCharSet || StandardCharsets.UTF_8 == textEncodingCharSet;
        while (true) {
            if (!byteBufferWrap.hasRemaining()) {
                i2 = 0;
                break;
            }
            if (byteBufferWrap.get() == 0) {
                if (z2) {
                    byteBufferWrap.mark();
                    byteBufferWrap.reset();
                    iPosition = byteBufferWrap.position() - 1;
                    AbstractDataType.logger.finest("Null terminator found starting at:" + iPosition);
                } else if (!byteBufferWrap.hasRemaining()) {
                    byteBufferWrap.mark();
                    byteBufferWrap.reset();
                    iPosition = byteBufferWrap.position() - 1;
                    AbstractDataType.logger.warning("UTF16:Should be two null terminator marks but only found one starting at:" + iPosition);
                } else if (byteBufferWrap.get() == 0) {
                    byteBufferWrap.mark();
                    byteBufferWrap.reset();
                    iPosition = byteBufferWrap.position() - 2;
                    AbstractDataType.logger.finest("UTF16:Null terminator found starting  at:" + iPosition);
                }
                i2 = iPosition;
                z = true;
                break;
            }
            if (!z2 && byteBufferWrap.hasRemaining()) {
                byteBufferWrap.get();
            }
        }
        if (!z) {
            throw new InvalidDataTypeException("Unable to find null terminated string");
        }
        AbstractDataType.logger.finest("End Position is:" + i2 + "Offset:" + i);
        int i3 = i2 - i;
        int i4 = i3 + 1;
        if (!z2) {
            i4 = i3 + 2;
        }
        setSize(i4);
        AbstractDataType.logger.finest("Text size is:" + i3);
        if (i3 == 0) {
            this.value = "";
        } else {
            ByteBuffer byteBufferSlice = ByteBuffer.wrap(bArr, i, i3).slice();
            CharBuffer charBufferAllocate = CharBuffer.allocate(i3);
            CharsetDecoder correctDecoder = getCorrectDecoder(byteBufferSlice);
            CoderResult coderResultDecode = correctDecoder.decode(byteBufferSlice, charBufferAllocate, true);
            if (coderResultDecode.isError()) {
                AbstractDataType.logger.warning("Problem decoding text encoded null terminated string:" + coderResultDecode.toString());
            }
            correctDecoder.flush(charBufferAllocate);
            charBufferAllocate.flip();
            this.value = charBufferAllocate.toString();
        }
        AbstractDataType.logger.config("Read NullTerminatedString:" + this.value + " size inc terminator:" + i4);
    }

    @Override
    public byte[] writeByteArray() {
        byte[] bArr;
        AbstractDataType.logger.config("Writing NullTerminatedString." + this.value);
        Charset textEncodingCharSet = getTextEncodingCharSet();
        try {
            if (!StandardCharsets.UTF_16.equals(textEncodingCharSet)) {
                CharsetEncoder charsetEncoderNewEncoder = textEncodingCharSet.newEncoder();
                CodingErrorAction codingErrorAction = CodingErrorAction.IGNORE;
                charsetEncoderNewEncoder.onMalformedInput(codingErrorAction);
                charsetEncoderNewEncoder.onUnmappableCharacter(codingErrorAction);
                ByteBuffer byteBufferEncode = charsetEncoderNewEncoder.encode(CharBuffer.wrap(((String) this.value) + (char) 0));
                bArr = new byte[byteBufferEncode.limit()];
                byteBufferEncode.get(bArr, 0, byteBufferEncode.limit());
            } else if (TagOptionSingleton.getInstance().isEncodeUTF16BomAsLittleEndian()) {
                CharsetEncoder charsetEncoderNewEncoder2 = StandardCharsets.UTF_16LE.newEncoder();
                CodingErrorAction codingErrorAction2 = CodingErrorAction.IGNORE;
                charsetEncoderNewEncoder2.onMalformedInput(codingErrorAction2);
                charsetEncoderNewEncoder2.onUnmappableCharacter(codingErrorAction2);
                ByteBuffer byteBufferEncode2 = charsetEncoderNewEncoder2.encode(CharBuffer.wrap(ByteOrderMark.UTF_BOM + ((String) this.value) + (char) 0));
                bArr = new byte[byteBufferEncode2.limit()];
                byteBufferEncode2.get(bArr, 0, byteBufferEncode2.limit());
            } else {
                CharsetEncoder charsetEncoderNewEncoder3 = StandardCharsets.UTF_16BE.newEncoder();
                CodingErrorAction codingErrorAction3 = CodingErrorAction.IGNORE;
                charsetEncoderNewEncoder3.onMalformedInput(codingErrorAction3);
                charsetEncoderNewEncoder3.onUnmappableCharacter(codingErrorAction3);
                ByteBuffer byteBufferEncode3 = charsetEncoderNewEncoder3.encode(CharBuffer.wrap(ByteOrderMark.UTF_BOM + ((String) this.value) + (char) 0));
                bArr = new byte[byteBufferEncode3.limit()];
                byteBufferEncode3.get(bArr, 0, byteBufferEncode3.limit());
            }
            setSize(bArr.length);
            return bArr;
        } catch (CharacterCodingException e) {
            AbstractDataType.logger.severe(e.getMessage() + StringUtils.PROCESS_POSTFIX_DELIMITER + textEncodingCharSet.name() + StringUtils.PROCESS_POSTFIX_DELIMITER + this.value);
            throw new RuntimeException(e);
        }
    }

    public TextEncodedStringNullTerminated(String str, AbstractTagFrameBody abstractTagFrameBody, String str2) {
        super(str, abstractTagFrameBody, str2);
    }

    public TextEncodedStringNullTerminated(TextEncodedStringNullTerminated textEncodedStringNullTerminated) {
        super(textEncodedStringNullTerminated);
    }
}
