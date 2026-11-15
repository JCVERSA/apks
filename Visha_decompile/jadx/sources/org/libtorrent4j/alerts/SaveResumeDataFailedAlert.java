package org.libtorrent4j.alerts;

import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.swig.save_resume_data_failed_alert;

public final class SaveResumeDataFailedAlert extends TorrentAlert<save_resume_data_failed_alert> {
    public SaveResumeDataFailedAlert(save_resume_data_failed_alert save_resume_data_failed_alertVar) {
        super(save_resume_data_failed_alertVar);
    }

    public ErrorCode error() {
        return new ErrorCode(((save_resume_data_failed_alert) this.alert).getError());
    }
}
