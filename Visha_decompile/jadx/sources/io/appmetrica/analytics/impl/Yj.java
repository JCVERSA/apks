package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import io.appmetrica.analytics.coreutils.internal.io.CloseableUtilsKt;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import org.mozilla.javascript.ES6Iterator;

public final class Yj implements Oc {
    public final Tn a;
    public final String b = "startup_state";
    public final AESEncrypter c;

    public Yj(Tn tn) {
        this.a = tn;
        C2401a c2401a = new C2401a(C2910ua.j().f());
        this.c = new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, c2401a.b(), c2401a.a());
    }

    @Override
    public final void a(Context context) {
        SQLiteDatabase readableDatabase = C2559g7.a(context).h().getReadableDatabase();
        if (readableDatabase != null) {
            try {
                Fb fbA = a(readableDatabase);
                Kl kl = new Kl(new C4(new A4()));
                if (fbA != null) {
                    a(this.a, kl, fbA);
                    kl.p = fbA.c;
                    kl.r = fbA.b;
                }
                Ll ll = new Ll(kl);
                AbstractC2897tm abstractC2897tmA = C2872sm.a(Ll.class);
                abstractC2897tmA.a(context, abstractC2897tmA.d(context)).save(ll);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(Tn tn, Kl kl, Fb fb) {
        String strOptStringOrNull;
        synchronized (tn) {
            strOptStringOrNull = JsonUtils.optStringOrNull(tn.a.a(), "device_id");
        }
        if (TextUtils.isEmpty(strOptStringOrNull)) {
            if (!TextUtils.isEmpty(fb.d)) {
                tn.a(fb.d);
            }
            if (!TextUtils.isEmpty(fb.e)) {
                tn.b(fb.e);
            }
            if (TextUtils.isEmpty(fb.a)) {
                return;
            }
            kl.a = fb.a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0047 A[Catch: all -> 0x004c, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x004c, blocks: (B:5:0x001b, B:7:0x0022, B:9:0x0028, B:13:0x0047), top: B:21:0x001b }] */
    public final Fb a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery;
        try {
            cursorQuery = sQLiteDatabase.query("binary_data", new String[]{ES6Iterator.VALUE_PROPERTY}, "data_key = ?", new String[]{this.b}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() == 1 && cursorQuery.moveToFirst()) {
                        Fb fb = (Fb) MessageNano.mergeFrom(new Fb(), this.c.decrypt(cursorQuery.getBlob(cursorQuery.getColumnIndexOrThrow(ES6Iterator.VALUE_PROPERTY))));
                        CloseableUtilsKt.closeSafely(cursorQuery);
                        return fb;
                    }
                    if (cursorQuery != null) {
                        cursorQuery.getCount();
                    }
                } catch (Throwable unused) {
                }
            } else if (cursorQuery != null) {
                cursorQuery.getCount();
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        CloseableUtilsKt.closeSafely(cursorQuery);
        return null;
    }
}
