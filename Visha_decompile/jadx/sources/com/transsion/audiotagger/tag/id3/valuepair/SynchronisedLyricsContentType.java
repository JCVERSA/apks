package com.transsion.audiotagger.tag.id3.valuepair;

import com.transsion.audiotagger.tag.datatype.AbstractIntStringValuePair;

public class SynchronisedLyricsContentType extends AbstractIntStringValuePair {
    public static final int CONTENT_KEY_FIELD_SIZE = 1;
    private static SynchronisedLyricsContentType eventTimingTypes;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private SynchronisedLyricsContentType() {
        this.idToValue.put((I) 0, "other");
        this.idToValue.put((I) 1, "lyrics");
        this.idToValue.put((I) 2, "text transcription");
        this.idToValue.put((I) 3, "movement/part name");
        this.idToValue.put((I) 4, "events");
        this.idToValue.put((I) 5, "chord");
        this.idToValue.put((I) 6, "trivia");
        this.idToValue.put((I) 7, "URLs to webpages");
        this.idToValue.put((I) 8, "URLs to images");
        createMaps();
    }

    public static SynchronisedLyricsContentType getInstanceOf() {
        if (eventTimingTypes == null) {
            eventTimingTypes = new SynchronisedLyricsContentType();
        }
        return eventTimingTypes;
    }
}
