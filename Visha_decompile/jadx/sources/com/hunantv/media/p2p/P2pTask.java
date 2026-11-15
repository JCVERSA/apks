package com.hunantv.media.p2p;

import com.mgtv.a.c;

class P2pTask implements IP2pTask {
    private c task;

    public P2pTask(c cVar) {
        this.task = cVar;
    }

    public static P2pTask build(Object obj) {
        return new P2pTask((c) obj);
    }

    @Override
    public c getImgoTask() {
        return this.task;
    }

    @Override
    public int getStatus() {
        c cVar = this.task;
        if (cVar != null) {
            return cVar.b();
        }
        return -1;
    }

    @Override
    public String getStrHash() {
        c cVar = this.task;
        if (cVar != null) {
            return cVar.a();
        }
        return null;
    }
}
