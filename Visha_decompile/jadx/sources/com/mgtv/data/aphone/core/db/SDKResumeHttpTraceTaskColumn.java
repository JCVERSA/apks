package com.mgtv.data.aphone.core.db;

import androidx.annotation.NonNull;

public enum SDKResumeHttpTraceTaskColumn implements b {
    id(new c("INT", true, false)),
    taskId(new c("TEXT")),
    logs(new c("TEXT")),
    reportUrl(new c("TEXT")),
    netStatus(new c("INT")),
    localLog(new c("INT")),
    status(new c("INT")),
    create_time(new c("TEXT"));

    public static final String TABLE = "mgtv_data_trace_reporter";
    public static final int VERSION = 4;
    final c columnDesc;

    SDKResumeHttpTraceTaskColumn(@NonNull c cVar) {
        this.columnDesc = cVar;
    }

    @Override
    @NonNull
    public c getDesc() {
        return this.columnDesc;
    }
}
