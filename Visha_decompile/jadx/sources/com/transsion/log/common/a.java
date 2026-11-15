package com.transsion.log.common;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.opc;
import defpackage.sr3;
import defpackage.wdb;
import defpackage.xu3;
import defpackage.yb9;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.concurrent.ConcurrentLinkedQueue;

public class a {
    public static a n;
    public String b;
    public String c;
    public long d;
    public long e;
    public long f;
    public long g;
    public String h;
    public String i;
    public LoganThread j;
    public sr3 l;
    public Long m;
    public ConcurrentLinkedQueue a = new ConcurrentLinkedQueue();
    public SimpleDateFormat k = new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D);

    public a(wdb wdbVar) {
        if (!wdbVar.p()) {
            Log.e("LoganControlCenter", "config's param is invalid");
        }
        this.c = wdbVar.b;
        this.b = wdbVar.a;
        this.d = wdbVar.e;
        this.f = wdbVar.g;
        this.e = wdbVar.c;
        this.g = wdbVar.f;
        this.h = new String(wdbVar.j);
        this.i = new String(wdbVar.k);
        this.l = wdbVar.h;
        this.m = Long.valueOf(wdbVar.l);
        e();
    }

    public static a f(wdb wdbVar) {
        if (n == null) {
            synchronized (a.class) {
                try {
                    if (n == null) {
                        n = new a(wdbVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return n;
    }

    public void a(String str) {
        try {
            String str2 = this.c;
            String str3 = File.separator;
            int iLastIndexOf = str2.lastIndexOf(str3);
            File[] fileArrListFiles = new File((iLastIndexOf != -1 ? this.c.substring(0, iLastIndexOf) : "") + str3 + "v_ubt_zip_v1").listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    if (!file.getPath().equals(str)) {
                        file.delete();
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public void b() {
        if (TextUtils.isEmpty(this.c)) {
            return;
        }
        LoganModel loganModel = new LoganModel();
        loganModel.a = LoganModel.Action.FLUSH;
        this.a.add(loganModel);
        LoganThread loganThread = this.j;
        if (loganThread != null) {
            loganThread.notifyRun();
        }
    }

    public File c() {
        return new File(this.c);
    }

    public sr3 d() {
        return this.l;
    }

    public final void e() {
        if (this.j == null) {
            LoganThread loganThread = new LoganThread(this.a, this.b, this.c, this.d, this.e, this.f, this.h, this.i, this.l, this.m.longValue());
            this.j = loganThread;
            loganThread.setName("logan-thread");
            this.j.start();
        }
    }

    public boolean g(yb9 yb9Var) {
        b();
        String str = this.c;
        String str2 = File.separator;
        int iLastIndexOf = str.lastIndexOf(str2);
        String strSubstring = iLastIndexOf != -1 ? this.c.substring(0, iLastIndexOf) : "";
        String str3 = strSubstring + str2 + "v_ubt_zip_v1" + str2 + yb9Var.b + ".zip";
        File file = new File(strSubstring + str2 + "v_ubt_zip_v1");
        if (!file.exists()) {
            file.mkdirs();
        }
        if (xu3.b(yb9Var.e, str3)) {
            yb9Var.c = str3;
            return true;
        }
        yb9Var.c = "";
        return false;
    }

    public void h(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        LoganModel loganModel = new LoganModel();
        loganModel.a = LoganModel.Action.WRITE;
        opc opcVar = new opc();
        String name = Thread.currentThread().getName();
        long id = Thread.currentThread().getId();
        boolean z = Looper.getMainLooper() == Looper.myLooper();
        opcVar.a = str;
        opcVar.e = System.currentTimeMillis();
        opcVar.f = i;
        opcVar.b = z;
        opcVar.c = id;
        opcVar.d = name;
        loganModel.b = opcVar;
        if (this.a.size() < this.g) {
            this.a.add(loganModel);
            LoganThread loganThread = this.j;
            if (loganThread != null) {
                loganThread.notifyRun();
            }
        }
    }
}
