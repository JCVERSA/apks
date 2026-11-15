package org.proninyaroslav.libretorrent.core.model.session;

import org.libtorrent4j.alerts.Alert;
import org.libtorrent4j.alerts.AlertType;
import org.libtorrent4j.alerts.DhtLogAlert;
import org.libtorrent4j.alerts.LogAlert;
import org.libtorrent4j.alerts.PeerLogAlert;
import org.libtorrent4j.alerts.PortmapLogAlert;
import org.libtorrent4j.alerts.TorrentLogAlert;
import org.proninyaroslav.libretorrent.core.logger.LogEntry;
import org.proninyaroslav.libretorrent.core.logger.LogFilter;
import org.proninyaroslav.libretorrent.core.logger.Logger;
import org.proninyaroslav.libretorrent.core.model.session.SessionLogger;

public class SessionLogger extends Logger {
    private static int nextLogEntryId;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$libtorrent4j$alerts$AlertType;

        static {
            int[] iArr = new int[AlertType.values().length];
            $SwitchMap$org$libtorrent4j$alerts$AlertType = iArr;
            try {
                iArr[AlertType.LOG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.DHT_LOG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.PEER_LOG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.PORTMAP_LOG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.TORRENT_LOG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static class SessionFilterParams {
        final boolean filterDhtLog;
        final boolean filterPeerLog;
        final boolean filterPortmapLog;
        final boolean filterSessionLog;
        final boolean filterTorrentLog;

        public SessionFilterParams(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
            this.filterSessionLog = z;
            this.filterDhtLog = z2;
            this.filterPeerLog = z3;
            this.filterPortmapLog = z4;
            this.filterTorrentLog = z5;
        }
    }

    public enum SessionLogEntryType {
        SESSION_LOG,
        DHT_LOG,
        PEER_LOG,
        PORTMAP_LOG,
        TORRENT_LOG
    }

    public enum SessionLogFilter {
        SESSION(new LogFilter() {
            @Override
            public final boolean a(LogEntry logEntry) {
                return SessionLogger.SessionLogFilter.lambda$static$0(logEntry);
            }
        }),
        DHT(new LogFilter() {
            @Override
            public final boolean a(LogEntry logEntry) {
                return SessionLogger.SessionLogFilter.lambda$static$1(logEntry);
            }
        }),
        PEER(new LogFilter() {
            @Override
            public final boolean a(LogEntry logEntry) {
                return SessionLogger.SessionLogFilter.lambda$static$2(logEntry);
            }
        }),
        PORTMAP(new LogFilter() {
            @Override
            public final boolean a(LogEntry logEntry) {
                return SessionLogger.SessionLogFilter.lambda$static$3(logEntry);
            }
        }),
        TORRENT(new LogFilter() {
            @Override
            public final boolean a(LogEntry logEntry) {
                return SessionLogger.SessionLogFilter.lambda$static$4(logEntry);
            }
        });

        private final Logger.NewFilter filter;

        SessionLogFilter(LogFilter logFilter) {
            this.filter = new Logger.NewFilter(name(), logFilter);
        }

        public static boolean lambda$static$0(LogEntry logEntry) {
            return logEntry == null || !logEntry.a().equals(SessionLogEntryType.SESSION_LOG.name());
        }

        public static boolean lambda$static$1(LogEntry logEntry) {
            return logEntry == null || !logEntry.a().equals(SessionLogEntryType.DHT_LOG.name());
        }

        public static boolean lambda$static$2(LogEntry logEntry) {
            return logEntry == null || !logEntry.a().equals(SessionLogEntryType.PEER_LOG.name());
        }

        public static boolean lambda$static$3(LogEntry logEntry) {
            return logEntry == null || !logEntry.a().equals(SessionLogEntryType.PORTMAP_LOG.name());
        }

        public static boolean lambda$static$4(LogEntry logEntry) {
            return logEntry == null || !logEntry.a().equals(SessionLogEntryType.TORRENT_LOG.name());
        }

        public Logger.NewFilter filter() {
            return this.filter;
        }
    }

    public SessionLogger() {
        super(1);
    }

    public void applyFilterParams(SessionFilterParams sessionFilterParams) {
        Logger.NewFilter[] newFilterArr = new Logger.NewFilter[5];
        String[] strArr = new String[5];
        if (sessionFilterParams.filterSessionLog) {
            newFilterArr[0] = SessionLogFilter.SESSION.filter();
        } else {
            strArr[0] = SessionLogFilter.SESSION.name();
        }
        if (sessionFilterParams.filterDhtLog) {
            newFilterArr[1] = SessionLogFilter.DHT.filter();
        } else {
            strArr[1] = SessionLogFilter.DHT.name();
        }
        if (sessionFilterParams.filterPeerLog) {
            newFilterArr[2] = SessionLogFilter.PEER.filter();
        } else {
            strArr[2] = SessionLogFilter.PEER.name();
        }
        if (sessionFilterParams.filterPortmapLog) {
            newFilterArr[3] = SessionLogFilter.PORTMAP.filter();
        } else {
            strArr[3] = SessionLogFilter.PORTMAP.name();
        }
        if (sessionFilterParams.filterTorrentLog) {
            newFilterArr[4] = SessionLogFilter.TORRENT.filter();
        } else {
            strArr[4] = SessionLogFilter.TORRENT.name();
        }
        removeFilter(strArr);
        addFilter(newFilterArr);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0108  */
    /* JADX WARN: Code duplicated, block: B:22:? A[RETURN, SYNTHETIC] */
    public void send(Alert<?> alert) {
        LogEntry logEntry;
        LogEntry logEntry2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i = AnonymousClass1.$SwitchMap$org$libtorrent4j$alerts$AlertType[alert.type().ordinal()];
        if (i != 1) {
            if (i == 2) {
                DhtLogAlert dhtLogAlert = (DhtLogAlert) alert;
                String str = "[" + dhtLogAlert.module().name() + "] " + dhtLogAlert.logMessage();
                int i2 = nextLogEntryId;
                nextLogEntryId = i2 + 1;
                logEntry2 = new LogEntry(i2, SessionLogEntryType.DHT_LOG.name(), str, jCurrentTimeMillis);
            } else if (i == 3) {
                PeerLogAlert peerLogAlert = (PeerLogAlert) alert;
                String str2 = "[" + peerLogAlert.direction() + "] [" + peerLogAlert.eventType() + "] " + peerLogAlert.logMessage();
                int i3 = nextLogEntryId;
                nextLogEntryId = i3 + 1;
                logEntry2 = new LogEntry(i3, SessionLogEntryType.PEER_LOG.name(), str2, jCurrentTimeMillis);
            } else if (i == 4) {
                PortmapLogAlert portmapLogAlert = (PortmapLogAlert) alert;
                String str3 = "[" + portmapLogAlert.mapType().name() + "] " + portmapLogAlert.logMessage();
                int i4 = nextLogEntryId;
                nextLogEntryId = i4 + 1;
                logEntry2 = new LogEntry(i4, SessionLogEntryType.PORTMAP_LOG.name(), str3, jCurrentTimeMillis);
            } else if (i != 5) {
                logEntry2 = null;
            } else {
                int i5 = nextLogEntryId;
                nextLogEntryId = i5 + 1;
                logEntry = new LogEntry(i5, SessionLogEntryType.TORRENT_LOG.name(), ((TorrentLogAlert) alert).logMessage(), jCurrentTimeMillis);
            }
            if (logEntry2 != null) {
                send(logEntry2);
            }
        }
        int i6 = nextLogEntryId;
        nextLogEntryId = i6 + 1;
        logEntry = new LogEntry(i6, SessionLogEntryType.SESSION_LOG.name(), ((LogAlert) alert).logMessage(), jCurrentTimeMillis);
        logEntry2 = logEntry;
        if (logEntry2 != null) {
            send(logEntry2);
        }
    }
}
