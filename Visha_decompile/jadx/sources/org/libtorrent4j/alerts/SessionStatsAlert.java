package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.session_stats_alert;

public final class SessionStatsAlert extends AbstractAlert<session_stats_alert> {
    public SessionStatsAlert(session_stats_alert session_stats_alertVar) {
        super(session_stats_alertVar);
    }

    public long value(int i) {
        return ((session_stats_alert) this.alert).get_value(i);
    }
}
