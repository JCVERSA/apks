package com.transsion.audiotagger.audio.asf.data;

import com.transsion.audiotagger.audio.asf.util.Utils;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class EncodingChunk extends Chunk {
    private final List<String> strings;

    public EncodingChunk(BigInteger bigInteger) {
        super(GUID.GUID_ENCODING, bigInteger);
        this.strings = new ArrayList();
    }

    public void addString(String str) {
        this.strings.add(str);
    }

    public Collection<String> getStrings() {
        return new ArrayList(this.strings);
    }

    @Override
    public String prettyPrint(String str) {
        StringBuilder sb = new StringBuilder(super.prettyPrint(str));
        this.strings.iterator();
        for (String str2 : this.strings) {
            sb.append(str);
            sb.append("  | : ");
            sb.append(str2);
            sb.append(Utils.LINE_SEPARATOR);
        }
        return sb.toString();
    }
}
