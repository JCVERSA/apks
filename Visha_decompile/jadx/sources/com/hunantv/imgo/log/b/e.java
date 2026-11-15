package com.hunantv.imgo.log.b;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.hunantv.imgo.log.entity.ReportParamsData;
import com.hunantv.imgo.net.ImgoHttpParams;
import com.hunantv.imgo.util.ThreadManager;
import com.hunantv.imgo.util.n;
import com.hunantv.imgo.util.x;
import com.mgtv.task.http.MultiParts;
import defpackage.hb0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

public class e implements f {
    private static final String a = com.hunantv.imgo.net.a.g() + "/mobile/report";
    private static e d;
    private long b;
    private ReportParamsData c;

    public class a implements Runnable {
        private a() {
        }

        @Override
        public void run() throws Throwable {
            if (e.this.c != null) {
                try {
                    if (com.hunantv.imgo.b.c.a().p == 1) {
                        c.a().b();
                    }
                    File fileC = c.a().c();
                    if (fileC != null && fileC.exists()) {
                        e.this.c.a(fileC.getAbsolutePath());
                        e eVar = e.this;
                        Response responseB = eVar.b(eVar.c);
                        if (responseB == null || responseB.code() < 200 || responseB.code() >= 300) {
                            n.a("ReportRequestHandler", "request report failed and immediately retry once");
                            e eVar2 = e.this;
                            responseB = eVar2.b(eVar2.c);
                        }
                        if (responseB != null && responseB.code() >= 200 && responseB.code() < 300) {
                            if (!e.this.a(responseB)) {
                                e eVar3 = e.this;
                                eVar3.c(eVar3.c);
                                return;
                            } else {
                                n.a("ReportRequestHandler", "request report success and delete zip file");
                                e eVar4 = e.this;
                                eVar4.e(eVar4.c);
                                c.a().d();
                                return;
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("request report failed and return http code = ");
                        sb.append(responseB == null ? -1 : responseB.code());
                        n.a("ReportRequestHandler", sb.toString());
                        e eVar5 = e.this;
                        eVar5.c(eVar5.c);
                        return;
                    }
                    n.a("ReportRequestHandler", "request report log zip File is null");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private e() {
    }

    private File d() {
        String strC = c();
        if (!TextUtils.isEmpty(strC)) {
            File file = new File(strC);
            if (!file.exists()) {
                file.mkdirs();
            } else if (!file.isDirectory()) {
                file.delete();
                file.mkdirs();
            }
        }
        for (int i = 0; i < 5; i++) {
            File file2 = new File(strC + "/" + (new SimpleDateFormat("MM-dd-HH-mm-ss-").format(new Date(System.currentTimeMillis())) + String.valueOf((int) ((Math.random() * 1000.0d) + ((double) i))) + ".report"));
            if (!file2.exists()) {
                try {
                    file2.createNewFile();
                    return file2;
                } catch (IOException e) {
                    e.printStackTrace();
                    return file2;
                }
            }
        }
        return null;
    }

    public void e() throws Throwable {
        n.a("ReportRequestHandler", "startCheck");
        String strC = c();
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        File file = new File(strC);
        if (file.exists() && file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            for (int i = 0; i < fileArrListFiles.length; i++) {
                ReportParamsData reportParamsDataA = a(fileArrListFiles[i]);
                if (reportParamsDataA != null) {
                    fileArrListFiles[i].delete();
                    if (reportParamsDataA.d() > com.hunantv.imgo.log.c.c()) {
                        n.c("ReportRequestHandler", "over retry time, retry=" + reportParamsDataA.d());
                        e(reportParamsDataA);
                    } else {
                        reportParamsDataA.a(reportParamsDataA.d() + 1);
                        Response responseB = b(reportParamsDataA);
                        if (responseB == null || responseB.code() < 200 || responseB.code() >= 300) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("request report failed and return http code = ");
                            sb.append(responseB == null ? -1 : responseB.code());
                            n.a("ReportRequestHandler", sb.toString());
                            c(reportParamsDataA);
                        } else if (a(responseB)) {
                            n.a("ReportRequestHandler", "retry success, delete zip file");
                            e(reportParamsDataA);
                        } else {
                            c(reportParamsDataA);
                        }
                    }
                }
            }
        }
    }

    private boolean f() {
        return (System.currentTimeMillis() - this.b) / 60000 > com.hunantv.imgo.log.c.d();
    }

    public void c(ReportParamsData reportParamsData) throws Throwable {
        n.a("ReportRequestHandler", "ReportRequestHandler failed");
        d(reportParamsData);
    }

    public Response b(ReportParamsData reportParamsData) {
        if (reportParamsData == null || TextUtils.isEmpty(reportParamsData.c())) {
            return null;
        }
        try {
            MultiParts multiPartsA = reportParamsData.a();
            File file = new File(reportParamsData.c());
            boolean zExists = file.exists();
            boolean zCanRead = file.canRead();
            if (zExists && zCanRead) {
                multiPartsA.put("appLog", file.getName(), x.a(file), file);
            }
            new ImgoHttpParams("post").setMultiParts(multiPartsA);
            OkHttpClient.Builder builderNewBuilder = com.mgtv.task.http.d.a().newBuilder();
            Request.Builder builderUrl = new Request.Builder().url(a);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            builderNewBuilder.connectTimeout(300000L, timeUnit).readTimeout(300000L, timeUnit);
            MultipartBody.Builder builder = new MultipartBody.Builder(multiPartsA.getBoundary());
            multiPartsA.writeTo(builder);
            builderUrl.post(builder.build());
            return builderNewBuilder.build().newCall(builderUrl.build()).execute();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static e a() {
        if (d == null) {
            synchronized (e.class) {
                try {
                    if (d == null) {
                        d = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    private String c() {
        String str = com.hunantv.imgo.log.c.b;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str + "/report/";
    }

    @Override
    public com.hunantv.imgo.log.entity.c a(com.hunantv.imgo.log.entity.b bVar) {
        if (bVar != null) {
            try {
                if (bVar.a != null) {
                    n.a("ReportRequestHandler", "handleRequest start, request cmd = " + ((int) bVar.a.b));
                    byte b = bVar.a.b;
                    if (b == 13) {
                        b();
                    } else if (b == 10) {
                        a(ReportParamsData.a(bVar.b));
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        byte[] bytes = "OK".getBytes();
        return new com.hunantv.imgo.log.entity.c(new com.hunantv.imgo.log.entity.a((byte) 20, bytes.length), bytes);
    }

    private void d(ReportParamsData reportParamsData) throws Throwable {
        File fileD;
        if (reportParamsData == null || (fileD = d()) == null || !fileD.exists() || !fileD.canWrite()) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(fileD);
                try {
                    fileOutputStream2.write(reportParamsData.b());
                    fileOutputStream2.close();
                } catch (Exception e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void a(ReportParamsData reportParamsData) {
        this.c = reportParamsData;
        HandlerThread handlerThread = new HandlerThread("reportThread");
        handlerThread.start();
        new Handler(handlerThread.getLooper()).post(new a());
    }

    public void b() {
        n.a("ReportRequestHandler", "checkFailedRequestQueue");
        if (f()) {
            n.a("ReportRequestHandler", "checkFailedRequestQueue OverCheckInterval");
            this.b = System.currentTimeMillis();
            ThreadManager.execute(new Runnable() {
                @Override
                public void run() throws Throwable {
                    e.this.e();
                }
            });
        }
    }

    public boolean a(Response response) {
        if (response == null) {
            return false;
        }
        try {
            String strString = response.body().string();
            n.a("ReportRequestHandler", "repost response = " + strString);
            if (TextUtils.isEmpty(strString)) {
                return false;
            }
            int i = new JSONObject(strString).getInt(hb0.KEY_NAME_ERROR_CODE);
            return i == 200 || i >= 400;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void e(ReportParamsData reportParamsData) {
        if (reportParamsData == null || TextUtils.isEmpty(reportParamsData.c())) {
            return;
        }
        File file = new File(reportParamsData.c());
        if (file.exists()) {
            file.delete();
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private ReportParamsData a(File file) throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        ReportParamsData reportParamsDataA = null;
        if (file != null && file.exists() && file.canRead() && file.getName().endsWith(".report")) {
            byte[] bArr = new byte[(int) file.length()];
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        try {
                            fileInputStream.read(bArr);
                            reportParamsDataA = ReportParamsData.a(bArr);
                            fileInputStream.close();
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return reportParamsDataA;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            } catch (Exception e4) {
                e = e4;
                fileInputStream = null;
            } catch (Throwable th3) {
                fileInputStream = null;
                th = th3;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        }
        return reportParamsDataA;
    }
}
