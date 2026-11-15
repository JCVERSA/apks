package com.transsion.audiotagger.audio.dsf;

import com.transsion.audiotagger.tag.id3.AbstractID3v2Tag;
import java.util.HashMap;
import java.util.Map;

public enum DsfChunkType {
    DSD("DSD "),
    FORMAT("fmt "),
    DATA("data"),
    ID3(AbstractID3v2Tag.TAGID);

    private static final Map<String, DsfChunkType> CODE_TYPE_MAP = new HashMap();
    private String code;

    DsfChunkType(String str) {
        this.code = str;
    }

    public static synchronized DsfChunkType get(String str) {
        try {
            if (CODE_TYPE_MAP.isEmpty()) {
                for (DsfChunkType dsfChunkType : values()) {
                    CODE_TYPE_MAP.put(dsfChunkType.getCode(), dsfChunkType);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return CODE_TYPE_MAP.get(str);
    }

    public String getCode() {
        return this.code;
    }
}
