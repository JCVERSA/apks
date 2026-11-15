package io.appmetrica.analytics.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

public abstract class F5 {
    public static final List a = CollectionUtils.createSortedListWithoutRepetitions(TtmlNode.ATTR_ID, "session_id", "session_type", "number_in_session", "type", "global_number", "time", "event_description");
}
