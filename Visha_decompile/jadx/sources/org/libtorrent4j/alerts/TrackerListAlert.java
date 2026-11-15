package org.libtorrent4j.alerts;

import java.util.ArrayList;
import org.libtorrent4j.AnnounceEntry;
import org.libtorrent4j.swig.announce_entry_vector;
import org.libtorrent4j.swig.tracker_list_alert;

public final class TrackerListAlert extends TorrentAlert<tracker_list_alert> {
    public TrackerListAlert(tracker_list_alert tracker_list_alertVar) {
        super(tracker_list_alertVar);
    }

    public ArrayList<AnnounceEntry> getTrackers() {
        announce_entry_vector trackers = ((tracker_list_alert) this.alert).getTrackers();
        int size = trackers.size();
        ArrayList<AnnounceEntry> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new AnnounceEntry(trackers.get(i)));
        }
        return arrayList;
    }
}
