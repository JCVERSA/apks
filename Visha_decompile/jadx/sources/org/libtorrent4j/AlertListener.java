package org.libtorrent4j;

import org.libtorrent4j.alerts.Alert;

public interface AlertListener {
    void alert(Alert<?> alert);

    int[] types();
}
