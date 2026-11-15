package com.transsion.athena.enatha;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.transsion.athena.data.TrackData;

public abstract class athena {

    protected Context f41596a;

    protected Handler f41597b;

    public athena(Context context) {
        this.f41596a = context;
    }

    public void a() {
    }

    public abstract void a(Message message, long j10);

    public abstract void a(Runnable runnable);

    public abstract void a(Runnable runnable, long j10);

    public abstract void a(String str, TrackData trackData, long j10);

    public Handler b() {
        return this.f41597b;
    }

    public boolean c() {
        return true;
    }

    public void d() {
    }

    public void e() {
    }

    public void a(int i10) {
    }
}
