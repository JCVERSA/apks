package org.libtorrent4j.alerts;

import java.util.ArrayList;
import java.util.List;
import org.libtorrent4j.TorrentStatus;
import org.libtorrent4j.swig.state_update_alert;
import org.libtorrent4j.swig.torrent_status_vector;

public final class StateUpdateAlert extends AbstractAlert<state_update_alert> {
    public StateUpdateAlert(state_update_alert state_update_alertVar) {
        super(state_update_alertVar);
    }

    public List<TorrentStatus> status() {
        torrent_status_vector status = ((state_update_alert) this.alert).getStatus();
        int size = status.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new TorrentStatus(status.get(i)));
        }
        return arrayList;
    }
}
