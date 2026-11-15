package com.transsion.audiotagger.tag.id3.valuepair;

import com.transsion.audiotagger.tag.datatype.AbstractIntStringValuePair;

public class InterpolationTypes extends AbstractIntStringValuePair {
    private static InterpolationTypes interpolationTypes;

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private InterpolationTypes() {
        this.idToValue.put((I) 0, "Band");
        this.idToValue.put((I) 1, "Linear");
        createMaps();
    }

    public static InterpolationTypes getInstanceOf() {
        if (interpolationTypes == null) {
            interpolationTypes = new InterpolationTypes();
        }
        return interpolationTypes;
    }
}
