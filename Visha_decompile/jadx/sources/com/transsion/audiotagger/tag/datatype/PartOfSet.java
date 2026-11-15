package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.tag.id3.valuepair.TextEncoding;
import com.transsion.audiotagger.tag.options.PadNumberOption;
import com.transsion.audiotagger.utils.EqualsUtil;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.ByteOrderMark;

public class PartOfSet extends AbstractString {
    public PartOfSet(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PartOfSet) {
            return EqualsUtil.areEqual(this.value, ((PartOfSet) obj).value);
        }
        return false;
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
        AbstractDataType.logger.finest("Reading from array from offset:" + i);
        CharsetDecoder charsetDecoderNewDecoder = getTextEncodingCharSet().newDecoder();
        ByteBuffer byteBufferSlice = ByteBuffer.wrap(bArr, i, bArr.length - i).slice();
        CharBuffer charBufferAllocate = CharBuffer.allocate(bArr.length - i);
        charsetDecoderNewDecoder.reset();
        CoderResult coderResultDecode = charsetDecoderNewDecoder.decode(byteBufferSlice, charBufferAllocate, true);
        if (coderResultDecode.isError()) {
            AbstractDataType.logger.warning("Decoding error:" + coderResultDecode.toString());
        }
        charsetDecoderNewDecoder.flush(charBufferAllocate);
        charBufferAllocate.flip();
        this.value = new PartOfSetValue(charBufferAllocate.toString());
        setSize(bArr.length - i);
        AbstractDataType.logger.config("Read SizeTerminatedString:" + this.value + " size:" + this.size);
    }

    @Override
    public String toString() {
        return this.value.toString();
    }

    @Override
    public byte[] writeByteArray() {
        CharsetEncoder charsetEncoderNewEncoder;
        String string = getValue().toString();
        try {
            if (TagOptionSingleton.getInstance().isRemoveTrailingTerminatorOnWrite() && string.length() > 0 && string.charAt(string.length() - 1) == 0) {
                string = string.substring(0, string.length() - 1);
            }
            Charset textEncodingCharSet = getTextEncodingCharSet();
            if (StandardCharsets.UTF_16.equals(textEncodingCharSet)) {
                charsetEncoderNewEncoder = StandardCharsets.UTF_16LE.newEncoder();
                string = ByteOrderMark.UTF_BOM + string;
            } else {
                charsetEncoderNewEncoder = textEncodingCharSet.newEncoder();
            }
            CodingErrorAction codingErrorAction = CodingErrorAction.IGNORE;
            charsetEncoderNewEncoder.onMalformedInput(codingErrorAction);
            charsetEncoderNewEncoder.onUnmappableCharacter(codingErrorAction);
            ByteBuffer byteBufferEncode = charsetEncoderNewEncoder.encode(CharBuffer.wrap(string));
            int iLimit = byteBufferEncode.limit();
            byte[] bArr = new byte[iLimit];
            byteBufferEncode.get(bArr, 0, byteBufferEncode.limit());
            setSize(iLimit);
            return bArr;
        } catch (CharacterCodingException e) {
            AbstractDataType.logger.severe(e.getMessage());
            throw new RuntimeException(e);
        }
    }

    public static class PartOfSetValue {
        private static final String SEPARATOR = "/";
        private Integer count;
        private String extra;
        private String rawCount;
        private String rawText;
        private String rawTotal;
        private Integer total;
        private static final Pattern trackNoPatternWithTotalCount = Pattern.compile("([0-9]+)/([0-9]+)(.*)", 2);
        private static final Pattern trackNoPattern = Pattern.compile("([0-9]+)(.*)", 2);

        public PartOfSetValue() {
            this.rawText = "";
        }

        private void initFromValue(String str) {
            try {
                Matcher matcher = trackNoPatternWithTotalCount.matcher(str);
                if (matcher.matches()) {
                    this.extra = matcher.group(3);
                    this.count = Integer.valueOf(Integer.parseInt(matcher.group(1)));
                    this.rawCount = matcher.group(1);
                    this.total = Integer.valueOf(Integer.parseInt(matcher.group(2)));
                    this.rawTotal = matcher.group(2);
                    return;
                }
                Matcher matcher2 = trackNoPattern.matcher(str);
                if (matcher2.matches()) {
                    this.extra = matcher2.group(2);
                    this.count = Integer.valueOf(Integer.parseInt(matcher2.group(1)));
                    this.rawCount = matcher2.group(1);
                }
            } catch (NumberFormatException unused) {
                this.count = 0;
            }
        }

        private void padNumber(StringBuffer stringBuffer, Integer num, PadNumberOption padNumberOption) {
            if (num != null) {
                if (padNumberOption == PadNumberOption.PAD_ONE_ZERO) {
                    if (num.intValue() <= 0 || num.intValue() >= 10) {
                        stringBuffer.append(num.intValue());
                        return;
                    } else {
                        stringBuffer.append("0");
                        stringBuffer.append(num);
                        return;
                    }
                }
                if (padNumberOption == PadNumberOption.PAD_TWO_ZERO) {
                    if (num.intValue() > 0 && num.intValue() < 10) {
                        stringBuffer.append("00");
                        stringBuffer.append(num);
                        return;
                    } else if (num.intValue() <= 9 || num.intValue() >= 100) {
                        stringBuffer.append(num.intValue());
                        return;
                    } else {
                        stringBuffer.append("0");
                        stringBuffer.append(num);
                        return;
                    }
                }
                if (padNumberOption == PadNumberOption.PAD_THREE_ZERO) {
                    if (num.intValue() > 0 && num.intValue() < 10) {
                        stringBuffer.append("000");
                        stringBuffer.append(num);
                        return;
                    }
                    if (num.intValue() > 9 && num.intValue() < 100) {
                        stringBuffer.append("00");
                        stringBuffer.append(num);
                    } else if (num.intValue() <= 99 || num.intValue() >= 1000) {
                        stringBuffer.append(num.intValue());
                    } else {
                        stringBuffer.append("0");
                        stringBuffer.append(num);
                    }
                }
            }
        }

        private void resetValueFromCounts() {
            StringBuffer stringBuffer = new StringBuffer();
            String str = this.rawCount;
            if (str != null) {
                stringBuffer.append(str);
            } else {
                stringBuffer.append("0");
            }
            if (this.rawTotal != null) {
                stringBuffer.append(SEPARATOR + this.rawTotal);
            }
            String str2 = this.extra;
            if (str2 != null) {
                stringBuffer.append(str2);
            }
            this.rawText = stringBuffer.toString();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PartOfSetValue)) {
                return false;
            }
            PartOfSetValue partOfSetValue = (PartOfSetValue) obj;
            return EqualsUtil.areEqual(getCount(), partOfSetValue.getCount()) && EqualsUtil.areEqual(getTotal(), partOfSetValue.getTotal());
        }

        public Integer getCount() {
            return this.count;
        }

        public String getCountAsText() {
            StringBuffer stringBuffer = new StringBuffer();
            if (!TagOptionSingleton.getInstance().isPadNumbers()) {
                return this.rawCount;
            }
            padNumber(stringBuffer, this.count, TagOptionSingleton.getInstance().getPadNumberTotalLength());
            return stringBuffer.toString();
        }

        public String getRawValue() {
            return this.rawText;
        }

        public Integer getTotal() {
            return this.total;
        }

        public String getTotalAsText() {
            StringBuffer stringBuffer = new StringBuffer();
            if (!TagOptionSingleton.getInstance().isPadNumbers()) {
                return this.rawTotal;
            }
            padNumber(stringBuffer, this.total, TagOptionSingleton.getInstance().getPadNumberTotalLength());
            return stringBuffer.toString();
        }

        public void setCount(Integer num) {
            this.count = num;
            this.rawCount = num.toString();
            resetValueFromCounts();
        }

        public void setRawValue(String str) {
            this.rawText = str;
            initFromValue(str);
        }

        public void setTotal(Integer num) {
            this.total = num;
            this.rawTotal = num.toString();
            resetValueFromCounts();
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            if (!TagOptionSingleton.getInstance().isPadNumbers()) {
                return this.rawText;
            }
            Integer num = this.count;
            if (num != null) {
                padNumber(stringBuffer, num, TagOptionSingleton.getInstance().getPadNumberTotalLength());
            } else if (this.total != null) {
                padNumber(stringBuffer, 0, TagOptionSingleton.getInstance().getPadNumberTotalLength());
            }
            if (this.total != null) {
                stringBuffer.append(SEPARATOR);
                padNumber(stringBuffer, this.total, TagOptionSingleton.getInstance().getPadNumberTotalLength());
            }
            String str = this.extra;
            if (str != null) {
                stringBuffer.append(str);
            }
            return stringBuffer.toString();
        }

        public PartOfSetValue(String str) {
            this.rawText = str;
            initFromValue(str);
        }

        public void setCount(String str) {
            try {
                this.count = Integer.valueOf(Integer.parseInt(str));
                this.rawCount = str;
                resetValueFromCounts();
            } catch (NumberFormatException unused) {
            }
        }

        public void setTotal(String str) {
            try {
                this.total = Integer.valueOf(Integer.parseInt(str));
                this.rawTotal = str;
                resetValueFromCounts();
            } catch (NumberFormatException unused) {
            }
        }

        public PartOfSetValue(Integer num, Integer num2) {
            this.count = num;
            this.rawCount = num.toString();
            this.total = num2;
            this.rawTotal = num2.toString();
            resetValueFromCounts();
        }
    }

    public PartOfSet(PartOfSet partOfSet) {
        super(partOfSet);
    }

    @Override
    public PartOfSetValue getValue() {
        return (PartOfSetValue) this.value;
    }
}
