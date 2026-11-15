package com.hunantv.imgo.c.a.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;

class a extends Handler {
    private static final Pattern b = Pattern.compile("#");
    private com.hunantv.imgo.c.a a;
    private final AtomicInteger c;
    private long d;

    public a(Looper looper, com.hunantv.imgo.c.a aVar) {
        super(looper);
        this.c = new AtomicInteger();
        this.a = aVar;
    }

    private void a(b bVar, boolean z) {
        if (this.a != null) {
            Thread thread = getLooper().getThread();
            String strA = a(thread.getName());
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            if (z) {
                this.a.b(strA, thread.getPriority(), bVar.c, bVar.d);
            } else {
                this.a.a(strA, thread.getPriority(), bVar.c, bVar.d);
            }
        }
    }

    private boolean b() {
        c cVar = (c) getLooper().getThread();
        if (cVar == null) {
            return false;
        }
        return cVar.b();
    }

    private int c() {
        c cVar = (c) getLooper().getThread();
        if (cVar == null) {
            return 0;
        }
        return cVar.c();
    }

    private void d() {
        ((c) getLooper().getThread()).d();
    }

    @Override
    public void handleMessage(Message message) {
        Object obj = message.obj;
        if (obj != null && (obj instanceof b)) {
            b bVar = (b) obj;
            Runnable runnable = bVar.a;
            if (runnable != null) {
                a(bVar, false);
                try {
                    runnable.run();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                a(bVar, true);
            }
            this.d = System.currentTimeMillis();
            this.c.decrementAndGet();
            sendEmptyMessageDelayed(-100000, c());
        }
        if (b() || message.what != -100000 || this.c.get() > 0 || System.currentTimeMillis() - this.d <= c()) {
            return;
        }
        d();
    }

    public void a(b bVar) {
        if (bVar == null) {
            return;
        }
        this.c.incrementAndGet();
        String str = bVar.c;
        try {
            sendMessageDelayed(Message.obtain(this, TextUtils.isEmpty(str) ? 1 : str.hashCode(), bVar), bVar.b + bVar.d);
        } catch (Exception e) {
            e.printStackTrace();
            d();
        }
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = TextUtils.split(str, b);
        if (strArrSplit.length <= 0) {
            return null;
        }
        String str2 = strArrSplit[0];
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        return str2.trim();
    }

    public int a() {
        return this.c.get();
    }
}
