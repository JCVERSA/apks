package com.transsion.audiotagger.tag.id3.valuepair;

import com.transsion.audiotagger.tag.datatype.AbstractIntStringValuePair;

public class ChannelTypes extends AbstractIntStringValuePair {
    private static ChannelTypes channelTypes;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private ChannelTypes() {
        this.idToValue.put((I) 0, "Other");
        this.idToValue.put((I) 1, "Master volume");
        this.idToValue.put((I) 2, "Front right");
        this.idToValue.put((I) 3, "Front left");
        this.idToValue.put((I) 4, "Back right");
        this.idToValue.put((I) 5, "Back left");
        this.idToValue.put((I) 6, "Front centre");
        this.idToValue.put((I) 7, "Back centre");
        this.idToValue.put((I) 8, "Subwoofer");
        createMaps();
    }

    public static ChannelTypes getInstanceOf() {
        if (channelTypes == null) {
            channelTypes = new ChannelTypes();
        }
        return channelTypes;
    }
}
