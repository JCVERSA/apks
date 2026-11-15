package com.transsion.audiotagger.tag.datatype;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.id3.AbstractTagFrameBody;
import java.nio.charset.Charset;

public class StringSizeTerminated extends TextEncodedStringSizeTerminated {
    public StringSizeTerminated(String str, AbstractTagFrameBody abstractTagFrameBody) {
        super(str, abstractTagFrameBody);
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof StringSizeTerminated) && super.equals(obj);
    }

    @Override
    public Charset getTextEncodingCharSet() {
        return StandardCharsets.ISO_8859_1;
    }

    public StringSizeTerminated(StringSizeTerminated stringSizeTerminated) {
        super(stringSizeTerminated);
    }
}
