package com.hunantv.imgo.util;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public class ThreadManager implements Serializable {
    private static final String DEFAULT_TAG = "Unknown";
    private static final Handler HANDLER;
    private static final String TAG_LONG_LOCAL_IMAGE = "TAG_LONG_LOCAL_IMAGE";
    private static final int TAG_LONG_LOCAL_IMAGE_SIZE = 2;
    private static final String TAG_LONG_NETWORK = "TAG_LONG_NETWORK";
    private static final String TAG_LONG_NETWORK_IMAGE = "TAG_LONG_NETWORK_IMAGE";
    private static final int TAG_LONG_NETWORK_IMAGE_SIZE = 3;
    private static final int TAG_LONG_NETWORK_SIZE = 3;
    private static final String TAG_LONG_POOL = "TAG_LONG_POOL";
    private static final int TAG_LONG_POOL_SIZE = 4;
    private static final String TAG_MEDIUM_POOL = "TAG_MEDIUM_POOL";
    private static final int TAG_MEDIUM_POOL_SIZE = 3;
    private static final String TAG_P2PLOG_POOL = "TAG_P2PLOG_POOL";
    private static final int TAG_P2PLOG_POOL_SIZE = 1;
    private static final String TAG_SHORT_POOL = "TAG_SHORT_POOL";
    private static final int TAG_SHORT_POOL_SIZE = 2;
    private static final String TAG_STATISTICS_POOL = "TAG_STATISTICS_POOL";
    private static final int TAG_STATISTICS_POOL_SIZE = 1;
    private static final int WHAT_HANDLER_POST = 1;
    private static String sCurrentTag;

    static {
        com.hunantv.imgo.c.a.b.d.b(TAG_LONG_POOL).b(4).a(10).a();
        com.hunantv.imgo.c.a.b.d.b(TAG_SHORT_POOL).a(-16).b(2).a();
        com.hunantv.imgo.c.a.b.d.b(TAG_MEDIUM_POOL).b(3).a(0).a();
        com.hunantv.imgo.c.a.b.d.b(TAG_STATISTICS_POOL).b(1).a(10).a();
        com.hunantv.imgo.c.a.b.d.b(TAG_LONG_NETWORK).b(3).a(-19).a();
        com.hunantv.imgo.c.a.b.d.b(TAG_LONG_NETWORK_IMAGE).a(-16).b(3).a();
        com.hunantv.imgo.c.a.b.d.b(TAG_LONG_LOCAL_IMAGE).b(2).a(-16).a();
        com.hunantv.imgo.c.a.b.f.a(com.hunantv.imgo.c.a.b.d.b(TAG_P2PLOG_POOL).a(19).b(1).a());
        sCurrentTag = DEFAULT_TAG;
        HANDLER = new Handler(Looper.getMainLooper()) {
            @Override
            public void handleMessage(Message message) {
                Object obj;
                if (message.what == 1 && (obj = message.obj) != null && (obj instanceof Runnable)) {
                    ((Runnable) obj).run();
                }
            }
        };
    }

    public static boolean checkMainThread() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static final void create(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            sCurrentTag = String.valueOf(activity.hashCode());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static final void destory(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            com.hunantv.imgo.c.b.c().a(String.valueOf(activity.hashCode())).a().b();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static final void execute(Runnable runnable) {
        com.hunantv.imgo.c.b.c().a(runnable).b(TAG_MEDIUM_POOL).a(sCurrentTag).b(5).a().a();
    }

    public static final void executeStatistics(Runnable runnable) {
        com.hunantv.imgo.c.b.c().b(TAG_STATISTICS_POOL).a(runnable).a().a();
    }

    public static final ExecutorService geStatisticsThreadPool() {
        return com.hunantv.imgo.c.a.b.f.a(TAG_STATISTICS_POOL);
    }

    public static final ExecutorService getLocalImageExecutorService() {
        return com.hunantv.imgo.c.a.b.f.a(TAG_LONG_LOCAL_IMAGE);
    }

    public static final ExecutorService getLongExecutorService() {
        return com.hunantv.imgo.c.a.b.f.a(TAG_LONG_POOL);
    }

    public static final ExecutorService getMediumExecutorService() {
        return com.hunantv.imgo.c.a.b.f.a(TAG_MEDIUM_POOL);
    }

    public static final ExecutorService getNetWorkExecutorService() {
        return com.hunantv.imgo.c.a.b.f.a(TAG_LONG_NETWORK);
    }

    public static final ExecutorService getNetWorkImageExecutorService() {
        return com.hunantv.imgo.c.a.b.f.a(TAG_LONG_NETWORK_IMAGE);
    }

    public static final ExecutorService getP2PLogExecutorService() {
        return com.hunantv.imgo.c.a.b.f.a(TAG_P2PLOG_POOL);
    }

    public static final ExecutorService getShortExecutorService() {
        return com.hunantv.imgo.c.a.b.f.a(TAG_SHORT_POOL);
    }

    public static final void post(Runnable runnable) {
        Message.obtain(HANDLER, 1, runnable).sendToTarget();
    }

    public static void printAllStackInfo() {
        Looper.getMainLooper().getThread();
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        StringBuilder sb = new StringBuilder(128);
        for (Thread thread : allStackTraces.keySet()) {
            StackTraceElement[] stackTrace = thread.getStackTrace();
            if (stackTrace != null && stackTrace.length > 0) {
                sb.append(thread.getName());
                sb.append("\n");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    sb.append("\tat ");
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
        }
        if (sb.length() != 0) {
            n.a("ThreadManager", sb.toString());
        }
    }

    public static final void submit(Runnable runnable) {
        com.hunantv.imgo.c.b.c().a(runnable).b(TAG_MEDIUM_POOL).b(0).a(sCurrentTag).a().a();
    }

    public static final void execute(Runnable runnable, int i) {
        com.hunantv.imgo.c.b.c().a(runnable).a(i).b(TAG_MEDIUM_POOL).a(sCurrentTag).b(5).a().a();
    }

    public static final void post(Runnable runnable, int i) {
        Handler handler = HANDLER;
        handler.sendMessageDelayed(Message.obtain(handler, 1, runnable), i);
    }
}
