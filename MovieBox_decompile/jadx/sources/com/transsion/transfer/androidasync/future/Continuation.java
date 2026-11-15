package com.transsion.transfer.androidasync.future;

import java.util.LinkedList;
import java.util.concurrent.ExecutionException;

public class Continuation extends n implements st.c, Runnable, com.transsion.transfer.androidasync.future.a {
    st.a callback;
    Runnable cancelCallback;
    private boolean inNext;
    LinkedList<st.c> mCallbacks;
    boolean started;
    private boolean waiting;

    class a implements st.a {

        boolean f53137a;

        a() {
        }

        @Override
        public void g(Exception exc) {
            if (this.f53137a) {
                return;
            }
            this.f53137a = true;
            Continuation.this.waiting = false;
            if (exc == null) {
                Continuation.this.next();
            } else {
                Continuation.this.reportCompleted(exc);
            }
        }
    }

    class b implements st.c {

        final c f53139a;

        b(c cVar) {
            this.f53139a = cVar;
        }

        @Override
        public void onContinue(Continuation continuation, st.a aVar) throws ExecutionException, InterruptedException {
            this.f53139a.get();
            aVar.g(null);
        }
    }

    public Continuation() {
        this(null);
    }

    private st.c hook(st.c cVar) {
        if (cVar instanceof com.transsion.transfer.androidasync.future.b) {
            ((com.transsion.transfer.androidasync.future.b) cVar).setParent(this);
        }
        return cVar;
    }

    public void next() {
        if (this.inNext) {
            return;
        }
        while (this.mCallbacks.size() > 0 && !this.waiting && !isDone() && !isCancelled()) {
            st.c cVarRemove = this.mCallbacks.remove();
            try {
                try {
                    this.inNext = true;
                    this.waiting = true;
                    cVarRemove.onContinue(this, wrap());
                } catch (Exception e10) {
                    reportCompleted(e10);
                }
                this.inNext = false;
            } catch (Throwable th2) {
                this.inNext = false;
                throw th2;
            }
        }
        if (this.waiting || isDone() || isCancelled()) {
            return;
        }
        reportCompleted(null);
    }

    private st.a wrap() {
        return new a();
    }

    public Continuation add(st.c cVar) {
        this.mCallbacks.add(hook(cVar));
        return this;
    }

    @Override
    public boolean cancel() {
        if (!super.cancel()) {
            return false;
        }
        Runnable runnable = this.cancelCallback;
        if (runnable == null) {
            return true;
        }
        runnable.run();
        return true;
    }

    public st.a getCallback() {
        return this.callback;
    }

    public Runnable getCancelCallback() {
        return this.cancelCallback;
    }

    public Continuation insert(st.c cVar) {
        this.mCallbacks.add(0, hook(cVar));
        return this;
    }

    @Override
    public void onContinue(Continuation continuation, st.a aVar) throws Exception {
        setCallback(aVar);
        start();
    }

    void reportCompleted(Exception exc) {
        st.a aVar;
        if (setComplete() && (aVar = this.callback) != null) {
            aVar.g(exc);
        }
    }

    @Override
    public void run() {
        start();
    }

    public void setCallback(st.a aVar) {
        this.callback = aVar;
    }

    public void setCancelCallback(Runnable runnable) {
        this.cancelCallback = runnable;
    }

    public Continuation start() {
        if (this.started) {
            throw new IllegalStateException("already started");
        }
        this.started = true;
        next();
        return this;
    }

    public Continuation(st.a aVar) {
        this(aVar, null);
    }

    public Continuation add(c cVar) {
        cVar.setParent(this);
        add(new b(cVar));
        return this;
    }

    public void setCancelCallback(final com.transsion.transfer.androidasync.future.a aVar) {
        if (aVar == null) {
            this.cancelCallback = null;
        } else {
            this.cancelCallback = new Runnable() {
                @Override
                public void run() {
                    aVar.cancel();
                }
            };
        }
    }

    public Continuation(st.a aVar, Runnable runnable) {
        this.mCallbacks = new LinkedList<>();
        this.cancelCallback = runnable;
        this.callback = aVar;
    }
}
