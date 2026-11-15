package com.mgtv.thirdsdk.playcore.utils;

import android.os.Handler;
import android.os.Message;
import com.hunantv.imgo.util.n;
import java.lang.ref.WeakReference;

public class ExTicker {
    private b a;
    private int b;
    private int c;
    private Handler d = new a(this);
    private Status e = Status.STATE_STOP;

    public enum Status {
        STATE_START,
        STATE_PAUSE,
        STATE_STOP
    }

    public static class a extends Handler {
        WeakReference<ExTicker> a;

        public a(ExTicker exTicker) {
            this.a = new WeakReference<>(exTicker);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<ExTicker> weakReference = this.a;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            ExTicker exTicker = this.a.get();
            if (message.what == 65536 && exTicker.a != null) {
                ExTicker.b(exTicker);
                n.a("ExTicker", "ExTicker count:" + exTicker.c);
                exTicker.d.sendEmptyMessageDelayed(65536, (long) exTicker.b);
                exTicker.a.onTick(exTicker.c);
            }
        }
    }

    public interface b {
        void onTick(int i);
    }

    public ExTicker(int i) {
        this.b = 100;
        this.b = i;
        if (i < 100) {
            this.b = 100;
        }
    }

    public static int b(ExTicker exTicker) {
        int i = exTicker.c;
        exTicker.c = i + 1;
        return i;
    }

    public void a() {
        d();
        n.a("ExTicker", "ExTicker start");
        this.e = Status.STATE_START;
        this.d.sendEmptyMessage(65536);
    }

    public void b() {
        if (this.e != Status.STATE_START) {
            return;
        }
        n.a("ExTicker", "ExTicker pause");
        this.e = Status.STATE_PAUSE;
        this.d.removeMessages(65536);
    }

    public void c() {
        if (this.e != Status.STATE_PAUSE) {
            return;
        }
        n.a("ExTicker", "ExTicker resume");
        this.e = Status.STATE_START;
        this.d.removeMessages(65536);
        this.d.sendEmptyMessage(65536);
    }

    public void d() {
        Status status = this.e;
        Status status2 = Status.STATE_STOP;
        if (status == status2) {
            return;
        }
        n.a("ExTicker", "ExTicker stop");
        this.c = 0;
        this.e = status2;
        this.d.removeMessages(65536);
    }

    public int e() {
        return this.b;
    }

    public void a(b bVar) {
        this.a = bVar;
    }
}
