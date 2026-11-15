package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.io.ByteOrderMark;

public class TextEncodedStringSizeTerminated extends AbstractString {
    public TextEncodedStringSizeTerminated(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
    }

    public static List<String> splitByNullSeperator(String str) {
        List<String> listAsList = Arrays.asList(str.split("\\u0000"));
        if (listAsList.size() != 0) {
            return listAsList;
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add("");
        return arrayList;
    }

    public void addValue(String str) {
        setValue(this.value + "\u0000" + str);
    }

    public void checkTrailingNull(List<String> list, String str) {
        if (TagOptionSingleton.getInstance().isRemoveTrailingTerminatorOnWrite() || str.length() <= 0 || str.charAt(str.length() - 1) != 0) {
            return;
        }
        list.set(list.size() - 1, list.get(list.size() - 1) + (char) 0);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TextEncodedStringSizeTerminated) && super.equals(obj);
    }

    public int getNumberOfValues() {
        return splitByNullSeperator((String) this.value).size();
    }

    public String getValueAtIndex(int i) {
        return splitByNullSeperator((String) this.value).get(i);
    }

    public String getValueWithoutTrailingNull() {
        List<String> listSplitByNullSeperator = splitByNullSeperator((String) this.value);
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < listSplitByNullSeperator.size(); i++) {
            if (i != 0) {
                stringBuffer.append("\u0000");
            }
            stringBuffer.append(listSplitByNullSeperator.get(i));
        }
        return stringBuffer.toString();
    }

    public List<String> getValues() {
        return splitByNullSeperator((String) this.value);
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        AbstractDataType.logger.finest("Reading from array from offset:" + i);
        int length = bArr.length - i;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i, bArr2, 0, length);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr2);
        CharBuffer charBufferAllocate = CharBuffer.allocate(bArr.length - i);
        CharsetDecoder correctDecoder = getCorrectDecoder(byteBufferWrap);
        CoderResult coderResultDecode = correctDecoder.decode(byteBufferWrap, charBufferAllocate, true);
        if (coderResultDecode.isError()) {
            AbstractDataType.logger.warning("Decoding error:" + coderResultDecode.toString());
        }
        correctDecoder.flush(charBufferAllocate);
        charBufferAllocate.flip();
        if (StandardCharsets.UTF_16.equals(getTextEncodingCharSet())) {
            this.value = charBufferAllocate.toString().replace("\ufeff", "").replace("\ufffe", "");
        } else {
            this.value = charBufferAllocate.toString();
        }
        setSize(bArr.length - i);
        AbstractDataType.logger.finest("Read SizeTerminatedString:" + this.value + " size:" + this.size);
    }

    public void stripTrailingNull() {
        if (TagOptionSingleton.getInstance().isRemoveTrailingTerminatorOnWrite()) {
            String str = (String) this.value;
            if (str.length() <= 0 || str.charAt(str.length() - 1) != 0) {
                return;
            }
            this.value = str.substring(0, str.length() - 1);
        }
    }

    @Override
    public byte[] writeByteArray() {
        Charset textEncodingCharSet = getTextEncodingCharSet();
        try {
            stripTrailingNull();
            String str = (String) this.value;
            Charset charset = StandardCharsets.UTF_16.equals(textEncodingCharSet) ? TagOptionSingleton.getInstance().isEncodeUTF16BomAsLittleEndian() ? StandardCharsets.UTF_16LE : StandardCharsets.UTF_16BE : null;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate((str.length() + 3) * 3);
            List<String> listSplitByNullSeperator = splitByNullSeperator(str);
            checkTrailingNull(listSplitByNullSeperator, str);
            for (int i = 0; i < listSplitByNullSeperator.size(); i++) {
                String str2 = listSplitByNullSeperator.get(i);
                if (StandardCharsets.UTF_16LE.equals(charset)) {
                    byteBufferAllocate.put(writeStringUTF16LEBOM(str2, i, listSplitByNullSeperator.size()));
                } else if (StandardCharsets.UTF_16BE.equals(charset)) {
                    byteBufferAllocate.put(writeStringUTF16BEBOM(str2, i, listSplitByNullSeperator.size()));
                } else {
                    CharsetEncoder charsetEncoderNewEncoder = textEncodingCharSet.newEncoder();
                    CodingErrorAction codingErrorAction = CodingErrorAction.IGNORE;
                    charsetEncoderNewEncoder.onMalformedInput(codingErrorAction);
                    charsetEncoderNewEncoder.onUnmappableCharacter(codingErrorAction);
                    byteBufferAllocate.put(writeString(charsetEncoderNewEncoder, str2, i, listSplitByNullSeperator.size()));
                }
            }
            byteBufferAllocate.flip();
            int iLimit = byteBufferAllocate.limit();
            byte[] bArr = new byte[iLimit];
            byteBufferAllocate.rewind();
            byteBufferAllocate.get(bArr, 0, byteBufferAllocate.limit());
            setSize(iLimit);
            return bArr;
        } catch (CharacterCodingException e) {
            AbstractDataType.logger.severe(e.getMessage() + StringUtils.PROCESS_POSTFIX_DELIMITER + textEncodingCharSet + StringUtils.PROCESS_POSTFIX_DELIMITER + this.value);
            throw new RuntimeException(e);
        }
    }

    public ByteBuffer writeString(CharsetEncoder charsetEncoder, String str, int i, int i2) throws CharacterCodingException {
        ByteBuffer byteBufferEncode;
        if (i + 1 == i2) {
            byteBufferEncode = charsetEncoder.encode(CharBuffer.wrap(str));
        } else {
            byteBufferEncode = charsetEncoder.encode(CharBuffer.wrap(str + (char) 0));
        }
        byteBufferEncode.rewind();
        return byteBufferEncode;
    }

    public ByteBuffer writeStringUTF16BEBOM(String str, int i, int i2) throws CharacterCodingException {
        ByteBuffer byteBufferEncode;
        CharsetEncoder charsetEncoderNewEncoder = StandardCharsets.UTF_16BE.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.IGNORE;
        charsetEncoderNewEncoder.onMalformedInput(codingErrorAction);
        charsetEncoderNewEncoder.onUnmappableCharacter(codingErrorAction);
        if (i + 1 == i2) {
            byteBufferEncode = charsetEncoderNewEncoder.encode(CharBuffer.wrap(ByteOrderMark.UTF_BOM + str));
        } else {
            byteBufferEncode = charsetEncoderNewEncoder.encode(CharBuffer.wrap(ByteOrderMark.UTF_BOM + str + (char) 0));
        }
        byteBufferEncode.rewind();
        return byteBufferEncode;
    }

    public ByteBuffer writeStringUTF16LEBOM(String str, int i, int i2) throws CharacterCodingException {
        ByteBuffer byteBufferEncode;
        CharsetEncoder charsetEncoderNewEncoder = StandardCharsets.UTF_16LE.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.IGNORE;
        charsetEncoderNewEncoder.onMalformedInput(codingErrorAction);
        charsetEncoderNewEncoder.onUnmappableCharacter(codingErrorAction);
        if (i + 1 == i2) {
            byteBufferEncode = charsetEncoderNewEncoder.encode(CharBuffer.wrap(ByteOrderMark.UTF_BOM + str));
        } else {
            byteBufferEncode = charsetEncoderNewEncoder.encode(CharBuffer.wrap(ByteOrderMark.UTF_BOM + str + (char) 0));
        }
        byteBufferEncode.rewind();
        return byteBufferEncode;
    }

    public TextEncodedStringSizeTerminated(TextEncodedStringSizeTerminated textEncodedStringSizeTerminated) {
        super(textEncodedStringSizeTerminated);
    }
}
