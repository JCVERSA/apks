package com.transsion.audiotagger.audio.wav;

import java.util.HashMap;
import java.util.Map;

public enum WavChunkType {
    FORMAT("fmt ", "Basic Audio Information"),
    FACT("fact", "Only strictly required for Non-PCM or compressed data"),
    DATA("data", "Stores the actual audio data"),
    LIST("LIST", "List chunk, wraps round other chunks"),
    INFO("INFO", "Original metadata implementation"),
    ID3("id3 ", "Stores metadata in ID3 chunk"),
    CORRUPT_LIST("iLIS", "List chunk, wraps round other chunks"),
    CORRUPT_ID3_LATE("d3 \u0000", "Stores metadata in ID3 chunk"),
    CORRUPT_ID3_EARLY("\u0000id3", "Stores metadata in ID3 chunk");

    private static final Map<String, WavChunkType> CODE_TYPE_MAP = new HashMap();
    private String code;
    private String description;

    WavChunkType(String str, String str2) {
        this.code = str;
        this.description = str2;
    }

    public static synchronized WavChunkType get(String str) {
        try {
            if (CODE_TYPE_MAP.isEmpty()) {
                for (WavChunkType wavChunkType : values()) {
                    CODE_TYPE_MAP.put(wavChunkType.getCode(), wavChunkType);
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
