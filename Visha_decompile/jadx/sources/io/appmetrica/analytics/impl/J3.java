package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import java.util.HashMap;
import java.util.Map;

public final class J3 implements L5 {
    @Override
    public final Map<String, String> invoke(ContentValues contentValues) {
        String asString = contentValues.getAsString("clids");
        HashMap mapC = AbstractC2712mb.c(asString);
        if (AbstractC2623im.a(mapC)) {
            return mapC;
        }
        Vi.a("Passed clids (" + asString + ") are invalid.", new Object[0]);
        return null;
    }
}
