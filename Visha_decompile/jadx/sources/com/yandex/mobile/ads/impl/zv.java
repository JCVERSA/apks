package com.yandex.mobile.ads.impl;

import android.database.sqlite.SQLiteDatabase;

public interface zv {
    SQLiteDatabase getReadableDatabase() throws Throwable;

    SQLiteDatabase getWritableDatabase() throws Throwable;
}
