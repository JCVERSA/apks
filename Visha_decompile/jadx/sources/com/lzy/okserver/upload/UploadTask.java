package com.lzy.okserver.upload;

import com.lzy.okgo.model.Progress;
import com.lzy.okgo.request.base.ProgressRequestBody;
import com.lzy.okgo.request.base.Request;
import com.lzy.okserver.task.PriorityRunnable;
import defpackage.hu8;
import defpackage.ie7;
import defpackage.je7;
import defpackage.ohb;
import defpackage.phb;
import defpackage.ubc;
import defpackage.ut4;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import okhttp3.Call;

public class UploadTask<T> implements Runnable {
    private ThreadPoolExecutor executor;
    public Map<Object, ohb> listeners;
    private PriorityRunnable priorityRunnable;
    public Progress progress;

    public class a implements ProgressRequestBody.b {
        public final Call a;

        public a(Call call) {
            this.a = call;
        }

        @Override
        public void a(Progress progress) {
            if (this.a.getCanceled()) {
                return;
            }
            Progress progress2 = UploadTask.this.progress;
            if (progress2.status != 2) {
                this.a.cancel();
                return;
            }
            progress2.from(progress);
            UploadTask uploadTask = UploadTask.this;
            uploadTask.postLoading(uploadTask.progress);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UploadTask(String str, Request<T, ? extends Request> request) {
        ut4.b(str, "tag == null");
        Progress progress = new Progress();
        this.progress = progress;
        progress.tag = str;
        progress.url = request.getBaseUrl();
        Progress progress2 = this.progress;
        progress2.status = 0;
        progress2.totalSize = -1L;
        progress2.request = request;
        this.executor = je7.a().c().a();
        this.listeners = new HashMap();
    }

    public void postLoading(final Progress progress) {
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<ohb> it = UploadTask.this.listeners.values().iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
            }
        });
    }

    private void postOnError(final Progress progress, Throwable th) {
        progress.speed = 0L;
        progress.status = 4;
        progress.exception = th;
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<ohb> it = UploadTask.this.listeners.values().iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
            }
        });
    }

    private void postOnFinish(final Progress progress, final T t) {
        progress.speed = 0L;
        progress.fraction = 1.0f;
        progress.status = 5;
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<ohb> it = UploadTask.this.listeners.values().iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
            }
        });
    }

    private void postOnRemove(final Progress progress) {
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<ohb> it = UploadTask.this.listeners.values().iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
                UploadTask.this.listeners.clear();
            }
        });
    }

    private void postOnStart(final Progress progress) {
        progress.speed = 0L;
        progress.status = 0;
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<ohb> it = UploadTask.this.listeners.values().iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
            }
        });
    }

    private void postPause(final Progress progress) {
        progress.speed = 0L;
        progress.status = 3;
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<ohb> it = UploadTask.this.listeners.values().iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
            }
        });
    }

    private void postWaiting(final Progress progress) {
        progress.speed = 0L;
        progress.status = 1;
        updateDatabase(progress);
        ut4.k(new Runnable() {
            @Override
            public void run() {
                Iterator<ohb> it = UploadTask.this.listeners.values().iterator();
                if (it.hasNext()) {
                    ubc.a(it.next());
                    throw null;
                }
            }
        });
    }

    private void updateDatabase(Progress progress) {
        phb.q().t(Progress.buildUpdateContentValues(progress), progress.tag);
    }

    public UploadTask<T> extra1(Serializable serializable) {
        this.progress.extra1 = serializable;
        return this;
    }

    public UploadTask<T> extra2(Serializable serializable) {
        this.progress.extra2 = serializable;
        return this;
    }

    public UploadTask<T> extra3(Serializable serializable) {
        this.progress.extra3 = serializable;
        return this;
    }

    public void pause() {
        this.executor.remove(this.priorityRunnable);
        Progress progress = this.progress;
        int i = progress.status;
        if (i == 1) {
            postPause(progress);
            return;
        }
        if (i == 2) {
            progress.speed = 0L;
            progress.status = 3;
        } else {
            ie7.c("only the task with status WAITING(1) or LOADING(2) can pause, current status is " + this.progress.status);
        }
    }

    public UploadTask<T> priority(int i) {
        this.progress.priority = i;
        return this;
    }

    public UploadTask<T> register(ohb ohbVar) {
        return this;
    }

    public UploadTask<T> remove() {
        pause();
        phb.q().n(this.progress.tag);
        UploadTask<T> uploadTaskD = je7.a().d(this.progress.tag);
        postOnRemove(this.progress);
        return uploadTaskD;
    }

    public void restart() {
        pause();
        Progress progress = this.progress;
        progress.status = 0;
        progress.currentSize = 0L;
        progress.fraction = 0.0f;
        progress.speed = 0L;
        phb.q().k(this.progress);
        start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void run() {
        Progress progress = this.progress;
        progress.status = 2;
        postLoading(progress);
        try {
            Request<?, ? extends Request> request = this.progress.request;
            request.uploadInterceptor(new a(request.getRawCall()));
            hu8 hu8VarExecute = request.adapt().execute();
            if (hu8VarExecute.f()) {
                postOnFinish(this.progress, hu8VarExecute.a());
            } else {
                postOnError(this.progress, hu8VarExecute.d());
            }
        } catch (Exception e) {
            postOnError(this.progress, e);
        }
    }

    public UploadTask<T> save() {
        phb.q().k(this.progress);
        return this;
    }

    public UploadTask<T> start() {
        if (je7.a().b(this.progress.tag) == null || phb.q().o(this.progress.tag) == null) {
            throw new IllegalStateException("you must call UploadTask#save() before UploadTask#start()！");
        }
        Progress progress = this.progress;
        int i = progress.status;
        if (i == 1 || i == 2) {
            ie7.c("the task with tag " + this.progress.tag + " is already in the upload queue, current task status is " + this.progress.status);
        } else {
            postOnStart(progress);
            postWaiting(this.progress);
            PriorityRunnable priorityRunnable = new PriorityRunnable(this.progress.priority, this);
            this.priorityRunnable = priorityRunnable;
            this.executor.execute(priorityRunnable);
        }
        return this;
    }

    public void unRegister(ohb ohbVar) {
        ut4.b(ohbVar, "listener == null");
        throw null;
    }

    public void unRegister(String str) {
        ut4.b(str, "tag == null");
        this.listeners.remove(str);
    }

    public UploadTask(Progress progress) {
        ut4.b(progress, "progress == null");
        this.progress = progress;
        this.executor = je7.a().c().a();
        this.listeners = new HashMap();
    }
}
