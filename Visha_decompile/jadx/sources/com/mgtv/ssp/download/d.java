package com.mgtv.ssp.download;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.alibaba.android.arouter.utils.Consts;
import com.mgtv.ssp.download.dao3.FileDownloadInfoDao;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class d {
    private static volatile d a;
    private static OkHttpClient e;
    private static Context g;
    private static boolean h;
    private FileDownloadInfoDao b;
    private File d;
    private Map<String, e> c = new HashMap();
    private Map<String, c> f = new ConcurrentHashMap();

    public static final class a extends Thread {

        @NonNull
        private com.mgtv.ssp.download.dao3.c a;
        private b b;
        private boolean c;
        private long d;
        private RandomAccessFile e;

        public a(@NonNull com.mgtv.ssp.download.dao3.c cVar, b bVar) {
            super("mgtv_fileDownld");
            this.d = 0L;
            this.e = null;
            this.a = cVar;
            this.b = bVar;
            this.c = false;
        }

        @Override
        public void run() {
            a();
        }

        public void a(boolean z) {
            this.c = z;
        }

        private void a() {
            Request requestBuild;
            try {
                if (!d.h && !com.mgtv.ssp.download.a.a(d.g).a().hasKey(this.a)) {
                    com.mgtv.ssp.download.a.a(d.g).a().insert(this.a);
                }
                long jLongValue = this.a.g.longValue();
                this.d = jLongValue;
                if (jLongValue < 0 || jLongValue > this.a.h.longValue()) {
                    this.d = 0L;
                }
                f.b("FileDownloader", " APKDOWNLOAD THREAD mDownloadInfo=" + this.a.toString());
                if (d.h) {
                    requestBuild = new Request.Builder().url(this.a.e).build();
                    boolean unused = d.h = false;
                } else {
                    requestBuild = new Request.Builder().url(this.a.e).header("RANGE", "bytes=" + this.d + "-").build();
                }
                d.e.connectTimeoutMillis();
                d.e.newCall(requestBuild).enqueue(new Callback() {
                    private long b = 0;
                    private long c = 0;

                    @Override
                    public void onFailure(Call call, IOException iOException) {
                        iOException.printStackTrace();
                        d.b(a.this.a, 3);
                        if (a.this.b != null) {
                            a.this.b.a(a.this.a.b, a.this.a, iOException.getMessage());
                        }
                    }

                    @Override
                    public void onResponse(Call call, Response response) throws IOException {
                        InputStream inputStream = null;
                        try {
                            try {
                                if (response.code() != 200 && response.code() != 206) {
                                    d.b(a.this.a, 3);
                                    if (a.this.b != null) {
                                        a.this.b.a(a.this.a.b, a.this.a, "code:" + response.code());
                                    }
                                    if (a.this.e != null) {
                                        a.this.e.close();
                                        return;
                                    }
                                    return;
                                }
                                byte[] bArr = new byte[4096];
                                InputStream inputStreamByteStream = response.body().byteStream();
                                a.this.a.h = Long.valueOf(response.body().contentLength() + a.this.d);
                                long jLongValue2 = a.this.a.h.longValue();
                                File file = new File(a.this.a.d);
                                if (!file.exists()) {
                                    if (!file.createNewFile()) {
                                        d.b(a.this.a, 3);
                                        if (a.this.b != null) {
                                            a.this.b.a(a.this.a.b, a.this.a, "CreateFileFailed");
                                        }
                                        if (inputStreamByteStream != null) {
                                            inputStreamByteStream.close();
                                        }
                                        if (a.this.e != null) {
                                            a.this.e.close();
                                            return;
                                        }
                                        return;
                                    }
                                    a.this.d = 0L;
                                }
                                a.this.e = new RandomAccessFile(file, "rw");
                                a.this.e.seek(a.this.d);
                                while (true) {
                                    int i = inputStreamByteStream.read(bArr);
                                    if (i == -1) {
                                        d.b(a.this.a, 2);
                                        if (a.this.b != null) {
                                            a.this.b.a(a.this.a.b, a.this.a);
                                        }
                                        inputStreamByteStream.close();
                                        if (a.this.e != null) {
                                            break;
                                        } else {
                                            return;
                                        }
                                    }
                                    if (a.this.c && a.this.b != null) {
                                        d.b(a.this.a, 4);
                                        a.this.b.b(a.this.a.b, a.this.a);
                                        inputStreamByteStream.close();
                                        if (a.this.e != null) {
                                            a.this.e.close();
                                            return;
                                        }
                                        return;
                                    }
                                    a.this.e.write(bArr, 0, i);
                                    a.this.d += (long) i;
                                    a.this.a.g = Long.valueOf(a.this.d < jLongValue2 ? a.this.d : jLongValue2);
                                    int i2 = (int) (((a.this.d * 1.0f) / jLongValue2) * 100.0f);
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    if (jCurrentTimeMillis - this.b >= 1000) {
                                        this.b = jCurrentTimeMillis;
                                        a.this.a.i = 1;
                                        if (a.this.b != null) {
                                            a.this.b.a(a.this.a.b, a.this.a, i2);
                                        }
                                    }
                                    if (jCurrentTimeMillis - this.c >= C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
                                        this.c = jCurrentTimeMillis;
                                        d.b(a.this.a, 1);
                                    }
                                }
                                a.this.e.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                                d.b(a.this.a, 3);
                                if (a.this.b != null) {
                                    a.this.b.a(a.this.a.b, a.this.a, e.getMessage());
                                }
                                if (0 != 0) {
                                    inputStream.close();
                                }
                                if (a.this.e == null) {
                                }
                            }
                        } catch (Throwable th) {
                            if (0 != 0) {
                                inputStream.close();
                            }
                            if (a.this.e != null) {
                                a.this.e.close();
                            }
                            throw th;
                        }
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
                d.b(this.a, 3);
                b bVar = this.b;
                if (bVar != null) {
                    com.mgtv.ssp.download.dao3.c cVar = this.a;
                    bVar.a(cVar.b, cVar, e.getMessage());
                }
            }
        }
    }

    public interface b {
        void a(String str, com.mgtv.ssp.download.dao3.c cVar);

        void a(String str, com.mgtv.ssp.download.dao3.c cVar, int i);

        void a(String str, com.mgtv.ssp.download.dao3.c cVar, String str2);

        void b(String str, com.mgtv.ssp.download.dao3.c cVar);
    }

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        e = builder.connectTimeout(30L, timeUnit).readTimeout(30L, timeUnit).build();
    }

    private d(Context context) {
        g = context;
        this.d = context.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        d();
    }

    private void d() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            FileDownloadInfoDao fileDownloadInfoDaoA = com.mgtv.ssp.download.a.a(g).a();
            this.b = fileDownloadInfoDaoA;
            List<com.mgtv.ssp.download.dao3.c> list = fileDownloadInfoDaoA.queryBuilder().orderAsc(FileDownloadInfoDao.Properties.f).list();
            for (com.mgtv.ssp.download.dao3.c cVar : list) {
                c cVar2 = new c();
                cVar2.a(cVar);
                this.f.put(cVar.b, cVar2);
                if (list.size() > 0) {
                    for (com.mgtv.ssp.download.dao3.c cVar3 : list) {
                        if (cVar3 != null) {
                            if (jCurrentTimeMillis - cVar3.f.longValue() > 604800000) {
                                e(cVar3.d);
                                this.b.delete(cVar3);
                            } else if (cVar3.g.longValue() >= cVar3.h.longValue()) {
                                this.b.delete(cVar3);
                                this.c.put(cVar3.b, new e(cVar3));
                            }
                        }
                    }
                }
            }
            f.a("FileDownloader", "init FileDownload List : Count = " + list.size());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void f(String str) {
        a(str);
    }

    private String g(@NonNull String str) {
        String strSubstring = str.contains("/") ? str.substring(str.lastIndexOf("/") + 1) : "";
        if (TextUtils.isEmpty(strSubstring) || !strSubstring.toLowerCase().contains(".apk")) {
            return strSubstring;
        }
        return strSubstring.substring(0, strSubstring.lastIndexOf(Consts.DOT)) + ".apk";
    }

    public boolean e(String str) {
        if (TextUtils.isEmpty(str) || str.length() == 0) {
            return true;
        }
        File file = new File(str);
        if (!file.exists()) {
            return true;
        }
        if (file.isFile()) {
            return file.delete();
        }
        if (!file.isDirectory()) {
            return false;
        }
        for (File file2 : file.listFiles()) {
            if (file2.isFile()) {
                file2.delete();
            } else if (file2.isDirectory()) {
                e(file2.getAbsolutePath());
            }
        }
        return file.delete();
    }

    @Nullable
    public com.mgtv.ssp.download.dao3.c b(String str) {
        c value;
        com.mgtv.ssp.download.dao3.c cVarA;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (Map.Entry<String, c> entry : this.f.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null && (cVarA = value.a()) != null && TextUtils.equals(str, cVarA.e)) {
                return cVarA;
            }
        }
        return null;
    }

    @Nullable
    public com.mgtv.ssp.download.dao3.c c(String str) {
        c value;
        com.mgtv.ssp.download.dao3.c cVarA;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (Map.Entry<String, c> entry : this.f.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null && (cVarA = value.a()) != null && TextUtils.equals(str, cVarA.b)) {
                return cVarA;
            }
        }
        return null;
    }

    public static d a(@NonNull Context context) {
        if (a == null) {
            synchronized (d.class) {
                try {
                    if (a == null) {
                        a = new d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public static void b(com.mgtv.ssp.download.dao3.c cVar, int i) {
        try {
            cVar.i = Integer.valueOf(i);
            com.mgtv.ssp.download.a.a(g).a().update(cVar);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String a(@Nullable String str, @NonNull String str2, b bVar) {
        String absolutePath = this.d.getAbsolutePath();
        if (TextUtils.isEmpty(str)) {
            str = Long.toString(System.currentTimeMillis());
        } else {
            f(str2);
        }
        e eVarD = d(str2);
        if (eVarD != null && eVarD.a() != null && eVarD.a().k()) {
            String str3 = eVarD.a().d;
            if (!TextUtils.isEmpty(str3) && new File(str3).exists()) {
                if (bVar == null) {
                    return null;
                }
                bVar.a(eVarD.a().b, eVarD.a());
                return null;
            }
        }
        c cVar = new c();
        com.mgtv.ssp.download.dao3.c cVar2 = new com.mgtv.ssp.download.dao3.c();
        cVar2.b = str;
        cVar2.e = str2;
        if (TextUtils.isEmpty(absolutePath)) {
            absolutePath = this.d.getAbsolutePath();
        }
        StringBuilder sb = new StringBuilder();
        String str4 = File.separator;
        if (!absolutePath.endsWith(str4)) {
            absolutePath = absolutePath.concat(str4);
        }
        sb.append(absolutePath);
        sb.append(g(str2));
        cVar2.d = sb.toString();
        cVar2.c = g(str2);
        cVar2.g = 0L;
        cVar2.h = 0L;
        cVar2.f = Long.valueOf(System.currentTimeMillis());
        cVar.a(cVar2);
        a aVar = new a(cVar2, bVar);
        cVar.a(aVar);
        this.f.put(str, cVar);
        aVar.start();
        return str;
    }

    @Nullable
    public e d(String str) {
        Map<String, e> map;
        e value;
        com.mgtv.ssp.download.dao3.c cVarA;
        if (!TextUtils.isEmpty(str) && (map = this.c) != null) {
            try {
                for (Map.Entry<String, e> entry : map.entrySet()) {
                    if (entry != null && (value = entry.getValue()) != null && (cVarA = value.a()) != null && TextUtils.equals(str, cVarA.e)) {
                        return value;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public String a(@NonNull com.mgtv.ssp.download.dao3.c cVar, b bVar) {
        f.c("FileDownloader", " APKDOWNLOAD click resumeDownload uuid:" + cVar.b + " URL:" + cVar.e);
        c cVar2 = this.f.get(cVar.b);
        if (cVar2 == null) {
            cVar2 = new c();
            cVar2.a(cVar);
            this.f.put(cVar.b, cVar2);
        }
        a aVar = new a(cVar, bVar);
        cVar2.a(aVar);
        aVar.start();
        return cVar.b;
    }

    public boolean a(com.mgtv.ssp.download.dao3.c cVar) {
        f.c("FileDownloader", " APKDOWNLOAD click pauseDownload uuid:" + cVar.b + " URL:" + cVar.e);
        c cVar2 = this.f.get(cVar.b);
        if (cVar2 == null) {
            return false;
        }
        a aVarB = cVar2.b();
        if (aVarB != null) {
            try {
                aVarB.a(true);
                aVarB.interrupt();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        try {
            cVar.i = 4;
            com.mgtv.ssp.download.a.a(g).a().update(cVar);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return true;
    }

    public boolean a(String str) {
        c value;
        com.mgtv.ssp.download.dao3.c cVarA;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Iterator<Map.Entry<String, c>> it = this.f.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, c> next = it.next();
            if (next != null && (value = next.getValue()) != null && (cVarA = value.a()) != null && TextUtils.equals(str, cVarA.e)) {
                if (cVarA.k()) {
                    break;
                }
                a aVarB = value.b();
                if (aVarB != null) {
                    try {
                        aVarB.a(true);
                        aVarB.interrupt();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    try {
                        com.mgtv.ssp.download.a.a(g).a().delete(cVarA);
                        File file = new File(cVarA.d);
                        if (file.exists()) {
                            file.delete();
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                it.remove();
                return true;
            }
        }
        return false;
    }
}
