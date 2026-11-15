package com.mgtv.data.aphone.core.db;

import androidx.annotation.NonNull;

public enum SDKResumeHttpOflHbTaskColumn implements b {
    id(new c("INT", true, false)),
    eventId(new c("INT")),
    bid(new c("TEXT")),
    url(new c("TEXT")),
    params(new c("TEXT")),
    method(new c("TEXT")),
    status(new c("INT")),
    suuid(new c("TEXT")),
    create_time(new c("TEXT"));

    public static final String TABLE = "mgtv_data_oflhb_reporter";
    public static final int VERSION = 3;
    final c columnDesc;

    SDKResumeHttpOflHbTaskColumn(@NonNull c cVar) {
        this.columnDesc = cVar;
    }

    @Override
    @NonNull
    public c getDesc() {
        return this.columnDesc;
    }
}
