package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.tag.InvalidDataTypeException;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import com.transsion.audiotagger.utils.EqualsUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;

public class PairedTextEncodedStringNullTerminated extends AbstractDataType {

    public static class ValuePairs {
        private List<Pair> mapping = new ArrayList();

        public void add(Pair pair) {
            this.mapping.add(pair);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof ValuePairs) {
                return EqualsUtil.areEqual(getNumberOfValues(), ((ValuePairs) obj).getNumberOfValues());
            }
            return false;
        }

        public List<Pair> getMapping() {
            return this.mapping;
        }

        public int getNumberOfPairs() {
            return this.mapping.size();
        }

        public int getNumberOfValues() {
            return this.mapping.size();
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            for (Pair pair : this.mapping) {
                stringBuffer.append(pair.getKey() + ':' + pair.getValue() + ',');
            }
            if (stringBuffer.length() > 0) {
                stringBuffer.setLength(stringBuffer.length() - 1);
            }
            return stringBuffer.toString();
        }

        public void add(String str, String str2) {
            this.mapping.add(new Pair(str, str2));
        }
    }

    public PairedTextEncodedStringNullTerminated(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
        this.value = new ValuePairs();
    }

    public boolean canBeEncoded() {
        Iterator it = ((ValuePairs) this.value).mapping.iterator();
        while (it.hasNext()) {
            if (!new TextEncodedStringNullTerminated(this.identifier, this.frameBody, ((Pair) it.next()).getValue()).canBeEncoded()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PairedTextEncodedStringNullTerminated) {
            return EqualsUtil.areEqual(this.value, ((PairedTextEncodedStringNullTerminated) obj).value);
        }
        return false;
    }

    @Override
    public int getSize() {
        return this.size;
    }

    @Override
    public void readByteArray(byte[] bArr, int i) throws InvalidDataTypeException {
        AbstractDataType.logger.finer("Reading PairTextEncodedStringNullTerminated from array from offset:" + i);
        do {
            try {
                TextEncodedStringNullTerminated textEncodedStringNullTerminated = new TextEncodedStringNullTerminated(this.identifier, this.frameBody);
                textEncodedStringNullTerminated.readByteArray(bArr, i);
                this.size += textEncodedStringNullTerminated.getSize();
                i += textEncodedStringNullTerminated.getSize();
                if (textEncodedStringNullTerminated.getSize() != 0) {
                    try {
                        TextEncodedStringNullTerminated textEncodedStringNullTerminated2 = new TextEncodedStringNullTerminated(this.identifier, this.frameBody);
                        textEncodedStringNullTerminated2.readByteArray(bArr, i);
                        this.size += textEncodedStringNullTerminated2.getSize();
                        i += textEncodedStringNullTerminated2.getSize();
                        if (textEncodedStringNullTerminated2.getSize() != 0) {
                            ((ValuePairs) this.value).add((String) textEncodedStringNullTerminated.getValue(), (String) textEncodedStringNullTerminated2.getValue());
                        }
                    } catch (InvalidDataTypeException unused) {
                        if (i < bArr.length) {
                            TextEncodedStringSizeTerminated textEncodedStringSizeTerminated = new TextEncodedStringSizeTerminated(this.identifier, this.frameBody);
                            textEncodedStringSizeTerminated.readByteArray(bArr, i);
                            this.size += textEncodedStringSizeTerminated.getSize();
                            textEncodedStringSizeTerminated.getSize();
                            if (textEncodedStringSizeTerminated.getSize() != 0) {
                                ((ValuePairs) this.value).add((String) textEncodedStringNullTerminated.getValue(), (String) textEncodedStringSizeTerminated.getValue());
                            }
                        }
                    }
                }
            } catch (InvalidDataTypeException unused2) {
            }
            AbstractDataType.logger.finer("Read  PairTextEncodedStringNullTerminated:" + this.value + " size:" + this.size);
            return;
        } while (this.size != 0);
        AbstractDataType.logger.warning("No null terminated Strings found");
        throw new InvalidDataTypeException("No null terminated Strings found");
    }

    public String toString() {
        return this.value.toString();
    }

    @Override
    public byte[] writeByteArray() {
        AbstractDataType.logger.finer("Writing PairTextEncodedStringNullTerminated");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            int size = 0;
            for (Pair pair : ((ValuePairs) this.value).mapping) {
                TextEncodedStringNullTerminated textEncodedStringNullTerminated = new TextEncodedStringNullTerminated(this.identifier, this.frameBody, pair.getKey());
                byteArrayOutputStream.write(textEncodedStringNullTerminated.writeByteArray());
                int size2 = size + textEncodedStringNullTerminated.getSize();
                TextEncodedStringNullTerminated textEncodedStringNullTerminated2 = new TextEncodedStringNullTerminated(this.identifier, this.frameBody, pair.getValue());
                byteArrayOutputStream.write(textEncodedStringNullTerminated2.writeByteArray());
                size = size2 + textEncodedStringNullTerminated2.getSize();
            }
            this.size = size;
            AbstractDataType.logger.finer("Written PairTextEncodedStringNullTerminated");
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            AbstractDataType.logger.log(Level.SEVERE, "IOException in MultipleTextEncodedStringNullTerminated when writing byte array", (Throwable) e);
            throw new RuntimeException(e);
        }
    }

    @Override
    public ValuePairs getValue() {
        return (ValuePairs) this.value;
    }

    public PairedTextEncodedStringNullTerminated(TextEncodedStringSizeTerminated textEncodedStringSizeTerminated) {
        super(textEncodedStringSizeTerminated);
        this.value = new ValuePairs();
    }

    public PairedTextEncodedStringNullTerminated(PairedTextEncodedStringNullTerminated pairedTextEncodedStringNullTerminated) {
        super(pairedTextEncodedStringNullTerminated);
    }
}
