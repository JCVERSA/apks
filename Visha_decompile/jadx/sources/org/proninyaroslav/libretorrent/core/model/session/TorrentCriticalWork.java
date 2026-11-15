package org.proninyaroslav.libretorrent.core.model.session;

import defpackage.mc7;
import defpackage.zd0;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

class TorrentCriticalWork {
    private ExecutorService exec = Executors.newFixedThreadPool(2);
    private AtomicBoolean moving = new AtomicBoolean();
    private AtomicInteger saveResume = new AtomicInteger();
    private zd0 stateChangedEvent = zd0.p0(new State(false, false, System.currentTimeMillis()));

    public static class State {
        public long changeTime;
        public boolean moving;
        public boolean saveResume;

        public State(boolean z, boolean z2, long j) {
            this.moving = z;
            this.saveResume = z2;
            this.changeTime = j;
        }

        public boolean isDuringChange() {
            return this.moving || this.saveResume;
        }
    }

    public enum Type {
        MOVING,
        SAVE_RESUME
    }

    private void emitChangedEvent() {
        this.exec.submit(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$emitChangedEvent$0();
            }
        });
    }

    public void lambda$emitChangedEvent$0() {
        this.stateChangedEvent.onNext(new State(this.moving.get(), this.saveResume.get() > 0, System.currentTimeMillis()));
    }

    public boolean isMoving() {
        return this.moving.get();
    }

    public boolean isSaveResume() {
        return this.saveResume.get() > 0;
    }

    public mc7<State> observeStateChanging() {
        return this.stateChangedEvent;
    }

    public void setMoving(boolean z) {
        this.moving.set(z);
        emitChangedEvent();
    }

    public void setSaveResume(boolean z) {
        if (z) {
            this.saveResume.incrementAndGet();
        } else {
            this.saveResume.decrementAndGet();
        }
        emitChangedEvent();
    }
}
