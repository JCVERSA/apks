package org.libtorrent4j.alerts;

import java.util.ArrayList;
import org.libtorrent4j.PeerInfo;
import org.libtorrent4j.swig.peer_info_alert;
import org.libtorrent4j.swig.peer_info_vector;

public final class PeerInfoAlert extends TorrentAlert<peer_info_alert> {
    public PeerInfoAlert(peer_info_alert peer_info_alertVar) {
        super(peer_info_alertVar);
    }

    public ArrayList<PeerInfo> getPeerInfo() {
        peer_info_vector peer_info = ((peer_info_alert) this.alert).getPeer_info();
        int size = peer_info.size();
        ArrayList<PeerInfo> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new PeerInfo(peer_info.get(i)));
        }
        return arrayList;
    }
}
