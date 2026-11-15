package org.libtorrent4j;

import org.libtorrent4j.alerts.SessionStatsAlert;

public final class SessionStats {
    private static final int DOWNLOAD_IP_PROTOCOL = 5;
    private static final int DOWNLOAD_PAYLOAD = 3;
    private static final int DOWNLOAD_PROTOCOL = 4;
    private static final int NUM_AVERAGES = 6;
    private static final int UPLOAD_IP_PROTOCOL = 2;
    private static final int UPLOAD_PAYLOAD = 0;
    private static final int UPLOAD_PROTOCOL = 1;
    private long dhtNodes;
    private long lastTickTime;
    private final Average[] stat = new Average[6];

    public static final class Average {
        private long averageSec5;
        private long counter;
        private long totalCounter;

        public void add(long j) {
            this.counter += j;
            this.totalCounter += j;
        }

        public void clear() {
            this.counter = 0L;
            this.averageSec5 = 0L;
            this.totalCounter = 0L;
        }

        public long rate() {
            return this.averageSec5;
        }

        public void tick(long j) {
            if (j >= 1) {
                this.averageSec5 = ((this.averageSec5 * 4) / 5) + (((this.counter * 1000) / j) / 5);
                this.counter = 0L;
            }
        }

        public long total() {
            return this.totalCounter;
        }
    }

    public SessionStats() {
        int i = 0;
        while (true) {
            Average[] averageArr = this.stat;
            if (i >= averageArr.length) {
                return;
            }
            averageArr[i] = new Average();
            i++;
        }
    }

    private void tick(long j) {
        for (int i = 0; i < 6; i++) {
            this.stat[i].tick(j);
        }
    }

    public void clear() {
        for (int i = 0; i < 6; i++) {
            this.stat[i].clear();
        }
        this.dhtNodes = 0L;
    }

    public long dhtNodes() {
        return this.dhtNodes;
    }

    public long downloadRate() {
        return this.stat[3].rate() + this.stat[4].rate() + this.stat[5].rate();
    }

    public long totalDownload() {
        return this.stat[3].total() + this.stat[4].total() + this.stat[5].total();
    }

    public long totalUpload() {
        return this.stat[0].total() + this.stat[1].total() + this.stat[2].total();
    }

    public void update(SessionStatsAlert sessionStatsAlert) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.lastTickTime;
        this.lastTickTime = jCurrentTimeMillis;
        long jValue = sessionStatsAlert.value(StatsMetric.NET_RECV_BYTES_COUNTER_INDEX);
        long jValue2 = sessionStatsAlert.value(StatsMetric.NET_RECV_PAYLOAD_BYTES_COUNTER_INDEX);
        long j2 = jValue - jValue2;
        long jValue3 = sessionStatsAlert.value(StatsMetric.NET_RECV_IP_OVERHEAD_BYTES_COUNTER_INDEX);
        long j3 = jValue2 - this.stat[3].total();
        long j4 = j2 - this.stat[4].total();
        long j5 = jValue3 - this.stat[5].total();
        this.stat[3].add(j3);
        this.stat[4].add(j4);
        this.stat[5].add(j5);
        long jValue4 = sessionStatsAlert.value(StatsMetric.NET_SENT_BYTES_COUNTER_INDEX);
        long jValue5 = sessionStatsAlert.value(StatsMetric.NET_SENT_PAYLOAD_BYTES_COUNTER_INDEX);
        long j6 = jValue4 - jValue5;
        long jValue6 = sessionStatsAlert.value(StatsMetric.NET_SENT_IP_OVERHEAD_BYTES_COUNTER_INDEX);
        long j7 = jValue5 - this.stat[0].total();
        long j8 = j6 - this.stat[1].total();
        long j9 = jValue6 - this.stat[2].total();
        this.stat[0].add(j7);
        this.stat[1].add(j8);
        this.stat[2].add(j9);
        tick(j);
        this.dhtNodes = sessionStatsAlert.value(StatsMetric.DHT_NODES_GAUGE_INDEX);
    }

    public long uploadRate() {
        return this.stat[0].rate() + this.stat[1].rate() + this.stat[2].rate();
    }
}
