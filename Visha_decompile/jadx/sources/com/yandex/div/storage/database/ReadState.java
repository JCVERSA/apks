package com.yandex.div.storage.database;

import android.database.Cursor;
import defpackage.c74;
import defpackage.nv4;
import defpackage.oj8;
import defpackage.y45;
import defpackage.zfb;
import java.io.Closeable;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ReadState implements Closeable {
    public final c74 b;
    public final oj8 c;
    public Cursor d;

    public ReadState(c74 c74Var, oj8 oj8Var) {
        y45.j(c74Var, "onCloseState");
        y45.j(oj8Var, "cursorProvider");
        this.b = c74Var;
        this.c = oj8Var;
    }

    public final Cursor b() {
        if (this.d != null) {
            throw new RuntimeException("Cursor should be called only once");
        }
        Cursor cursor = (Cursor) this.c.get();
        this.d = cursor;
        y45.i(cursor, "c");
        return cursor;
    }

    @Override
    public void close() {
        nv4.a(this.d);
        this.b.invoke();
    }

    public ReadState(c74 c74Var, oj8 oj8Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new c74() {
            public final void m271invoke() {
            }

            @Override
            public Object invoke() {
                m271invoke();
                return zfb.a;
            }
        } : c74Var, oj8Var);
    }
}
