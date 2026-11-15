package org.proninyaroslav.libretorrent.core.logger;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import defpackage.mc7;
import io.reactivex.subjects.PublishSubject;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.ReentrantLock;
import org.proninyaroslav.libretorrent.core.collections.FixedRingBuffer;

public class Logger {
    protected static final long POLL_TIME_INTERVAL = 250;
    protected FixedRingBuffer<LogEntry> inputBuf;
    protected int maxStoredLogs;
    protected int numPendingLogs;
    protected FixedRingBuffer<LogEntry> outputBuf;
    protected boolean paused;
    protected Thread pendingThread;
    protected boolean recording;
    protected HashMap<String, LogFilter> filters = new HashMap<>();
    protected ReentrantLock logLock = new ReentrantLock();
    protected PublishSubject dataSetChangedPublish = PublishSubject.o0();
    protected ExecutorService sender = Executors.newSingleThreadExecutor();
    protected int recordStartIndex = -1;

    public static class DataSetChange {
        public final List a;
        public final Reason b;

        public enum Reason {
            NEW_ENTRIES,
            CLEAN,
            FILTER
        }

        public DataSetChange(Reason reason) {
            this(reason, null);
        }

        public DataSetChange(Reason reason, List list) {
            this.a = list;
            this.b = reason;
        }
    }

    public static class NewFilter {
        public String a;
        public LogFilter b;

        public NewFilter(String str, LogFilter logFilter) {
            this.a = str;
            this.b = logFilter;
        }
    }

