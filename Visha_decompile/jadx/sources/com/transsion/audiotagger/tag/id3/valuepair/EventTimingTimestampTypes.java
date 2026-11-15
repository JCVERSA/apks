package com.transsion.audiotagger.tag.id3.valuepair;

import com.transsion.audiotagger.tag.datatype.AbstractIntStringValuePair;

public class EventTimingTimestampTypes extends AbstractIntStringValuePair {
    public static final int TIMESTAMP_KEY_FIELD_SIZE = 1;
    private static EventTimingTimestampTypes eventTimingTimestampTypes;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private EventTimingTimestampTypes() {
        this.idToValue.put((I) 1, "Absolute time using MPEG [MPEG] frames as unit");
        this.idToValue.put((I) 2, "Absolute time using milliseconds as unit");
        createMaps();
    }

    public static EventTimingTimestampTypes getInstanceOf() {
        if (eventTimingTimestampTypes == null) {
            eventTimingTimestampTypes = new EventTimingTimestampTypes();
        }
        return eventTimingTimestampTypes;
    }
}
