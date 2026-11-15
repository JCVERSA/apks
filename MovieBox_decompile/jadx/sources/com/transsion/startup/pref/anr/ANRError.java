package com.transsion.startup.pref.anr;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

public class ANRError extends Error {
    private static final long serialVersionUID = 1;
    public final long duration;

    private ANRError(ANRError$$._Thread _thread, long j10) {
        super("Application Not Responding for at least " + j10 + " ms.", _thread);
        this.duration = j10;
    }

    @NonNull
    static ANRError New(long j10, @Nullable String str, boolean z10) {
        final Thread thread = Looper.getMainLooper().getThread();
        TreeMap treeMap = new TreeMap(new Comparator<Thread>() {
            @Override
            public int compare(Thread thread2, Thread thread3) {
                if (thread2 == thread3) {
                    return 0;
                }
                Thread thread4 = thread;
                if (thread2 == thread4) {
                    return 1;
                }
                if (thread3 == thread4) {
                    return -1;
                }
                return thread3.getName().compareTo(thread2.getName());
            }
        });
        for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
            if (entry.getKey() == thread || (entry.getKey().getName().startsWith(str) && (z10 || entry.getValue().length > 0))) {
                treeMap.put(entry.getKey(), entry.getValue());
            }
        }
        if (!treeMap.containsKey(thread)) {
            treeMap.put(thread, thread.getStackTrace());
        }
        ANRError$$._Thread _thread = null;
        for (Map.Entry entry2 : treeMap.entrySet()) {
            _thread = new ANRError$$._Thread(_thread);
        }
        return new ANRError(_thread, j10);
    }

    @NonNull
    static ANRError NewMainOnly(long j10) {
        Thread thread = Looper.getMainLooper().getThread();
        return new ANRError(new ANRError$$._Thread(null), j10);
    }

    private static String getThreadTitle(Thread thread) {
        return thread.getName() + " (state = " + thread.getState() + ")";
    }

    @Override
    @NonNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
