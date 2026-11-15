package com.transsion.video_edit;

import android.os.Build;
import android.os.Environment;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import java.util.Locale;

public abstract class b {
    public static DiskCacheStrategy a = DiskCacheStrategy.RESOURCE;
    public static int b = 15;
    public static final String c;
    public static final String d;

    public static class a {
        public int a;
        public long b;

        public a(int i, long j) {
            this.a = i;
            this.b = j;
        }

        public int a(long j) {
            return (int) (((j * ((long) this.a)) * 1.0f) / this.b);
        }

        public long b(int i) {
            return (long) (((((long) i) * this.b) * 1.0f) / this.a);
        }
    }

    static {
        String str = Build.VERSION.SDK_INT >= 30 ? "/Download/VishaCut" : "/VishaPlayer/VishaCut";
        c = str;
        d = Environment.getExternalStorageDirectory().getAbsolutePath() + str;
    }

    public static String a(long j) {
        return b(j / 1000);
    }

    public static String b(long j) {
        if (j <= 0) {
            return "00:00";
        }
        if (j < 60) {
            return String.format(Locale.getDefault(), "00:%02d", Long.valueOf(j % 60));
        }
        return j < 3600 ? String.format(Locale.getDefault(), "%02d:%02d", Long.valueOf(j / 60), Long.valueOf(j % 60)) : String.format(Locale.getDefault(), "%02d:%02d:%02d", Long.valueOf(j / 3600), Long.valueOf((j % 3600) / 60), Long.valueOf(j % 60));
    }

    public static long c(long j) {
        if (j < 60000) {
            return j;
        }
        return 60000L;
    }

    public static long d(long j) {
        if (j < 300000) {
            return j;
        }
        return 300000L;
    }
}
