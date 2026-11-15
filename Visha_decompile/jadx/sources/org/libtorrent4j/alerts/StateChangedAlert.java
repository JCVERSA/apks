package org.libtorrent4j.alerts;

import org.libtorrent4j.TorrentStatus;
import org.libtorrent4j.swig.state_changed_alert;

public final class StateChangedAlert extends TorrentAlert<state_changed_alert> {
    public StateChangedAlert(state_changed_alert state_changed_alertVar) {
        super(state_changed_alertVar);
    }

    public TorrentStatus.State getPrevState() {
        return TorrentStatus.State.fromSwig(((state_changed_alert) this.alert).getPrev_state().swigValue());
    }

    public TorrentStatus.State getState() {
        return TorrentStatus.State.fromSwig(((state_changed_alert) this.alert).getState().swigValue());
    }
}
