package com.transsion.audiotagger.tag.id3.valuepair;

import com.transsion.audiotagger.tag.datatype.AbstractIntStringValuePair;

public class ReceivedAsTypes extends AbstractIntStringValuePair {
    public static final int RECEIVED_AS_FIELD_SIZE = 1;
    private static ReceivedAsTypes receivedAsTypes;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private ReceivedAsTypes() {
        this.idToValue.put((I) 0, "Other");
        this.idToValue.put((I) 1, "Standard CD album with other songs");
        this.idToValue.put((I) 2, "Compressed audio on CD");
        this.idToValue.put((I) 3, "File over the Internet");
        this.idToValue.put((I) 4, "Stream over the Internet");
        this.idToValue.put((I) 5, "As note sheets");
        this.idToValue.put((I) 6, "As note sheets in a book with other sheets");
        this.idToValue.put((I) 7, "Music on other media");
        this.idToValue.put((I) 8, "Non-musical merchandise");
        createMaps();
    }

    public static ReceivedAsTypes getInstanceOf() {
        if (receivedAsTypes == null) {
            receivedAsTypes = new ReceivedAsTypes();
        }
        return receivedAsTypes;
    }
}
