package com.mgtv.data.aphone.core.db;

import androidx.annotation.NonNull;

public enum SDKResumeHttpTaskColumn implements b {
    id(new c("INT", true, false)),
    eventId(new c("INT")),
    bid(new c("TEXT")),
    url(new c("TEXT")),
    params(new c("TEXT")),
    method(new c("TEXT")),
    status(new c("INT")),
    create_time(new c("TEXT"));

    public static final String TABLE = "mgtv_data_reporter";
    public static final int VERSION = 1;
    final c columnDesc;

    SDKResumeHttpTaskColumn(@NonNull c cVar) {
        this.columnDesc = cVar;
    }

    @Override
    @NonNull
    public c getDesc() {
        return this.columnDesc;
    }
}
