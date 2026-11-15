package com.transsion.audiotagger.tag.reference;

import com.transsion.audiotagger.tag.datatype.AbstractIntStringValuePair;

public class PictureTypes extends AbstractIntStringValuePair {
    public static final Integer DEFAULT_ID = 3;
    public static final String DEFAULT_VALUE = "Cover (front)";
    public static final int PICTURE_TYPE_FIELD_SIZE = 1;
    private static PictureTypes pictureTypes;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private PictureTypes() {
        this.idToValue.put((I) 0, "Other");
        this.idToValue.put((I) 1, "32x32 pixels 'file icon' (PNG only)");
        this.idToValue.put((I) 2, "Other file icon");
        this.idToValue.put((I) 3, DEFAULT_VALUE);
        this.idToValue.put((I) 4, "Cover (back)");
        this.idToValue.put((I) 5, "Leaflet page");
        this.idToValue.put((I) 6, "Media (e.g. label side of CD)");
        this.idToValue.put((I) 7, "Lead artist/lead performer/soloist");
        this.idToValue.put((I) 8, "Artist/performer");
        this.idToValue.put((I) 9, "Conductor");
        this.idToValue.put((I) 10, "Band/Orchestra");
        this.idToValue.put((I) 11, "Composer");
        this.idToValue.put((I) 12, "Lyricist/text writer");
        this.idToValue.put((I) 13, "Recording Location");
        this.idToValue.put((I) 14, "During recording");
        this.idToValue.put((I) 15, "During performance");
        this.idToValue.put((I) 16, "Movie/video screen capture");
        this.idToValue.put((I) 17, "A bright coloured fish");
        this.idToValue.put((I) 18, "Illustration");
        this.idToValue.put((I) 19, "Band/artist logotype");
        this.idToValue.put((I) 20, "Publisher/Studio logotype");
        createMaps();
    }

    public static PictureTypes getInstanceOf() {
        if (pictureTypes == null) {
            pictureTypes = new PictureTypes();
        }
        return pictureTypes;
    }
}
