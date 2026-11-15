package io.appmetrica.analytics.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;
import java.util.Locale;

public abstract class H5 {
    public static final List a = CollectionUtils.createSortedListWithoutRepetitions(TtmlNode.ATTR_ID, "type", "report_request_parameters", "session_description");
    public static final String b;
    public static final String c;

    static {
        Locale locale = Locale.US;
        b = String.format(locale, "SELECT DISTINCT %s  FROM %s WHERE %s >=0 AND (SELECT count() FROM %5$s WHERE %5$s.%6$s = %2$s.%3$s AND %5$s.%7$s = %2$s.%4$s) > 0 ORDER BY %3$s LIMIT 1", "report_request_parameters", "sessions", TtmlNode.ATTR_ID, "type", "events", "session_id", "session_type");
        c = String.format(locale, "(select count(%s.%s) from %s where %s.%s = %s.%s) = 0 and cast(%s as integer) < ?", "events", TtmlNode.ATTR_ID, "events", "events", "session_id", "sessions", TtmlNode.ATTR_ID, TtmlNode.ATTR_ID);
    }
}
