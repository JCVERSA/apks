package com.mgtv.thirdsdk.playcore.utils;

import android.os.Process;
import androidx.media3.common.C;
import com.hunantv.imgo.util.n;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class a {
    private RunnableC0191a a;

    public static class RunnableC0191a implements Runnable {
        private float a;
        private boolean b;
        private boolean c;
        private boolean d;

        public void a() {
            this.d = true;
        }

        public void b() {
            synchronized (this) {
                try {
                    this.d = false;
                    notifyAll();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        public void c() {
            this.b = true;
        }

        public boolean d() {
            return this.c;
        }

        @Override
        public void run() {
            this.c = true;
            while (!this.b) {
                if (this.d) {
                    synchronized (this) {
                        try {
                            try {
                                wait();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                    }
                    this.d = false;
                }
                this.a = a.e();
                n.a("cpu", "mCpuUsage :" + this.a);
                try {
                    Thread.sleep(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                } catch (InterruptedException e3) {
                    e3.printStackTrace();
                }
            }
            this.c = false;
        }
    }

    public static float e() {
        float f = f();
        float fG = g();
        try {
            Thread.sleep(360L);
        } catch (Exception unused) {
        }
        return ((g() - fG) * 100.0f) / (f() - f);
    }

    private static long f() {
        String[] strArrSplit;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/stat")), 1000);
            String line = bufferedReader.readLine();
            bufferedReader.close();
            strArrSplit = line.split(" ");
        } catch (IOException e) {
            e.printStackTrace();
            strArrSplit = null;
        }
        return Long.parseLong(strArrSplit[2]) + Long.parseLong(strArrSplit[3]) + Long.parseLong(strArrSplit[4]) + Long.parseLong(strArrSplit[6]) + Long.parseLong(strArrSplit[5]) + Long.parseLong(strArrSplit[7]) + Long.parseLong(strArrSplit[8]);
    }

    private static long g() {
        String[] strArrSplit;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/stat")), 1000);
            String line = bufferedReader.readLine();
            bufferedReader.close();
            strArrSplit = line.split(" ");
        } catch (IOException e) {
            e.printStackTrace();
            strArrSplit = null;
        }
        return Long.parseLong(strArrSplit[13]) + Long.parseLong(strArrSplit[14]) + Long.parseLong(strArrSplit[15]) + Long.parseLong(strArrSplit[16]);
    }

    public void a() {
        RunnableC0191a runnableC0191a = this.a;
        if (runnableC0191a == null || !runnableC0191a.d()) {
            return;
        }
        this.a.a();
    }

    public void b() {
        RunnableC0191a runnableC0191a = this.a;
        if (runnableC0191a == null || !runnableC0191a.d()) {
            return;
        }
        this.a.b();
    }

    public void c() {
        RunnableC0191a runnableC0191a = this.a;
        if (runnableC0191a != null) {
            runnableC0191a.c();
            this.a = null;
        }
    }
}
