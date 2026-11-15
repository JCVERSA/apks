package com.mbridge.msdk.foundation.same.task;

public abstract class a implements Runnable {

    public static long f34795id;
    public InterfaceC0467a mListener;
    public b mState = b.READY;

    public interface InterfaceC0467a {
        void a(b bVar);
    }

    public enum b {
        READY,
        RUNNING,
        PAUSE,
        CANCEL,
        FINISH
    }

    public a() {
        f34795id++;
    }

    private void setState(b bVar) {
        this.mState = bVar;
        InterfaceC0467a interfaceC0467a = this.mListener;
        if (interfaceC0467a != null) {
            interfaceC0467a.a(bVar);
        }
    }

    public final void cancel() {
        b bVar = this.mState;
        b bVar2 = b.CANCEL;
        if (bVar != bVar2) {
            setState(bVar2);
            cancelTask();
        }
    }

    public abstract void cancelTask();

    public final long getId() {
        return f34795id;
    }

    public b getState() {
        return this.mState;
    }

    public abstract void pauseTask(boolean z10);

    @Override
    public final void run() {
        try {
            if (this.mState == b.READY) {
                setState(b.RUNNING);
                runTask();
                setState(b.FINISH);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public abstract void runTask();

    public void setOnStateChangeListener(InterfaceC0467a interfaceC0467a) {
        this.mListener = interfaceC0467a;
    }

    public final void setPause(boolean z10) {
        b bVar = this.mState;
        b bVar2 = b.PAUSE;
        if (bVar == bVar2 || bVar == b.CANCEL || bVar == b.FINISH) {
            return;
        }
        if (z10) {
            setState(bVar2);
        } else {
            setState(b.RUNNING);
        }
        pauseTask(z10);
    }
}
