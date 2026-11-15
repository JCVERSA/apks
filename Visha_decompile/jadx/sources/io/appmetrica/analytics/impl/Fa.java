package io.appmetrica.analytics.impl;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.util.concurrent.Callable;

public final class Fa implements Callable {
    public final Ga a;

    public Fa(Ga ga) {
        this.a = ga;
    }

    @Override
    public final Object call() {
        Uri uri = Uri.parse("content://com.huawei.appmarket.commondata/item/5");
        ContentResolver contentResolver = this.a.a.getContentResolver();
        Ga ga = this.a;
        ga.b = contentResolver.query(uri, null, null, new String[]{ga.a.getPackageName()}, null);
        Cursor cursor = this.a.b;
        if (cursor != null && cursor.moveToFirst()) {
            String string = this.a.b.getString(0);
            if (!TextUtils.isEmpty(string)) {
                return new C2468cg(string, this.a.b.getLong(1), this.a.b.getLong(2), EnumC2443bg.d);
            }
        }
        return null;
    }
}
