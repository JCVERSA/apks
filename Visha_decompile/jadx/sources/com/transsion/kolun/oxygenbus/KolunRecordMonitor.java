package com.transsion.kolun.oxygenbus;

import android.os.Environment;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import com.transsion.apiinvoke.monitor.ApiInvokeMonitor;
import com.transsion.apiinvoke.monitor.RecordItem;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.concurrent.ConcurrentLinkedQueue;

public class KolunRecordMonitor extends ApiInvokeMonitor.DefaultTraceMonitor {
    private static final String MONITOR_FILE_NAME = "monitor_file.log";
    private static final String TAG = "ApiInvokeMonitor";
    private static volatile KolunRecordMonitor instance;
    private WriteThread mThread;

    public class WriteThread extends Thread {
        private String filePath;
        private boolean isRunning;
        private Object lock = new Object();
        private ConcurrentLinkedQueue<String> mQueue = new ConcurrentLinkedQueue<>();

        public WriteThread() {
            this.isRunning = false;
            this.filePath = null;
            String path = getPath();
            if (path != null) {
                this.filePath = path + File.separator + KolunRecordMonitor.MONITOR_FILE_NAME;
            }
            this.isRunning = true;
        }

        public void awake() {
            synchronized (this.lock) {
                this.lock.notify();
            }
        }

        public void deleteLogFile() {
            File file = new File(this.filePath);
            if (file.exists()) {
                file.delete();
            }
        }

        public void enqueue(String str) {
            this.mQueue.add(str);
            if (isRunning()) {
                return;
            }
            awake();
        }

        public boolean exist() {
            return Environment.getExternalStorageState().equals("mounted");
        }

        public String getPath() {
            if (exist()) {
                return Environment.getExternalStorageDirectory().toString();
            }
            return null;
        }

        public boolean isExitLogFile() {
            File file = new File(this.filePath);
            return file.exists() && file.length() > 3;
        }

        public boolean isRunning() {
            return this.isRunning;
        }

        public void recordStringLog(String str) {
            File file = new File(this.filePath);
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                try {
                    file.createNewFile();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            try {
                FileWriter fileWriter = new FileWriter(file, true);
                BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                bufferedWriter.write(str);
                bufferedWriter.newLine();
                bufferedWriter.close();
                fileWriter.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x001a */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            while (true) {
                synchronized (this.lock) {
                    this.isRunning = true;
                    while (!this.mQueue.isEmpty()) {
                        try {
                            recordStringLog(this.mQueue.poll());
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    this.isRunning = false;
                    try {
                        this.lock.wait();
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    private KolunRecordMonitor() {
        this.mThread = null;
        this.mThread = new WriteThread();
    }

    public static KolunRecordMonitor getInstance() {
        if (instance != null) {
            synchronized (KolunRecordMonitor.class) {
                try {
                    if (instance == null) {
                        instance = new KolunRecordMonitor();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    @Override
    public void onInvokeEnd(RecordItem recordItem, ApiCallback apiCallback) {
    }

    @Override
    public void onInvokeStart(RecordItem recordItem) {
        this.mThread.enqueue(recordItem.toString());
    }
}
