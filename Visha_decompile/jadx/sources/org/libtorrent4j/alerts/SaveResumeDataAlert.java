package org.libtorrent4j.alerts;

import org.libtorrent4j.AddTorrentParams;
import org.libtorrent4j.swig.save_resume_data_alert;

public final class SaveResumeDataAlert extends TorrentAlert<save_resume_data_alert> {
    public SaveResumeDataAlert(save_resume_data_alert save_resume_data_alertVar) {
        super(save_resume_data_alertVar);
    }

    public AddTorrentParams params() {
        return new AddTorrentParams(((save_resume_data_alert) this.alert).getParams());
    }
}
