package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.logging.Level;

public class MultipleTextEncodedStringNullTerminated extends AbstractDataType {

    public static class Values {
        private List<String> valueList = new ArrayList();

        public void add(String str) {
            this.valueList.add(str);
        }

        public List<String> getList() {
            return this.valueList;
        }

        public int getNumberOfValues() {
            return this.valueList.size();
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            ListIterator<String> listIterator = this.valueList.listIterator();
            while (listIterator.hasNext()) {
                stringBuffer.append(listIterator.next());
                if (listIterator.hasNext()) {
                    stringBuffer.append(StringUtils.COMMA);
                }
            }
            return stringBuffer.toString();
        }
    }

    public MultipleTextEncodedStringNullTerminated(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
        this.value = new Values();
    }

    public boolean canBeEncoded() {
        ListIterator<String> listIterator = ((Values) this.value).getList().listIterator();
        while (listIterator.hasNext()) {
            if (!new TextEncodedStringNullTerminated(this.identifier, this.frameBody, listIterator.next()).canBeEncoded()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof MultipleTextEncodedStringNullTerminated) && super.equals(obj);
    }

    @Override
    public int getSize() {
        return this.size;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        AbstractDataType.logger.finer("Reading MultipleTextEncodedStringNullTerminated from array from offset:" + i);
        do {
            try {
                TextEncodedStringNullTerminated textEncodedStringNullTerminated = new TextEncodedStringNullTerminated(this.identifier, this.frameBody);
                textEncodedStringNullTerminated.readByteArray(bArr, i);
                if (textEncodedStringNullTerminated.getSize() != 0) {
                    ((Values) this.value).add((String) textEncodedStringNullTerminated.getValue());
                    this.size += textEncodedStringNullTerminated.getSize();
                    i += textEncodedStringNullTerminated.getSize();
                }
            } catch (InvalidDataTypeException unused) {
            }
            AbstractDataType.logger.finer("Read  MultipleTextEncodedStringNullTerminated:" + this.value + " size:" + this.size);
            return;
        } while (this.size != 0);
        AbstractDataType.logger.warning("No null terminated Strings found");
        throw new InvalidDataTypeException("No null terminated Strings found");
    }

    @Override
    public byte[] writeByteArray() {
        AbstractDataType.logger.finer("Writing MultipleTextEncodedStringNullTerminated");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ListIterator<String> listIterator = ((Values) this.value).getList().listIterator();
            int size = 0;
            while (listIterator.hasNext()) {
                TextEncodedStringNullTerminated textEncodedStringNullTerminated = new TextEncodedStringNullTerminated(this.identifier, this.frameBody, listIterator.next());
                byteArrayOutputStream.write(textEncodedStringNullTerminated.writeByteArray());
                size += textEncodedStringNullTerminated.getSize();
            }
            this.size = size;
            AbstractDataType.logger.finer("Written MultipleTextEncodedStringNullTerminated");
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            AbstractDataType.logger.log(Level.SEVERE, "IOException in MultipleTextEncodedStringNullTerminated when writing byte array", (Throwable) e);
            throw new RuntimeException(e);
        }
    }

    public MultipleTextEncodedStringNullTerminated(TextEncodedStringSizeTerminated textEncodedStringSizeTerminated) {
        super(textEncodedStringSizeTerminated);
        this.value = new Values();
    }

    public MultipleTextEncodedStringNullTerminated(MultipleTextEncodedStringNullTerminated multipleTextEncodedStringNullTerminated) {
        super(multipleTextEncodedStringNullTerminated);
    }
}
