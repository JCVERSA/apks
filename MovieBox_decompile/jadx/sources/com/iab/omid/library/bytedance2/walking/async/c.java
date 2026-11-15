package com.iab.omid.library.bytedance2.walking.async;

import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class c implements b.a {

    private final BlockingQueue<Runnable> f32693a;

    private final ThreadPoolExecutor f32694b;

    private final ArrayDeque<b> f32695c = new ArrayDeque<>();

    private b f32696d = null;

    public c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f32693a = linkedBlockingQueue;
        this.f32694b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    private void a() {
        b bVarPoll = this.f32695c.poll();
        this.f32696d = bVarPoll;
        if (bVarPoll != null) {
            bVarPoll.a(this.f32694b);
        }
    }

    public void b(b bVar) {
        bVar.a(this);
        this.f32695c.add(bVar);
        if (this.f32696d == null) {
            a();
        }
    }

    @Override
    public void a(b bVar) {
        this.f32696d = null;
        a();
    }
}
