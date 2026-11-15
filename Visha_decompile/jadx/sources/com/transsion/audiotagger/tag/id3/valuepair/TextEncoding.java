package com.transsion.audiotagger.tag.id3.valuepair;

import com.transsion.audiotagger.StandardCharsets;
import com.transsion.audiotagger.tag.datatype.AbstractIntStringValuePair;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

public class TextEncoding extends AbstractIntStringValuePair {
    public static final byte ISO_8859_1 = 0;
    public static final int TEXT_ENCODING_FIELD_SIZE = 1;
    public static final byte UTF_16 = 1;
    public static final byte UTF_16BE = 2;
    public static final byte UTF_8 = 3;
    private static TextEncoding textEncodings;
    private final Map<Integer, Charset> idToCharset;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private TextEncoding() {
        HashMap map = new HashMap();
        this.idToCharset = map;
        map.put(0, StandardCharsets.ISO_8859_1);
        map.put(1, StandardCharsets.UTF_16);
        map.put(2, StandardCharsets.UTF_16BE);
        map.put(3, StandardCharsets.UTF_8);
        for (Map.Entry entry : map.entrySet()) {
            this.idToValue.put((I) ((Integer) entry.getKey()), (V) ((Charset) entry.getValue()).name());
        }
        createMaps();
    }

    public static synchronized TextEncoding getInstanceOf() {
        try {
            if (textEncodings == null) {
                textEncodings = new TextEncoding();
            }
        } catch (Throwable th) {
            throw th;
        }
        return textEncodings;
    }

    public Charset getCharsetForId(int i) {
        return this.idToCharset.get(Integer.valueOf(i));
    }

    public Integer getIdForCharset(Charset charset) {
        return (Integer) this.valueToId.get(charset.name());
    }
}
