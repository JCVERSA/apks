package com.transsion.compressor.image;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public class h implements Handler.Callback {

    private static Random f42815h;

    private String f42816a;

    private final boolean f42817b;

    private final int f42818c;

    private final e f42819d;

    private final com.transsion.compressor.image.a f42820e;

    private final List f42821f;

    private final Handler f42822g;

    public static class a {

        private final Context f42823a;

        private String f42824b;

        private boolean f42825c;

        private e f42827e;

        private com.transsion.compressor.image.a f42828f;

        private int f42826d = 100;

        private final List f42829g = new ArrayList();

        class C0588a extends c {

            final String f42830b;

            C0588a(String str) {
                this.f42830b = str;
            }

            @Override
            public InputStream a() {
                return new FileInputStream(this.f42830b);
            }

            @Override
            public String getPath() {
                return this.f42830b;
            }
        }

        a(Context context) {
            this.f42823a = context;
        }

        static f e(a aVar) {
            aVar.getClass();
            return null;
        }

        private h h() {
            return new h(this);
        }

        public void i() {
            try {
                File fileE = j.e(this.f42823a);
                if (fileE != null) {
                    this.f42824b = fileE.getAbsolutePath();
                }
                j.d(new File(this.f42824b));
            } catch (Exception unused) {
            }
        }

        public a j(com.transsion.compressor.image.a aVar) {
            this.f42828f = aVar;
            return this;
        }

        public void k() {
            h().g(this.f42823a);
        }

        public a l(String str) {
            this.f42829g.add(new C0588a(str));
            return this;
        }

        public a m(e eVar) {
            this.f42827e = eVar;
            return this;
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                f42815h = SecureRandom.getInstanceStrong();
            } else {
                f42815h = new Random();
            }
        } catch (NoSuchAlgorithmException e10) {
            j.f(Log.getStackTraceString(e10));
        }
    }

    private File c(Context context, d dVar) {
        try {
            return d(context, dVar);
        } finally {
            dVar.close();
        }
    }

    private File d(Context context, d dVar) {
        Checker checker = Checker.SINGLE;
        File fileE = e(context, checker.extSuffix(dVar));
        com.transsion.compressor.image.a aVar = this.f42820e;
        if (aVar != null) {
            return (aVar.a(dVar.getPath()) && checker.needCompress(this.f42818c, dVar.getPath())) ? new b(dVar, fileE, this.f42817b).a() : new File(dVar.getPath());
        }
        return checker.needCompress(this.f42818c, dVar.getPath()) ? new b(dVar, fileE, this.f42817b).a() : new File(dVar.getPath());
    }

    private File e(Context context, String str) {
        File fileE;
        if (TextUtils.isEmpty(this.f42816a) && (fileE = j.e(context)) != null) {
            this.f42816a = fileE.getAbsolutePath();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f42816a);
        sb2.append(File.separator);
        sb2.append(System.currentTimeMillis());
        sb2.append(f42815h.nextInt(1000));
        if (TextUtils.isEmpty(str)) {
            str = ".jpg";
        }
        sb2.append(str);
        File file = new File(sb2.toString());
        j.c(file);
        return file;
    }

    public void f(d dVar, Context context) {
        try {
            Message messageObtainMessage = this.f42822g.obtainMessage(1);
            messageObtainMessage.obj = dVar.getPath();
            this.f42822g.sendMessage(messageObtainMessage);
            File fileC = c(context, dVar);
            int[] iArrA = j.a(fileC);
            Message messageObtainMessage2 = this.f42822g.obtainMessage(0, fileC);
            Bundle bundle = new Bundle();
            bundle.putIntArray("tag_image_info", iArrA);
            bundle.putLong("tag_image_size", fileC.length() / 1024);
            messageObtainMessage2.setData(bundle);
            this.f42822g.sendMessage(messageObtainMessage2);
        } catch (IOException e10) {
            Handler handler = this.f42822g;
            handler.sendMessage(handler.obtainMessage(2, e10));
        }
    }

    public void g(final Context context) {
        e eVar;
        e eVar2;
        if (context == null && (eVar2 = this.f42819d) != null) {
            eVar2.onError(new NullPointerException("context cannot be null"));
        }
        if (this.f42821f.size() == 0 && (eVar = this.f42819d) != null) {
            eVar.onError(new NullPointerException("image file cannot be null"));
            return;
        }
        Iterator it = this.f42821f.iterator();
        while (it.hasNext()) {
            final d dVar = (d) it.next();
            AsyncTask.SERIAL_EXECUTOR.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f42812a.f(dVar, context);
                }
            });
            it.remove();
        }
    }

    public static a h(Context context) {
        return new a(context.getApplicationContext());
    }

    @Override
    public boolean handleMessage(Message message) {
        e eVar = this.f42819d;
        if (eVar == null) {
            return true;
        }
        int i10 = message.what;
        if (i10 == 0) {
            File file = (File) message.obj;
            Bundle data = message.getData();
            this.f42819d.b(file, data.getIntArray("tag_image_info"), data.getLong("tag_image_size"));
            return false;
        }
        if (i10 == 1) {
            eVar.a((String) message.obj);
            return false;
        }
        if (i10 != 2) {
            return false;
        }
        eVar.onError((Throwable) message.obj);
        return false;
    }

    private h(a aVar) {
        this.f42816a = aVar.f42824b;
        a.e(aVar);
        this.f42821f = aVar.f42829g;
        this.f42819d = aVar.f42827e;
        this.f42818c = aVar.f42826d;
        this.f42820e = aVar.f42828f;
        this.f42817b = aVar.f42825c;
        this.f42822g = new Handler(Looper.getMainLooper(), this);
    }
}
