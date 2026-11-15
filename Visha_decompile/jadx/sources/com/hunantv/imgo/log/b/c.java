package com.hunantv.imgo.log.b;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.log.entity.LogData;
import com.hunantv.imgo.log.g;
import com.hunantv.imgo.log.h;
import com.hunantv.imgo.log.i;
import com.hunantv.imgo.util.j;
import com.hunantv.imgo.util.n;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.apache.commons.io.IOUtils;

public class c implements f {
    private static c i;
    private ArrayList<File> a;
    private File b;
    private RandomAccessFile d;
    private RandomAccessFile e;
    private int f;
    private int g;
    private int c = 1;
    private Object h = new Object();

    private c() {
        e();
    }

    private boolean c(File file) {
        return file == null || file.length() > com.hunantv.imgo.log.c.a();
    }

    private void e() {
        n.a("LogRequestHandler", "init");
        this.a = new ArrayList<>();
        String strK = k();
        if (TextUtils.isEmpty(strK)) {
            return;
        }
        File file = new File(strK);
        if (!file.exists()) {
            file.mkdirs();
        } else if (!file.isDirectory()) {
            file.delete();
            file = new File(strK);
            file.mkdirs();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (int i2 = 0; i2 < fileArrListFiles.length; i2++) {
                if (!TextUtils.isEmpty(fileArrListFiles[i2].getName()) && fileArrListFiles[i2].getName().endsWith("_log.txt")) {
                    this.a.add(fileArrListFiles[i2]);
                }
            }
        }
        if (this.a.size() > 1) {
            Collections.sort(this.a, new Comparator<File>() {
                @Override
                public int compare(File file2, File file3) {
                    try {
                        int iIntValue = Integer.valueOf(file2.getName().substring(0, file2.getName().indexOf("_log.txt"))).intValue();
                        int iIntValue2 = Integer.valueOf(file3.getName().substring(0, file3.getName().indexOf("_log.txt"))).intValue();
                        n.a("LogRequestHandler", "initLogFile compare, fileNumber1 = " + iIntValue + ", fileNumber2 = " + iIntValue2);
                        if (iIntValue > iIntValue2) {
                            c.this.c = iIntValue + 1;
                            return 1;
                        }
                        c.this.c = iIntValue2 + 1;
                        return -1;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return 1;
                    }
                }
            });
        } else if (this.a.size() == 1) {
            try {
                this.c = Integer.valueOf(this.a.get(0).getName().substring(0, this.a.get(0).getName().indexOf("_log.txt"))).intValue() + 1;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        f();
        File file2 = new File(l());
        if (file2.exists()) {
            return;
        }
        file2.mkdirs();
    }

    private void f() {
        File fileI;
        if (this.a.size() > 0) {
            ArrayList<File> arrayList = this.a;
            fileI = arrayList.get(arrayList.size() - 1);
            if (c(fileI)) {
                fileI = i();
            }
        } else {
            fileI = i();
        }
        if (fileI == null || !fileI.canWrite()) {
            return;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(fileI, "rw");
            this.d = randomAccessFile;
            randomAccessFile.seek(randomAccessFile.length());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void g() {
        File fileJ = j();
        this.b = fileJ;
        this.e = null;
        if (fileJ == null || !fileJ.canWrite()) {
            return;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.b, "rw");
            this.e = randomAccessFile;
            randomAccessFile.seek(randomAccessFile.length());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String h() throws Throwable {
        final StringBuffer stringBuffer = new StringBuffer();
        Context context = BaseApplication.getContext();
        stringBuffer.append("设备信息:------");
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("[");
        stringBuffer.append("设备型号--");
        stringBuffer.append(com.hunantv.imgo.util.b.p());
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("CPU型号--");
        stringBuffer.append(com.hunantv.imgo.util.b.D());
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("内存--");
        stringBuffer.append(com.hunantv.imgo.util.b.B());
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("存储空间--");
        stringBuffer.append(com.hunantv.imgo.util.b.C());
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("设备类型--");
        stringBuffer.append(ConstantDeviceInfo.APP_PLATFORM);
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("客户端版本--");
        stringBuffer.append(com.hunantv.imgo.util.b.e());
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("手机系统版本--");
        stringBuffer.append(com.hunantv.imgo.util.b.q());
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("芯片厂商类型--");
        stringBuffer.append(com.hunantv.imgo.util.b.E());
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("MAC地址--");
        stringBuffer.append(com.hunantv.imgo.util.b.v());
        stringBuffer.append("]");
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("用户信息:------");
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("[");
        stringBuffer.append("Uuid--");
        stringBuffer.append(com.hunantv.imgo.util.b.n());
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("]");
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("网络诊断开始:------");
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("[");
        stringBuffer.append("本地网络信息--");
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("网络连接状态--");
        stringBuffer.append(com.hunantv.imgo.log.f.a(context));
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("网络类型--");
        stringBuffer.append(com.hunantv.imgo.log.f.b(context));
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("本地IP--");
        stringBuffer.append(com.hunantv.imgo.log.f.c(context));
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        stringBuffer.append("Wifi网关--");
        stringBuffer.append(com.hunantv.imgo.log.f.e(context));
        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        String[] strArr = com.hunantv.imgo.log.c.a;
        if (strArr == null || strArr.length == 0) {
            stringBuffer.append("无法获得当前域名！");
            return stringBuffer.toString();
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                Map<String, Object> mapA = com.hunantv.imgo.log.f.a(str);
                boolean zBooleanValue = ((Boolean) mapA.get("parseDomainOk")).booleanValue();
                List<String> list = (List) mapA.get("domainIpList");
                long jLongValue = ((Long) mapA.get("useTime")).longValue();
                InetAddress[] inetAddressArr = (InetAddress[]) mapA.get("inetAddressList");
                stringBuffer.append("诊断域名--");
                stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                stringBuffer.append(str);
                stringBuffer.append("...");
                stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                stringBuffer.append("域名对应IP--");
                stringBuffer.append(com.hunantv.imgo.log.f.a(list));
                stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                stringBuffer.append("域名解析时间--");
                stringBuffer.append(jLongValue + "ms");
                stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                stringBuffer.append("TCP连接测试--");
                stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                if (!com.hunantv.imgo.log.f.a(context).booleanValue()) {
                    stringBuffer.append("当前主机未联网,请检查网络！");
                    break;
                }
                h hVarA = h.a();
                hVarA.a = inetAddressArr;
                hVarA.b = list;
                hVarA.a(new h.a() {
                    @Override
                    public void a(String str2) {
                        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                    }

                    @Override
                    public void b(String str2) {
                        stringBuffer.append(str2);
                    }
                });
                boolean zB = hVarA.b();
                stringBuffer.append("ping测试--");
                stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                if (zB && zBooleanValue) {
                    new g(new g.a() {
                        @Override
                        public void a(String str2) {
                            StringBuffer stringBuffer2 = stringBuffer;
                            stringBuffer2.append(str2);
                            stringBuffer2.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                        }
                    }, 4).a(str, false);
                }
                stringBuffer.append("TraceRoute诊断--");
                stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                i iVarA = i.a();
                iVarA.a(new i.a() {
                    @Override
                    public void a(String str2) {
                        stringBuffer.append(str2);
                    }

                    @Override
                    public void a() {
                        stringBuffer.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                    }
                });
                iVarA.a(str);
            }
        }
        stringBuffer.append("网络诊断结束]");
        return stringBuffer.toString();
    }

    private File i() {
        String strK = k();
        File file = null;
        if (TextUtils.isEmpty(strK)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(strK);
        sb.append("/");
        int i2 = this.c;
        this.c = i2 + 1;
        sb.append(i2);
        sb.append("_log.txt");
        File file2 = new File(sb.toString());
        if (file2.exists()) {
            file2.delete();
        }
        try {
            file2.createNewFile();
            file = file2;
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (file != null) {
            b(file);
        }
        return file;
    }

    private File j() {
        String strL = l();
        if (TextUtils.isEmpty(strL)) {
            return null;
        }
        File file = new File(strL + File.separator + "net_diagno.log");
        if (file.exists()) {
            file.delete();
        }
        try {
            file.createNewFile();
            return file;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private String k() {
        String str;
        String str2 = com.hunantv.imgo.log.c.b;
        if (TextUtils.isEmpty(str2)) {
            str = null;
        } else {
            str = str2 + "/logfile/";
        }
        com.hunantv.imgo.log.e.a("LogRequestHandler", "getLogFileDirPath:" + str, true);
        return str;
    }

    private String l() {
        String str = com.hunantv.imgo.log.c.b;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str + "/diagnofile/";
    }

    private String m() {
        String str = com.hunantv.imgo.log.c.b;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str + "/zip/";
    }

    private File n() {
        String strM = m();
        if (!TextUtils.isEmpty(strM)) {
            File file = new File(strM);
            if (!file.exists()) {
                file.mkdirs();
            } else if (!file.isDirectory()) {
                file.delete();
                file.mkdirs();
            }
        }
        for (int i2 = 0; i2 < 5; i2++) {
            File file2 = new File(strM + "/" + (new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss-").format(new Date(System.currentTimeMillis())) + String.valueOf((int) ((Math.random() * 1000.0d) + ((double) i2))) + ".zip"));
            if (!file2.exists()) {
                return file2;
            }
        }
        return null;
    }

    public void b() throws Throwable {
        String strH = h();
        n.a("LogRequestHandler", "diagnoData = " + strH);
        if (TextUtils.isEmpty(strH)) {
            return;
        }
        synchronized (this.h) {
            g();
            if (this.e == null) {
                return;
            }
            try {
                int i2 = this.g;
                this.g = i2 + 1;
                if (i2 > com.hunantv.imgo.log.c.b()) {
                    n.a("LogRequestHandler", "start check Diagno file size");
                    if (a(this.e)) {
                        n.a("LogRequestHandler", "diagno file full");
                        this.e.close();
                        this.e = a(j());
                    }
                    this.g = 0;
                }
                RandomAccessFile randomAccessFile = this.e;
                if (randomAccessFile != null) {
                    randomAccessFile.write(strH.getBytes());
                    this.e.writeBytes(IOUtils.LINE_SEPARATOR_WINDOWS);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void d() {
        this.a.clear();
        this.c = 0;
        this.d = null;
        j.b(a().k());
        j.b(a().l());
        j.a(com.hunantv.imgo.log.b.d);
    }

    public static c a() {
        n.a("LogRequestHandler", "getInstance");
        if (i == null) {
            synchronized (c.class) {
                try {
                    n.a("LogRequestHandler", "getInstance11");
                    if (i == null) {
                        n.a("LogRequestHandler", "getInstance22");
                        i = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0172 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:0x0168 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x012f A[EDGE_INSN: B:133:0x012f->B:60:0x012f BREAK  A[LOOP:3: B:55:0x0120->B:57:0x0126], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0126 A[Catch: all -> 0x012a, LOOP:3: B:55:0x0120->B:57:0x0126, LOOP_END, TryCatch #6 {all -> 0x012a, blocks: (B:54:0x00fe, B:55:0x0120, B:57:0x0126, B:60:0x012f), top: B:108:0x00fe }] */
    public File c() throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        int i2;
        File file;
        File fileN = n();
        if (fileN != null) {
            ZipOutputStream zipOutputStream = null;
            FileInputStream fileInputStream3 = null;
            fileInputStream = null;
            fileInputStream = null;
            FileInputStream fileInputStream4 = null;
            zipOutputStream = null;
            try {
                try {
                    ZipOutputStream zipOutputStream2 = new ZipOutputStream(new FileOutputStream(fileN));
                    try {
                        zipOutputStream2.setComment(fileN.getName());
                        synchronized (this.h) {
                            try {
                                RandomAccessFile randomAccessFile = this.d;
                                if (randomAccessFile != null) {
                                    randomAccessFile.close();
                                    this.d = null;
                                }
                                RandomAccessFile randomAccessFile2 = this.e;
                                if (randomAccessFile2 != null) {
                                    randomAccessFile2.close();
                                    this.e = null;
                                }
                                for (int size = this.a.size() - 1; size >= 0 && size >= this.a.size() - 2; size--) {
                                    File file2 = this.a.get(size);
                                    if (file2 != null && file2.length() != 0 && !TextUtils.isEmpty(file2.getName())) {
                                        FileInputStream fileInputStream5 = new FileInputStream(file2);
                                        try {
                                            zipOutputStream2.putNextEntry(new ZipEntry(fileN.getName() + File.separator + file2.getName()));
                                            while (true) {
                                                int i3 = fileInputStream5.read();
                                                if (i3 == -1) {
                                                    break;
                                                }
                                                zipOutputStream2.write(i3);
                                            }
                                            fileInputStream3 = fileInputStream5;
                                        } catch (Throwable th) {
                                            th = th;
                                            fileInputStream4 = fileInputStream5;
                                            throw th;
                                        }
                                    }
                                }
                                fileInputStream3.close();
                                if (com.hunantv.imgo.b.c.a().p == 1 && (file = this.b) != null && !TextUtils.isEmpty(file.getName())) {
                                    FileInputStream fileInputStream6 = new FileInputStream(this.b);
                                    try {
                                        zipOutputStream2.putNextEntry(new ZipEntry(fileN.getName() + File.separator + this.b.getName()));
                                        while (true) {
                                            int i4 = fileInputStream6.read();
                                            if (i4 == -1) {
                                                break;
                                            }
                                            zipOutputStream2.write(i4);
                                        }
                                        fileInputStream6.close();
                                        fileInputStream2 = new FileInputStream(com.hunantv.imgo.log.b.d);
                                        zipOutputStream2.putNextEntry(new ZipEntry(fileN.getName() + File.separator + "p2p.txt"));
                                        while (true) {
                                            i2 = fileInputStream2.read();
                                            if (i2 != -1) {
                                                break;
                                                break;
                                            }
                                            zipOutputStream2.write(i2);
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        fileInputStream4 = fileInputStream6;
                                        throw th;
                                    }
                                } else {
                                    fileInputStream2 = new FileInputStream(com.hunantv.imgo.log.b.d);
                                    try {
                                        zipOutputStream2.putNextEntry(new ZipEntry(fileN.getName() + File.separator + "p2p.txt"));
                                        while (true) {
                                            i2 = fileInputStream2.read();
                                            if (i2 != -1) {
                                                break;
                                            }
                                            zipOutputStream2.write(i2);
                                        }
                                    } catch (Throwable th3) {
                                        fileInputStream4 = fileInputStream2;
                                        th = th3;
                                        throw th;
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        }
                        try {
                            zipOutputStream2.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        fileInputStream2.close();
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream = fileInputStream4;
                        zipOutputStream = zipOutputStream2;
                        try {
                            e.printStackTrace();
                            if (zipOutputStream != null) {
                                try {
                                    zipOutputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return fileN;
                        } catch (Throwable th5) {
                            th = th5;
                            if (zipOutputStream != null) {
                                try {
                                    zipOutputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                    throw th;
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        fileInputStream = fileInputStream4;
                        zipOutputStream = zipOutputStream2;
                        if (zipOutputStream != null) {
                            zipOutputStream.close();
                        }
                        if (fileInputStream != null) {
                            fileInputStream.close();
                            throw th;
                        }
                        throw th;
                    }
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            } catch (Exception e7) {
                e = e7;
                fileInputStream = null;
            } catch (Throwable th7) {
                th = th7;
                fileInputStream = null;
            }
        }
        return fileN;
    }

    @Override
    public com.hunantv.imgo.log.entity.c a(com.hunantv.imgo.log.entity.b bVar) {
        LogData logDataA;
        try {
            n.a("LogRequestHandler", "handleRequest");
            if (bVar != null && (logDataA = LogData.a(bVar.b)) != null) {
                a(logDataA);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        byte[] bytes = "OK".getBytes();
        return new com.hunantv.imgo.log.entity.c(new com.hunantv.imgo.log.entity.a((byte) 20, bytes.length), bytes);
    }

    private void a(LogData logData) {
        n.a("LogRequestHandler", "writeBusinessLog:" + this.h);
        synchronized (this.h) {
            if (this.d == null) {
                f();
                if (this.d == null) {
                    return;
                }
            }
            try {
                int i2 = this.f;
                this.f = i2 + 1;
                if (i2 > com.hunantv.imgo.log.c.b()) {
                    n.a("LogRequestHandler", "start check log file size");
                    if (a(this.d)) {
                        n.a("LogRequestHandler", "log file full");
                        this.d.close();
                        this.d = a(i());
                    }
                    this.f = 0;
                }
                if (this.d != null) {
                    n.a("LogRequestHandler", "start write：" + logData.toString());
                    this.d.write(logData.toString().getBytes());
                    this.d.writeBytes(IOUtils.LINE_SEPARATOR_WINDOWS);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void b(File file) {
        this.a.add(file);
        n.a("LogRequestHandler", "add new file, " + file.getName());
        while (this.a.size() > 2) {
            File fileRemove = this.a.remove(0);
            if (fileRemove != null) {
                n.a("LogRequestHandler", "remove old file, old file = " + fileRemove.getName());
                fileRemove.delete();
            }
        }
    }

    private RandomAccessFile a(File file) {
        RandomAccessFile randomAccessFile;
        Exception e;
        if (file == null || !file.canWrite()) {
            return null;
        }
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                randomAccessFile.seek(randomAccessFile.length());
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (Exception e3) {
            randomAccessFile = null;
            e = e3;
        }
        return randomAccessFile;
    }

    private boolean a(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            try {
                return randomAccessFile.length() > com.hunantv.imgo.log.c.a();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return true;
    }
}
