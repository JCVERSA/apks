package com.mgtv.data.aphone.core.i;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.hisavana.common.constant.ComConstants;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.util.ThreadManager;
import com.mgtv.data.aphone.core.bean.ResultBean;
import com.mgtv.data.aphone.core.bean.TraceTaskBean;
import com.mgtv.data.aphone.core.bean.TraceTaskDetailBean;
import com.mgtv.data.aphone.core.db.SDKResumeHttpTraceTaskColumn;
import com.mgtv.data.aphone.core.db.SDKResumeHttpTraceTaskZipColumn;
import com.mgtv.data.aphone.core.db.e;
import com.mgtv.data.aphone.core.j.c;
import com.mgtv.data.aphone.core.j.d;
import com.mgtv.data.aphone.core.j.g;
import com.mgtv.data.aphone.core.j.h;
import com.mgtv.data.aphone.core.j.i;
import com.mgtv.data.aphone.core.j.j;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.http.MultiParts;
import com.mgtv.task.m;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public class b {
    public static boolean a = false;
    private static b b;
    private Context c;
    private a d;

    public final class a implements Runnable {
        private Reference<b> b;

        public a(b bVar) {
            this.b = new WeakReference(bVar);
        }

        @Override
        public void run() throws Throwable {
            b bVar = this.b.get();
            try {
                ArrayList arrayList = new ArrayList();
                List<com.mgtv.data.aphone.core.bean.b> listC = b.this.c();
                int size = listC.size();
                int i = 0;
                int i2 = 1;
                while (i < listC.size()) {
                    i2 = (i <= 0 || !listC.get(i + (-1)).a.equals(listC.get(i).a)) ? 1 : i2 + 1;
                    File file = new File(listC.get(i).k);
                    File file2 = new File(file.getParent() + File.separator + UUID.randomUUID().toString() + ".log");
                    file.renameTo(file2);
                    File fileA = b.a().a(file2, listC.get(i).a);
                    com.mgtv.data.aphone.core.bean.b bVar2 = new com.mgtv.data.aphone.core.bean.b();
                    bVar2.e = listC.get(i).e;
                    bVar2.a = listC.get(i).a;
                    bVar2.c = listC.get(i).c;
                    bVar2.d = listC.get(i).d;
                    bVar2.b = listC.get(i).b;
                    bVar2.h = i2;
                    bVar2.i = listC.get(i).i;
                    bVar2.g = 0;
                    bVar2.k = listC.get(i).k;
                    bVar2.j = fileA.getPath();
                    arrayList.add(bVar2);
                    i++;
                }
                bVar.a(arrayList);
                if (b.this.c != null) {
                    e.a(b.this.c, SDKResumeHttpTraceTaskColumn.TABLE, (String) null, true);
                }
                c.a("big_data_sdk", "#################### TrackZipComp 成功压缩zip总个数:" + size);
                bVar.d();
            } catch (Exception e) {
                e.getStackTrace();
            }
        }
    }

    public b() {
        c.a("big_data_sdk", "####################  BigDataTraceManager()方法");
        this.c = BaseApplication.getContext();
    }

    private double a(long j) {
        return j == 0 ? j : j / 1048576.0d;
    }

    private void e() {
        c.b("big_data_sdk", "####################  deleteFile()  删除本地存储的文件夹 ");
        f();
        g();
    }

    private void f() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.c.getFilesDir().getAbsolutePath());
        String str = File.separator;
        stringBuffer.append(str);
        stringBuffer.append(com.mgtv.data.aphone.core.j.b.b);
        if (!stringBuffer.toString().endsWith(str)) {
            stringBuffer.append(str);
        }
        List<File> listB = b(stringBuffer.toString());
        if (listB.size() > 3) {
            Iterator<File> it = listB.iterator();
            if (it.hasNext()) {
                File next = it.next();
                c.b("big_data_sdk", "####################  deleteDayFile()   file.getName() :" + next.getName() + "   file.getPath() :" + next.getPath());
                a(next);
            }
        }
    }

    private void g() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.c.getFilesDir().getAbsolutePath());
        stringBuffer.append(File.separator);
        stringBuffer.append(com.mgtv.data.aphone.core.j.b.b);
        Iterator<File> it = com.mgtv.data.aphone.core.j.b.b(stringBuffer.toString()).iterator();
        while (it.hasNext()) {
            com.mgtv.data.aphone.core.j.b.c(it.next());
            if (a(this.c)) {
                return;
            }
        }
    }

    public void b() {
        a aVar = new a(this);
        this.d = aVar;
        ThreadManager.execute(aVar);
    }

    public List<com.mgtv.data.aphone.core.bean.b> c() {
        b bVar = this;
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        List<com.mgtv.data.aphone.core.bean.a> listB = e.b(bVar.c, SDKResumeHttpTraceTaskColumn.TABLE, null);
        int i = 0;
        int size = 0;
        while (i < listB.size()) {
            StringBuilder sb = new StringBuilder();
            sb.append(bVar.c.getFilesDir().getAbsolutePath());
            String str = File.separator;
            sb.append(str);
            sb.append(com.mgtv.data.aphone.core.j.b.b);
            sb.append(str);
            sb.append(listB.get(i).b);
            String string = sb.toString();
            c.a("big_data_sdk", "#################### TrackZipComp path: " + string);
            if (!TextUtils.isEmpty(string)) {
                String str2 = listB.get(i).a;
                File file = new File(string);
                if (!file.exists()) {
                    c.a("big_data_sdk", "#################### 目录不存在！ dumpFile.getPath(): " + file.getPath());
                    file.mkdirs();
                }
                List<String> listA = com.mgtv.data.aphone.core.j.b.a(file);
                size = (i <= 0 || !listB.get(i + (-1)).a.equals(listB.get(i).a)) ? listA.size() : size + listA.size();
                c.a("big_data_sdk", "###################################################### taskSum: " + size + "  taskId: " + str2);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(size);
                sb2.append("");
                map.put(str2, sb2.toString());
            }
            i++;
        }
        for (com.mgtv.data.aphone.core.bean.a aVar : listB) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(bVar.c.getFilesDir().getAbsolutePath());
            String str3 = File.separator;
            sb3.append(str3);
            sb3.append(com.mgtv.data.aphone.core.j.b.b);
            sb3.append(str3);
            sb3.append(aVar.b);
            String string2 = sb3.toString();
            c.a("big_data_sdk", "#################### TrackZipComp path: " + string2);
            if (!TextUtils.isEmpty(string2)) {
                String str4 = aVar.a;
                String str5 = aVar.c;
                int i2 = aVar.e;
                int i3 = aVar.d;
                String str6 = aVar.b;
                File file2 = new File(string2);
                if (!file2.exists()) {
                    c.a("big_data_sdk", "#################### 目录不存在！ dumpFile.getPath(): " + file2.getPath());
                    file2.mkdirs();
                }
                for (String str7 : com.mgtv.data.aphone.core.j.b.a(file2)) {
                    int i4 = Integer.parseInt((String) map.get(str4));
                    com.mgtv.data.aphone.core.bean.b bVar2 = new com.mgtv.data.aphone.core.bean.b();
                    bVar2.e = i2;
                    bVar2.a = str4;
                    bVar2.c = str5;
                    bVar2.d = i3;
                    bVar2.b = str6;
                    bVar2.g = 0;
                    bVar2.k = str7;
                    bVar2.h = i4;
                    bVar2.i = Integer.parseInt((String) map.get(str4));
                    arrayList.add(bVar2);
                }
            }
            bVar = this;
        }
        return arrayList;
    }

    public void d() {
        try {
            List<com.mgtv.data.aphone.core.bean.b> listA = e.a(this.c, SDKResumeHttpTraceTaskZipColumn.TABLE, (String) null);
            c.a("big_data_sdk", "#################### postData 上报zip总个数:" + listA.size());
            for (com.mgtv.data.aphone.core.bean.b bVar : listA) {
                File file = new File(bVar.j);
                if (!file.exists() || !file.isFile()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("#################### postData 文件不存在或不是文件 !zipFile.exists():");
                    sb.append(!file.exists());
                    sb.append("  !zipFile.isFile(): ");
                    sb.append(!file.isFile());
                    c.a("big_data_sdk", sb.toString());
                } else if (bVar.g > 3) {
                    com.mgtv.data.aphone.core.j.b.c(file);
                    c.a("big_data_sdk", "#################### postData 大于三次    upCount:" + bVar.g);
                } else {
                    SimpleDateFormat simpleDateFormat = com.mgtv.data.aphone.core.j.e.b;
                    Date date = simpleDateFormat.parse(bVar.l);
                    Date date2 = simpleDateFormat.parse(com.mgtv.data.aphone.core.j.e.a(System.currentTimeMillis()));
                    if (com.mgtv.data.aphone.core.j.e.a(date, date2) > 6) {
                        com.mgtv.data.aphone.core.j.b.c(file);
                        c.a("big_data_sdk", "#################### postData zip文件大于7天  day:" + com.mgtv.data.aphone.core.j.e.a(date, date2));
                    } else {
                        int i = Integer.parseInt(g.b(this.c));
                        int i2 = bVar.d;
                        if (i2 == 0 || i2 == i) {
                            try {
                                a(file, bVar);
                                c.a("big_data_sdk", "#################### postData  睡前" + System.currentTimeMillis());
                                Thread.sleep(1000L);
                                c.a("big_data_sdk", "#################### postData  睡后" + System.currentTimeMillis());
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        } else {
                            c.a("big_data_sdk", "#################### postData 当前网络不匹配  netStatus:" + bVar.d + "  net: " + i);
                        }
                    }
                }
            }
        } catch (ParseException e2) {
            e2.printStackTrace();
        }
    }

    private List<File> b(String str) {
        List<File> listA = a(str, new ArrayList());
        if (listA != null && listA.size() > 0) {
            Collections.sort(listA, new Comparator<File>() {
                @Override
                public int compare(File file, File file2) {
                    if (file.isDirectory() && file2.isFile()) {
                        return -1;
                    }
                    if (file.isFile() && file2.isDirectory()) {
                        return 1;
                    }
                    return file.getName().compareTo(file2.getName());
                }
            });
        }
        return listA;
    }

    public static b a() {
        if (b == null) {
            synchronized (b.class) {
                try {
                    if (b == null) {
                        b = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    private long b(File file) throws Exception {
        long jC;
        File[] fileArrListFiles = file.listFiles();
        long j = 0;
        if (fileArrListFiles != null) {
            for (int i = 0; i < fileArrListFiles.length; i++) {
                if (fileArrListFiles[i].isDirectory()) {
                    jC = b(fileArrListFiles[i]);
                } else {
                    jC = c(fileArrListFiles[i]);
                }
                j += jC;
            }
        }
        return j;
    }

    public void a(String str, String str2) throws Throwable {
        try {
            if (!a(this.c)) {
                c.a("big_data_sdk", "####################  Trace()  存储文件大于50M!");
                e();
            }
            f();
            a(str + "@$@" + str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(TraceTaskBean traceTaskBean) {
        List<TraceTaskDetailBean> list;
        ArrayList arrayList = new ArrayList();
        com.mgtv.data.aphone.core.bean.a aVar = new com.mgtv.data.aphone.core.bean.a();
        if (traceTaskBean != null && (list = traceTaskBean.upTask) != null && list.size() > 0) {
            c.a("big_data_sdk", "####################  saveTraceTask()  upTask.size():" + traceTaskBean.upTask.size());
            for (TraceTaskDetailBean traceTaskDetailBean : traceTaskBean.upTask) {
                c.a("big_data_sdk", "####################  saveTraceTask()  trace:" + traceTaskDetailBean.toString());
                String[] strArr = traceTaskDetailBean.logs;
                if (strArr.length > 0) {
                    for (String str : strArr) {
                        aVar.b = str;
                        aVar.a = traceTaskDetailBean.taskid;
                        aVar.d = traceTaskDetailBean.netstatus;
                        aVar.e = traceTaskBean.localLog;
                        aVar.c = traceTaskBean.reportUrl;
                        c.a("big_data_sdk", "####################  saveTraceTask()  logs:" + str);
                        arrayList.add(aVar);
                        aVar = new com.mgtv.data.aphone.core.bean.a();
                    }
                }
            }
        }
        if (arrayList.size() > 0) {
            h.a(this.c, arrayList, SDKResumeHttpTraceTaskColumn.TABLE, true);
        }
    }

    private double d(String str) {
        long jC;
        File file = new File(str);
        try {
            if (!file.exists()) {
                return 0.0d;
            }
            if (file.isDirectory()) {
                jC = b(file);
            } else {
                jC = c(file);
            }
        } catch (Exception e) {
            e.printStackTrace();
            jC = 0;
        }
        return a(jC);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0100  */
    /* JADX WARN: Code duplicated, block: B:79:0x0168 A[Catch: IOException -> 0x0164, TRY_LEAVE, TryCatch #5 {IOException -> 0x0164, blocks: (B:75:0x0160, B:79:0x0168), top: B:84:0x0160 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.StringBuffer] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.StringBuffer] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    private void a(String str) throws Throwable {
        File file;
        ?? r0;
        File[] fileArrListFiles;
        int i;
        ?? stringBuffer = new StringBuffer();
        BufferedWriter bufferedWriter = null;
        try {
            try {
                try {
                    stringBuffer.append(this.c.getFilesDir().getAbsolutePath());
                    String str2 = File.separator;
                    stringBuffer.append(str2);
                    stringBuffer.append(com.mgtv.data.aphone.core.j.b.b);
                    stringBuffer.append(str2);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    stringBuffer.append(com.mgtv.data.aphone.core.j.e.c(jCurrentTimeMillis));
                    stringBuffer.append(str2);
                    stringBuffer.append(com.mgtv.data.aphone.core.j.e.d(jCurrentTimeMillis));
                    stringBuffer.append(str2);
                    stringBuffer.append(com.mgtv.data.aphone.core.j.b.a(com.mgtv.data.aphone.core.j.e.e(jCurrentTimeMillis)));
                    File file2 = new File(stringBuffer.toString());
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    if (!file2.exists() || !file2.isDirectory() || (fileArrListFiles = file2.listFiles()) == null) {
                        file = null;
                    } else if (fileArrListFiles.length == 0) {
                        stringBuffer.append(str2);
                        stringBuffer.append("0.log");
                        file = new File(stringBuffer.toString());
                        com.mgtv.data.aphone.core.j.b.b(file);
                    } else if (fileArrListFiles.length > 0) {
                        int length = fileArrListFiles.length;
                        ?? stringBuffer2 = stringBuffer;
                        File file3 = null;
                        int i2 = 0;
                        while (i2 < length) {
                            File file4 = fileArrListFiles[i2];
                            if (d(file4.getPath()) > 1.0d) {
                                if (TextUtils.isEmpty(file4.getName())) {
                                    i = 0;
                                    stringBuffer2 = stringBuffer2;
                                } else {
                                    i = Integer.parseInt(file4.getName().substring(0, file4.getName().indexOf(Consts.DOT))) + 1;
                                    stringBuffer2 = new StringBuffer();
                                }
                                stringBuffer2.append(file4.getParent());
                                stringBuffer2.append(File.separator);
                                stringBuffer2.append(i);
                                stringBuffer2.append(".log");
                                file3 = new File(stringBuffer2.toString());
                            } else {
                                file3 = new File(file4.getPath());
                            }
                            i2++;
                            stringBuffer2 = stringBuffer2;
                        }
                        file = file3;
                    } else {
                        file = null;
                    }
                    if (file != null) {
                        stringBuffer = new FileOutputStream(file, true);
                        try {
                            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(stringBuffer));
                            try {
                                bufferedWriter2.write(str);
                                bufferedWriter2.newLine();
                                bufferedWriter2.flush();
                                bufferedWriter = bufferedWriter2;
                                r0 = stringBuffer;
                            } catch (FileNotFoundException e) {
                                bufferedWriter = bufferedWriter2;
                                e = e;
                                e.printStackTrace();
                                if (bufferedWriter != null) {
                                    bufferedWriter.close();
                                }
                                if (stringBuffer != 0) {
                                    stringBuffer.close();
                                    return;
                                }
                                return;
                            } catch (IOException e2) {
                                bufferedWriter = bufferedWriter2;
                                e = e2;
                                e.printStackTrace();
                                if (bufferedWriter != null) {
                                    bufferedWriter.close();
                                }
                                if (stringBuffer != 0) {
                                    stringBuffer.close();
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                bufferedWriter = bufferedWriter2;
                                th = th;
                                if (bufferedWriter != null) {
                                    try {
                                        bufferedWriter.close();
                                        if (stringBuffer != 0) {
                                            stringBuffer.close();
                                        }
                                    } catch (IOException e3) {
                                        e3.printStackTrace();
                                        throw th;
                                    }
                                } else if (stringBuffer != 0) {
                                    stringBuffer.close();
                                }
                                throw th;
                            }
                        } catch (FileNotFoundException e4) {
                            e = e4;
                        } catch (IOException e5) {
                            e = e5;
                        }
                    } else {
                        r0 = 0;
                    }
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                    if (r0 != 0) {
                        r0.close();
                    }
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            } catch (FileNotFoundException e7) {
                e = e7;
                stringBuffer = 0;
            } catch (IOException e8) {
                e = e8;
                stringBuffer = 0;
            } catch (Throwable th2) {
                th = th2;
                stringBuffer = 0;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private long c(String str) {
        long jB;
        long j = 0;
        try {
            jB = b(new File(str));
            if (jB > 0) {
                try {
                    jB /= 1048576;
                } catch (Exception e) {
                    e = e;
                    j = jB;
                    e.printStackTrace();
                    jB = j;
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        c.b("bid_data_sdk", "@@@@@@@@@@@============  getLocalFilesSize()  size/1048576: " + jB + "   filePath: " + str);
        return jB;
    }

    private long c(File file) throws Exception {
        if (!file.exists()) {
            return 0L;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        long jAvailable = fileInputStream.available();
        fileInputStream.close();
        return jAvailable;
    }

    public File a(File file, String str) throws Throwable {
        if (i.a(file) || TextUtils.isEmpty(file.getName())) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        String name = file.getParentFile().getParentFile().getParentFile().getName();
        String name2 = file.getParentFile().getParentFile().getName();
        String name3 = file.getParentFile().getName();
        String name4 = file.getName();
        if (!TextUtils.isEmpty(name4)) {
            name4 = name4.substring(0, name4.indexOf(Consts.DOT));
        }
        stringBuffer.append(this.c.getFilesDir().getAbsolutePath());
        String str2 = File.separator;
        stringBuffer.append(str2);
        stringBuffer.append(com.mgtv.data.aphone.core.j.b.d);
        stringBuffer.append(str2);
        stringBuffer.append(str);
        File file2 = new File(stringBuffer.toString());
        if (!file2.exists()) {
            file2.mkdirs();
        }
        stringBuffer.append(str2);
        stringBuffer.append(name);
        stringBuffer.append(com.mgtv.data.aphone.core.j.b.c);
        stringBuffer.append(name2);
        stringBuffer.append(com.mgtv.data.aphone.core.j.b.c);
        stringBuffer.append(name3);
        stringBuffer.append(com.mgtv.data.aphone.core.j.b.c);
        stringBuffer.append(name4);
        stringBuffer.append(".zip");
        File file3 = new File(stringBuffer.toString());
        c.a("big_data_sdk", "#################### getZipFile()方法 zipFile.getPath(): " + file3.getPath());
        com.mgtv.data.aphone.core.j.b.b(file3);
        d.a(file, file3, file3.getName());
        return file3;
    }

    private void a(final File file, final com.mgtv.data.aphone.core.bean.b bVar) {
        MultiParts multiParts = new MultiParts();
        multiParts.put("files", file.getName(), j.a(file), file);
        HttpParams httpParams = new HttpParams();
        httpParams.setMultiParts(multiParts);
        httpParams.put(DownloadFacadeEnum.USER_DID, com.hunantv.imgo.util.b.t());
        httpParams.put("taskid", bVar.a);
        httpParams.put(TtmlNode.COMBINE_ALL, Integer.valueOf(bVar.i));
        httpParams.put("index", Integer.valueOf(bVar.h));
        c.b("big_data_sdk", "####################  postData() :" + com.hunantv.imgo.util.b.t() + "    " + bVar.a + "   reportUrl: " + bVar.c);
        new m(this.c).a(true).a(ComConstants.AD_TIMEOUT_MILLIS).a(bVar.c, httpParams, new ImgoHttpCallBack<ResultBean>() {
            @Override
            public void b(ResultBean resultBean) {
            }

            @Override
            public void a(ResultBean resultBean) {
                b bVar2 = b.this;
                File file2 = file;
                com.mgtv.data.aphone.core.bean.b bVar3 = bVar;
                bVar2.a(resultBean, file2, bVar3.a, bVar3);
                c.b("big_data_sdk", "####################  postData() :" + resultBean.toString());
            }

            @Override
            public void a(@Nullable ResultBean resultBean, int i, int i2, @Nullable String str, @Nullable Throwable th) {
                super.a(resultBean, i, i2, str, th);
                if (i != 200) {
                    Context context = b.this.c;
                    com.mgtv.data.aphone.core.bean.b bVar2 = bVar;
                    e.a(context, SDKResumeHttpTraceTaskZipColumn.TABLE, bVar2.j, bVar2.a, bVar2.g, true);
                }
            }
        });
    }

    public void a(ResultBean resultBean, File file, String str, com.mgtv.data.aphone.core.bean.b bVar) {
        if (resultBean != null) {
            try {
                c.b("big_data_sdk", "####################  doResult() result:" + resultBean.toString());
                if (TextUtils.isEmpty(resultBean.result)) {
                    return;
                }
                if (!resultBean.result.equals("0") && !resultBean.result.equals("4")) {
                    return;
                }
                e.a(this.c, SDKResumeHttpTraceTaskZipColumn.TABLE, bVar.j, str, true);
                file.delete();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private List<File> a(String str, List<File> list) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                list.add(file2);
            }
        }
        return list;
    }

    private boolean a(File file) {
        String[] list;
        if (file == null) {
            return false;
        }
        if (file.isDirectory() && (list = file.list()) != null) {
            for (String str : list) {
                if (!a(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    private boolean a(Context context) {
        if (context == null) {
            return true;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(context.getFilesDir().getAbsolutePath());
        stringBuffer.append(File.separator);
        stringBuffer.append(com.mgtv.data.aphone.core.j.b.b);
        return c(stringBuffer.toString()) <= 50;
    }

    public void a(List<com.mgtv.data.aphone.core.bean.b> list) {
        h.b(this.c, list, SDKResumeHttpTraceTaskZipColumn.TABLE, true);
    }
}
