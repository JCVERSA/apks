package io.appmetrica.analytics.impl;

import android.content.pm.FeatureInfo;
import androidx.annotation.NonNull;

public abstract class X9 {
    public final Y9 a(@NonNull FeatureInfo featureInfo) {
        int i;
        if (featureInfo.name == null && (i = featureInfo.reqGlEsVersion) != 0) {
            return new Y9("openGlFeature", i, (featureInfo.flags & 1) != 0);
        }
        return b(featureInfo);
    }

    public abstract Y9 b(FeatureInfo featureInfo);
}
