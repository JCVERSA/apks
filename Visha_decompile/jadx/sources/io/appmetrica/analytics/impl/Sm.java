package io.appmetrica.analytics.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

public abstract class Sm {
    public static final List a = CollectionUtils.createSortedListWithoutRepetitions(TtmlNode.ATTR_ID, "scope", "data", "timestamp");
}
