package org.libtorrent4j;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.libtorrent4j.swig.libtorrent;
import org.libtorrent4j.swig.stats_metric;
import org.libtorrent4j.swig.stats_metric_vector;

public final class LibTorrent {
    private LibTorrent() {
    }

    public static String boostVersion() {
        return libtorrent.boost_lib_version();
    }

    public static int findMetricIdx(String str) {
        return libtorrent.find_metric_idx_ex(str);
    }

    public static boolean hasArmNeonSupport() {
        return libtorrent.arm_neon_support();
    }

    public static String libtorrent4jVersion() {
        return "2.1.0-39";
    }

    public static String opensslVersion() {
        return libtorrent.openssl_version_text();
    }

    public static String revision() {
        return "24a3adf35d3e689bde700371337aad61b160bafa";
    }

    public static List<StatsMetric> sessionStatsMetrics() {
        stats_metric_vector stats_metric_vectorVarSession_stats_metrics = libtorrent.session_stats_metrics();
        ArrayList arrayList = new ArrayList(stats_metric_vectorVarSession_stats_metrics.size());
        Iterator<stats_metric> it = stats_metric_vectorVarSession_stats_metrics.iterator();
        while (it.hasNext()) {
            arrayList.add(new StatsMetric(it.next()));
        }
        return arrayList;
    }

    public static String version() {
        return libtorrent.version();
    }
}
