package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

class TransferStatusUpdater {

    private static final Log f17895c = LogFactory.b(TransferStatusUpdater.class);

    private static final HashSet f17896d = new HashSet(Arrays.asList(TransferState.PART_COMPLETED, TransferState.PENDING_CANCEL, TransferState.PENDING_PAUSE, TransferState.PENDING_NETWORK_DISCONNECT));

    static final Map f17897e = new ConcurrentHashMap<Integer, List<TransferListener>>() {
    };

    private static TransferDBUtil f17898f;

    private static TransferStatusUpdater f17899g;

    private final Map f17900a;

    private final Handler f17901b;

    private class TransferProgressListener implements ProgressListener {

        private final TransferRecord f17902a;

        private long f17903b;

        public TransferProgressListener(TransferRecord transferRecord) {
            this.f17902a = transferRecord;
        }

        @Override
        public synchronized void a(ProgressEvent progressEvent) {
            try {
                if (32 == progressEvent.b()) {
                    TransferStatusUpdater.f17895c.d("Reset Event triggered. Resetting the bytesCurrent to 0.");
                    this.f17903b = 0L;
                } else {
                    long jA = this.f17903b + progressEvent.a();
                    this.f17903b = jA;
                    TransferRecord transferRecord = this.f17902a;
                    if (jA > transferRecord.f17872i) {
                        transferRecord.f17872i = jA;
                        TransferStatusUpdater.this.k(transferRecord.f17864a, jA, transferRecord.f17871h, true);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    TransferStatusUpdater(TransferDBUtil transferDBUtil) {
        f17898f = transferDBUtil;
        this.f17901b = new Handler(Looper.getMainLooper());
        this.f17900a = new ConcurrentHashMap();
    }

    public static synchronized TransferStatusUpdater c(Context context) {
        try {
            if (f17899g == null) {
                TransferDBUtil transferDBUtil = new TransferDBUtil(context);
                f17898f = transferDBUtil;
                f17899g = new TransferStatusUpdater(transferDBUtil);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f17899g;
    }

    static void g(int i10, TransferListener transferListener) {
        if (transferListener == null) {
            throw new IllegalArgumentException("Listener can't be null");
        }
        Map map = f17897e;
        synchronized (map) {
            try {
                List list = (List) map.get(Integer.valueOf(i10));
                if (list == null) {
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    copyOnWriteArrayList.add(transferListener);
                    map.put(Integer.valueOf(i10), copyOnWriteArrayList);
                } else if (!list.contains(transferListener)) {
                    list.add(transferListener);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static void j(int i10, TransferListener transferListener) {
        if (transferListener == null) {
            throw new IllegalArgumentException("Listener can't be null");
        }
        Map map = f17897e;
        synchronized (map) {
            try {
                List list = (List) map.get(Integer.valueOf(i10));
                if (list != null && !list.isEmpty()) {
                    list.remove(transferListener);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    synchronized void b(TransferRecord transferRecord) {
        this.f17900a.put(Integer.valueOf(transferRecord.f17864a), transferRecord);
    }

    synchronized TransferRecord d(int i10) {
        return (TransferRecord) this.f17900a.get(Integer.valueOf(i10));
    }

    synchronized Map e() {
        return Collections.unmodifiableMap(this.f17900a);
    }

    synchronized ProgressListener f(int i10) {
        TransferRecord transferRecordD;
        transferRecordD = d(i10);
        if (transferRecordD == null) {
            f17895c.d("TransferStatusUpdater doesn't track the transfer: " + i10);
            throw new IllegalArgumentException("transfer " + i10 + " doesn't exist");
        }
        f17895c.d("Creating a new progress listener for transfer: " + i10);
        return new TransferProgressListener(transferRecordD);
    }

    synchronized void h(int i10) {
        try {
            TransferRecord transferRecordJ = f17898f.j(i10);
            if (transferRecordJ != null) {
                String str = transferRecordJ.f17882s;
                if (new File(str).getName().startsWith("aws-s3-d861b25a-1edf-11eb-adc1-0242ac120002")) {
                    new File(str).delete();
                }
            }
            S3ClientReference.c(Integer.valueOf(i10));
            f17898f.c(i10);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    void i(final int i10, final Exception exc) {
        Map map = f17897e;
        synchronized (map) {
            try {
                List<TransferListener> list = (List) map.get(Integer.valueOf(i10));
                if (list != null && !list.isEmpty()) {
                    for (final TransferListener transferListener : list) {
                        this.f17901b.post(new Runnable() {
                            @Override
                            public void run() {
                                transferListener.c(i10, exc);
                            }
                        });
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    synchronized void k(final int i10, final long j10, final long j11, boolean z10) {
        try {
            TransferRecord transferRecord = (TransferRecord) this.f17900a.get(Integer.valueOf(i10));
            if (transferRecord != null) {
                transferRecord.f17872i = j10;
                transferRecord.f17871h = j11;
            }
            f17898f.p(i10, j10);
            if (z10) {
                Map map = f17897e;
                synchronized (map) {
                    try {
                        List list = (List) map.get(Integer.valueOf(i10));
                        if (list != null && !list.isEmpty()) {
                            for (Iterator it = list.iterator(); it.hasNext(); it = it) {
                                final TransferListener transferListener = (TransferListener) it.next();
                                this.f17901b.post(new Runnable() {
                                    @Override
                                    public void run() {
                                        transferListener.b(i10, j10, j11);
                                    }
                                });
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    synchronized void l(final int i10, final TransferState transferState) {
        try {
            boolean zContains = f17896d.contains(transferState);
            TransferRecord transferRecord = (TransferRecord) this.f17900a.get(Integer.valueOf(i10));
            if (transferRecord != null) {
                zContains |= transferState.equals(transferRecord.f17878o);
                transferRecord.f17878o = transferState;
                if (f17898f.t(transferRecord) == 0) {
                    f17895c.j("Failed to update the status of transfer " + i10);
                }
            } else if (f17898f.s(i10, transferState) == 0) {
                f17895c.j("Failed to update the status of transfer " + i10);
            }
            if (zContains) {
                return;
            }
            if (TransferState.COMPLETED.equals(transferState)) {
                h(i10);
            }
            Map map = f17897e;
            synchronized (map) {
                try {
                    List<TransferListener> list = (List) map.get(Integer.valueOf(i10));
                    if (list != null && !list.isEmpty()) {
                        for (final TransferListener transferListener : list) {
                            this.f17901b.post(new Runnable() {
                                @Override
                                public void run() {
                                    transferListener.a(i10, transferState);
                                }
                            });
                        }
                        if (TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState)) {
                            list.clear();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }
}
