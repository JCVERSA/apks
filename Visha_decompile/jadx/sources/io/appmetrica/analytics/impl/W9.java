package io.appmetrica.analytics.impl;

import android.content.pm.FeatureInfo;
import androidx.annotation.NonNull;

public final class W9 extends X9 {
    @Override
    public final Y9 b(@NonNull FeatureInfo featureInfo) {
        return new Y9(featureInfo.name, -1, (featureInfo.flags & 1) != 0);
    }
}