    public Logger(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Maximum stored logs must be greater than 0");
        }
        this.maxStoredLogs = i;
    }

    public void addFilter(@NonNull NewFilter... newFilterArr) {
        this.logLock.lock();
        try {
            int i = 0;
            for (NewFilter newFilter : newFilterArr) {
                if (newFilter != null) {
                    this.filters.put(newFilter.a, newFilter.b);
                    i++;
                }
            }
            if (i > 0) {
                f();
            }
        } finally {
            this.logLock.unlock();
        }
    }

    public final LogEntry c(LogEntry logEntry) {
        Iterator<LogFilter> it = this.filters.values().iterator();
        while (it.hasNext()) {
            if (!it.next().a(logEntry)) {
                return null;
            }
        }
        return logEntry;
    }

    public void clean() {
        this.logLock.lock();
        try {
            e();
        } finally {
            this.logLock.unlock();
        }
    }

    public final int d(int i) {
        return (int) Math.floor(((double) i) / 2.0d);
    }

    public final void e() {
        Thread thread = this.pendingThread;
        if (thread != null) {
            thread.interrupt();
        }
        this.pendingThread = null;
        this.inputBuf = null;
        this.outputBuf = null;
        this.numPendingLogs = 0;
        if (this.recording) {
            this.recordStartIndex = 0;
        }
        k(new DataSetChange(DataSetChange.Reason.NEW_ENTRIES));
    }

    public final void f() {
        FixedRingBuffer fixedRingBufferH = h();
        FixedRingBuffer fixedRingBufferI = i();
        fixedRingBufferI.clear();
        Iterator it = fixedRingBufferH.iterator();
        while (it.hasNext()) {
            LogEntry logEntryC = c((LogEntry) it.next());
            if (logEntryC != null) {
                fixedRingBufferI.b(logEntryC);
            }
        }
        k(new DataSetChange(DataSetChange.Reason.FILTER));
    }

    public final void g(DataSetChange dataSetChange) {
        this.dataSetChangedPublish.onNext(dataSetChange);
    }

    public List<LogEntry> getEntries(int i, int i2) {
        this.logLock.lock();
        if (i >= 0) {
            try {
                if (i < this.maxStoredLogs) {
                    if (i2 < 0) {
                        throw new IllegalArgumentException("Size must be greater than 0");
                    }
                    FixedRingBuffer fixedRingBufferI = i();
                    l();
                    ArrayList arrayList = new ArrayList(i2);
                    int i3 = i2 + i;
                    while (i < i3) {
                        if (i < fixedRingBufferI.size()) {
                            arrayList.add((LogEntry) fixedRingBufferI.get(i));
                        }
                        i++;
                    }
                    this.logLock.unlock();
                    return arrayList;
                }
            } catch (Throwable th) {
                this.logLock.unlock();
                throw th;
            }
        }
        throw new IllegalArgumentException("Invalid start position = " + i);
    }

    @Nullable
    public LogEntry getEntry(int i) {
        this.logLock.lock();
        try {
            FixedRingBuffer fixedRingBufferI = i();
            l();
            if (i >= 0 && i < fixedRingBufferI.size()) {
                LogEntry logEntry = (LogEntry) fixedRingBufferI.get(i);
                this.logLock.unlock();
                return logEntry;
            }
            throw new IllegalArgumentException("Invalid position = " + i);
        } catch (Throwable th) {
            this.logLock.unlock();
            throw th;
        }
    }

    public int getMaxStoredLogs() {
        this.logLock.lock();
        try {
            return this.maxStoredLogs;
        } finally {
            this.logLock.unlock();
        }
    }

    public int getNumEntries() {
        this.logLock.lock();
        try {
            FixedRingBuffer fixedRingBufferI = i();
            l();
            return fixedRingBufferI.size();
        } finally {
            this.logLock.unlock();
        }
    }

    public final FixedRingBuffer h() {
        if (this.inputBuf == null) {
            this.inputBuf = new FixedRingBuffer<>(d(this.maxStoredLogs), this.maxStoredLogs);
        }
        Thread thread = this.pendingThread;
        if (thread == null) {
            Thread thread2 = new Thread(new Runnable() {
                @Override
                public final void run() {
                    this.b.j();
                }
            });
            this.pendingThread = thread2;
            thread2.start();
        } else if (!thread.isAlive()) {
            try {
                this.pendingThread.start();
            } catch (IllegalThreadStateException unused) {
            }
        }
        return this.inputBuf;
    }

    public final FixedRingBuffer i() {
        if (this.outputBuf == null) {
            this.outputBuf = new FixedRingBuffer<>(d(this.maxStoredLogs), this.maxStoredLogs);
        }
        return this.outputBuf;
    }

    public boolean isPaused() {
        return this.paused;
    }

    public boolean isRecording() {
        this.logLock.lock();
        try {
            return this.recording;
        } finally {
            this.logLock.unlock();
        }
    }

    public final void j() {
        while (!Thread.interrupted()) {
            if (!this.paused && this.logLock.tryLock()) {
                try {
                    if (Thread.interrupted()) {
                        this.logLock.unlock();
                        return;
                    } else {
                        l();
                        this.logLock.unlock();
                    }
                } catch (Throwable th) {
                    this.logLock.unlock();
                    throw th;
                }
            }
            try {
                Thread.sleep(POLL_TIME_INTERVAL);
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    public final void k(final DataSetChange dataSetChange) {
        this.sender.submit(new Runnable() {
            @Override
            public final void run() {
                this.b.g(dataSetChange);
            }
        });
    }

    public final void l() {
        int i;
        if (this.numPendingLogs == 0) {
            return;
        }
        FixedRingBuffer fixedRingBufferH = h();
        if (fixedRingBufferH.isEmpty()) {
            return;
        }
        FixedRingBuffer fixedRingBufferI = i();
        ArrayList arrayList = new ArrayList(this.numPendingLogs);
        int size = fixedRingBufferH.size();
        for (int i2 = size - this.numPendingLogs; i2 < size; i2++) {
            LogEntry logEntryC = c((LogEntry) fixedRingBufferH.get(i2));
            if (logEntryC != null) {
                fixedRingBufferI.b(logEntryC);
                arrayList.add(logEntryC);
                if (this.recording && (i = this.recordStartIndex) > 0) {
                    this.recordStartIndex = i - 1;
                }
            }
        }
        this.numPendingLogs = 0;
        if (arrayList.isEmpty()) {
            return;
        }
        k(new DataSetChange(DataSetChange.Reason.NEW_ENTRIES, arrayList));
    }

    public final int m(FixedRingBuffer fixedRingBuffer, OutputStream outputStream, int i, int i2, boolean z) {
        if (i < 0) {
            throw new IllegalArgumentException("startPos < 0");
        }
        PrintStream printStream = new PrintStream(outputStream, true);
        int i3 = 0;
        while (i <= i2) {
            LogEntry logEntry = (LogEntry) fixedRingBuffer.get(i);
            printStream.println(z ? logEntry.c() : logEntry.toString());
            if (!printStream.checkError()) {
                i3++;
            }
            i++;
        }
        return i3;
    }

    public mc7<DataSetChange> observeDataSetChanged() {
        return this.dataSetChangedPublish;
    }

    public void pause() {
        this.paused = true;
    }

    public void removeFilter(@NonNull String... strArr) {
        this.logLock.lock();
        try {
            int i = 0;
            for (String str : strArr) {
                if (str != null && this.filters.remove(str) != null) {
                    i++;
                }
            }
            if (i > 0) {
                f();
            }
        } finally {
            this.logLock.unlock();
        }
    }

    public void resume() {
        this.paused = false;
    }

    public void send(@NonNull LogEntry logEntry) {
        this.logLock.lock();
        try {
            h().b(logEntry);
            int i = this.numPendingLogs;
            if (i < this.maxStoredLogs) {
                this.numPendingLogs = i + 1;
            }
        } finally {
            this.logLock.unlock();
        }
    }

    public void setMaxStoredLogs(int i) {
        this.logLock.lock();
        try {
            e();
            this.maxStoredLogs = i;
        } finally {
            this.logLock.unlock();
        }
    }

    public void startRecording() {
        this.logLock.lock();
        try {
            l();
            this.recording = true;
            int size = i().size();
            this.recordStartIndex = size > 0 ? size - 1 : 0;
        } finally {
            this.logLock.unlock();
        }
    }

    public int stopRecording() {
        return stopRecording(null, false);
    }

    public int write(@NonNull OutputStream outputStream) {
        return write(outputStream, false);
    }

    public int stopRecording(@Nullable OutputStream outputStream) {
        return stopRecording(outputStream, false);
    }

    public int write(@NonNull OutputStream outputStream, boolean z) {
        this.logLock.lock();
        try {
            l();
            FixedRingBuffer fixedRingBufferI = i();
            return m(fixedRingBufferI, outputStream, 0, fixedRingBufferI.size() - 1, z);
        } finally {
            this.logLock.unlock();
        }
    }

    public int stopRecording(@Nullable OutputStream outputStream, boolean z) {
        this.logLock.lock();
        if (outputStream != null) {
            try {
                l();
                if (this.recordStartIndex >= 0) {
                    FixedRingBuffer fixedRingBufferI = i();
                    return m(fixedRingBufferI, outputStream, this.recordStartIndex, fixedRingBufferI.size() - 1, z);
                }
            } finally {
                this.recording = false;
                this.recordStartIndex = -1;
                this.logLock.unlock();
            }
        }
        return 0;
    }
}
