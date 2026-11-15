package com.transsion.audiotagger.tag.id3.valuepair;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

public enum StandardIPLSKey {
    ENGINEER("engineer"),
    MIXER("mix"),
    DJMIXER("DJ-mix"),
    PRODUCER("producer"),
    ARRANGER("arranger");

    private static final Map<String, StandardIPLSKey> lookup = new HashMap();
    private String key;

    static {
        for (StandardIPLSKey standardIPLSKey : EnumSet.allOf(StandardIPLSKey.class)) {
            lookup.put(standardIPLSKey.getKey(), standardIPLSKey);
        }
    }

    StandardIPLSKey(String str) {
        this.key = str;
    }

    public static StandardIPLSKey get(String str) {
        return lookup.get(str);
    }

    public static boolean isKey(String str) {
        return get(str) != null;
    }

    public String getKey() {
        return this.key;
    }
}
