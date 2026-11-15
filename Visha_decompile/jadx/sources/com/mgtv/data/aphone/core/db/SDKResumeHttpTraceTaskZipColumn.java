package com.mgtv.data.aphone.core.db;

import androidx.annotation.NonNull;

public enum SDKResumeHttpTraceTaskZipColumn implements b {
    id(new c("INT", true, false)),
    taskId(new c("TEXT")),
    logs(new c("TEXT")),
    reportUrl(new c("TEXT")),
    netStatus(new c("INT")),
    localLog(new c("INT")),
    status(new c("INT")),
    upCount(new c("INT")),
    idx(new c("INT")),
    sum(new c("INT")),
    log_path(new c("TEXT")),
    zip_path(new c("TEXT")),
    create_time(new c("TEXT"));

    public static final String TABLE = "mgtv_data_trace_zip_reporter";
    public static final int VERSION = 4;
    final c columnDesc;

    SDKResumeHttpTraceTaskZipColumn(@NonNull c cVar) {
        this.columnDesc = cVar;
    }

    @Override
    @NonNull
    public c getDesc() {
        return this.columnDesc;
    }
}
