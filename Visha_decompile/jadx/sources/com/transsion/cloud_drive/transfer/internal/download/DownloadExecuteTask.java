package com.transsion.cloud_drive.transfer.internal.download;

import android.media.MediaScannerConnection;
import android.net.Uri;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.cloud_drive.base.api.model.FileDownloadUrl;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.cloud_drive.transfer.api.model.DownloadTaskInfo;
import com.transsion.cloud_drive.transfer.common.CommonFileUtils;
import com.transsion.cloud_drive.transfer.common.ConflictResolution;
import com.transsion.cloud_drive.transfer.common.TransferErrorCode;
import com.transsion.cloud_drive.transfer.exception.SpaceNotEnoughException;
import com.transsion.cloud_drive.transfer.exception.TransferException;
import com.transsion.cloud_drive.transfer.internal.TaskDispatcher;
import com.transsion.cloud_drive.transfer.internal.download.DownloadExecuteTask;
import defpackage.ay2;
import defpackage.by2;
import defpackage.cq3;
import defpackage.dq3;
import defpackage.e74;
import defpackage.eq3;
import defpackage.mt4;
import defpackage.my2;
import defpackage.ny2;
import defpackage.of7;
import defpackage.oq5;
import defpackage.q15;
import defpackage.r5b;
import defpackage.rh1;
import defpackage.s5b;
import defpackage.u15;
import defpackage.wc0;
import defpackage.y45;
import defpackage.z71;
import defpackage.zfb;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.Regex;

public final class DownloadExecuteTask extends wc0 {
    public final String i;
    public final String j;
    public ny2 k;
    public s5b l;
    public ay2 m;
    public boolean n;
    public TaskDispatcher o;
    public volatile long p;
    public volatile long q;
    public a r;

    public static final class a {
        public final String a;

        public a(String str) {
            y45.j(str, "destFileName");
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && y45.e(this.a, ((a) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "ReplacePlan(destFileName=" + this.a + ")";
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[ConflictResolution.values().length];
            try {
                iArr[ConflictResolution.RENAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConflictResolution.REPLACE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConflictResolution.CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadExecuteTask(DownloadTaskInfo downloadTaskInfo) {
        super(downloadTaskInfo);
        y45.j(downloadTaskInfo, "taskInfo");
        this.i = "DownloadExecuteTask";
        this.j = downloadTaskInfo.getTaskId();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void N(Ref$ObjectRef ref$ObjectRef, CountDownLatch countDownLatch, TaskDispatcher taskDispatcher, my2 my2Var, Throwable th) {
        y45.j(ref$ObjectRef, "$exception");
        y45.j(countDownLatch, "$countDownLatch");
        y45.j(taskDispatcher, "$executor");
        y45.j(my2Var, "task");
        y45.j(th, "error");
        ref$ObjectRef.element = th;
        while (countDownLatch.getCount() > 0) {
            countDownLatch.countDown();
        }
        taskDispatcher.z(null);
    }

    public static final void P(DownloadExecuteTask downloadExecuteTask, String str, Uri uri) {
        y45.j(downloadExecuteTask, "this$0");
        downloadExecuteTask.n();
    }

    public final void I(File file, File file2) throws TransferException {
        File parentFile = file2.getParentFile();
        if (parentFile == null || !(parentFile.exists() || parentFile.mkdirs())) {
            throw new TransferException(TransferErrorCode.UNKNOWN, "dest parent dir invalid, dest=" + file2.getAbsolutePath(), null, 4, null);
        }
        File file3 = new File(parentFile, Consts.DOT + file2.getName() + Consts.DOT + ((DownloadTaskInfo) i()).getTaskId() + ".bak");
        boolean z = false;
        try {
            if (file2.exists()) {
                if (file3.exists()) {
                    file3.delete();
                }
                if (file2.renameTo(file3)) {
                    z = true;
                } else if (!file2.delete()) {
                    throw new TransferException(TransferErrorCode.UNKNOWN, "replace failed: unable to rename or delete old file, dest=" + file2.getAbsolutePath(), null, 4, null);
                }
            }
            if (file.renameTo(file2)) {
                if (z && file3.exists()) {
                    file3.delete();
                    return;
                }
                return;
            }
            if (z && file3.exists()) {
                file3.renameTo(file2);
            }
            throw new TransferException(TransferErrorCode.UNKNOWN, "replace failed: rename temp to dest failed, temp=" + file.getAbsolutePath() + ", dest=" + file2.getAbsolutePath(), null, 4, null);
        } catch (TransferException e) {
            throw e;
        } catch (Throwable th) {
            if (0 != 0 && file3.exists() && !file2.exists()) {
                file3.renameTo(file2);
            }
            throw new TransferException(TransferErrorCode.UNKNOWN, "replace failed with unexpected error, dest=" + file2.getAbsolutePath(), th);
        }
    }

    public final void J() {
        W();
        oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "] is cancelled!");
        y();
    }

    public final void K() {
        File externalFilesDir = rh1.a.a().getExternalFilesDir(null);
        if (((DownloadTaskInfo) i()).getFileSize() + ((long) 10485760) <= (externalFilesDir != null ? externalFilesDir.getFreeSpace() : 0L)) {
            return;
        }
        oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "]: disk space is not enough");
        throw new SpaceNotEnoughException();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00d8  */
    /* JADX WARN: Instruction removed from duplicated block: B:27:0x00d8, please report this as an issue */
    public final boolean L() {
        String strA;
        if (0 != ((DownloadTaskInfo) i()).getFileSize() && ((DownloadTaskInfo) i()).getContentHash().length() != 0) {
            File file = new File(((DownloadTaskInfo) i()).getTempFilePath());
            if (!file.exists()) {
                oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "]: check file sum error,tmp file [" + i() + ".tempFilePath] not exist");
                p(new r5b(TransferErrorCode.TMP_FILE_NOT_EXIST, null, null, null, 14, null));
                return false;
            }
            String lowerCase = ((DownloadTaskInfo) i()).getCrcAlgorithm().toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            int iHashCode = lowerCase.hashCode();
            if (iHashCode != -1352399984) {
                if (iHashCode != 94921523) {
                    if (iHashCode == 94921618 && lowerCase.equals("crc64")) {
                        strA = new eq3(file).a();
                    } else {
                        oq5.a.b(this.i, "unsupported CRC algorithm: " + ((DownloadTaskInfo) i()).getCrcAlgorithm());
                        strA = "";
                    }
                } else if (lowerCase.equals("crc32")) {
                    strA = new dq3(file).a();
                } else {
                    oq5.a.b(this.i, "unsupported CRC algorithm: " + ((DownloadTaskInfo) i()).getCrcAlgorithm());
                    strA = "";
                }
            } else if (lowerCase.equals("crc32c")) {
                strA = new cq3(file).a();
            } else {
                oq5.a.b(this.i, "unsupported CRC algorithm: " + ((DownloadTaskInfo) i()).getCrcAlgorithm());
                strA = "";
            }
            if (!y45.e(strA, ((DownloadTaskInfo) i()).getContentHash())) {
                oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "]: check file has error, cloud hash:" + ((DownloadTaskInfo) i()).getContentHash() + ", local hash:" + strA);
                p(new r5b(TransferErrorCode.CHECK_FILE_HASH_ERROR, null, null, null, 14, null));
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void M(List list) throws Throwable {
        List list2 = list;
        Iterator it = list2.iterator();
        long j = 0;
        long jD = 0;
        while (it.hasNext()) {
            jD += ((by2) it.next()).d();
        }
        if (jD > ((DownloadTaskInfo) i()).getFileSize()) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                ((by2) it2.next()).h(0L);
            }
        } else {
            j = jD;
        }
        ((DownloadTaskInfo) i()).setTransferredSize(j);
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            by2 by2Var = (by2) obj;
            if (by2Var.d() < by2Var.b() - by2Var.e()) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        ny2 ny2Var = this.k;
        if (ny2Var == null) {
            y45.B("config");
            ny2Var = null;
        }
        final TaskDispatcher taskDispatcher = new TaskDispatcher("parallel-download", Math.min(size, ny2Var.d()), false);
        this.o = taskDispatcher;
        final CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            taskDispatcher.m(new my2((DownloadTaskInfo) i(), (by2) it3.next(), mt4.a, countDownLatch, new e74() {
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((by2) obj2);
                    return zfb.a;
                }

                public final void invoke(by2 by2Var2) {
                    y45.j(by2Var2, "it");
                    this.this$0.U(by2Var2);
                }
            }));
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        taskDispatcher.z(new TaskDispatcher.b() {
            @Override
            public final void a(wda wdaVar, Throwable th) {
                DownloadExecuteTask.N(ref$ObjectRef, countDownLatch, taskDispatcher, (my2) wdaVar, th);
            }
        });
        countDownLatch.await();
        W();
        Throwable th = (Throwable) ref$ObjectRef.element;
        if (th != null) {
            throw th;
        }
    }

    public final void O() throws TransferException {
        File file;
        String fileName;
        if (L()) {
            String path = new File(((DownloadTaskInfo) i()).getPath()).getPath();
            File file2 = new File(((DownloadTaskInfo) i()).getTempFilePath());
            if (this.r != null) {
                a aVar = this.r;
                if (aVar == null || (fileName = aVar.a()) == null) {
                    fileName = ((DownloadTaskInfo) i()).getFileName();
                }
                file = new File(path, fileName);
            } else {
                DownloadTaskInfo downloadTaskInfo = (DownloadTaskInfo) i();
                CommonFileUtils commonFileUtils = CommonFileUtils.a;
                y45.g(path);
                downloadTaskInfo.setFileName(commonFileUtils.g(path, ((DownloadTaskInfo) i()).getFileName()));
                file = new File(path, ((DownloadTaskInfo) i()).getFileName());
            }
            if (this.r != null) {
                I(file2, file);
            } else if (!file2.renameTo(file)) {
                throw new TransferException(TransferErrorCode.UNKNOWN, "rename temp file to dest failed, temp=" + file2.getAbsolutePath() + ", dest=" + file.getAbsolutePath(), null, 4, null);
            }
            ay2 ay2Var = null;
            MediaScannerConnection.scanFile(rh1.a.a(), new String[]{file.getPath()}, null, new MediaScannerConnection.OnScanCompletedListener() {
                @Override
                public final void onScanCompleted(String str, Uri uri) {
                    DownloadExecuteTask.P(this.a, str, uri);
                }
            });
            ay2 ay2Var2 = this.m;
            if (ay2Var2 == null) {
                y45.B("dbChannel");
            } else {
                ay2Var = ay2Var2;
            }
            ay2Var.delete(((DownloadTaskInfo) i()).getTaskId());
            this.n = true;
            oq5 oq5Var = oq5.a;
            oq5Var.a(this.i, "download task success -> " + i());
            oq5Var.a(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + " fileName: " + ((DownloadTaskInfo) i()).getFileName() + " completed]");
        }
    }

    public final void Q() throws Throwable {
        ConflictResolution conflictResolutionC;
        oq5 oq5Var = oq5.a;
        oq5Var.a(this.i, "execute start:" + ((DownloadTaskInfo) i()).getTaskId());
        w();
        this.r = null;
        if (new File(((DownloadTaskInfo) i()).getPath(), ((DownloadTaskInfo) i()).getFileName()).exists()) {
            oq5Var.d(this.i, "download file [" + ((DownloadTaskInfo) i()).getFileName() + "] conflict");
            of7 of7VarJ = j();
            if (of7VarJ == null || (conflictResolutionC = of7VarJ.c(((DownloadTaskInfo) i()).getTaskId(), i())) == null) {
                conflictResolutionC = ConflictResolution.RENAME;
            }
            oq5Var.d(this.i, "handle download file [" + ((DownloadTaskInfo) i()).getFileName() + "] conflict resolution:" + conflictResolutionC);
            int i = b.a[conflictResolutionC.ordinal()];
            if (i == 2) {
                this.r = new a(((DownloadTaskInfo) i()).getFileName());
            } else if (i == 3) {
                B(true);
                l();
                return;
            }
        }
        oq5Var.a(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "]: prepare file info");
        if (V()) {
            oq5Var.a(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "]: check local storage space");
            K();
            oq5Var.a(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "]: init temp file");
            if (T()) {
                M(R());
                O();
            }
        }
    }

    public final List R() {
        long jB;
        long fileSize;
        ay2 ay2Var = this.m;
        if (ay2Var == null) {
            y45.B("dbChannel");
            ay2Var = null;
        }
        List listA = ay2Var.a(((DownloadTaskInfo) i()).getTaskId());
        if (!listA.isEmpty()) {
            return listA;
        }
        long fileSize2 = ((DownloadTaskInfo) i()).getFileSize();
        ny2 ny2Var = this.k;
        if (ny2Var == null) {
            y45.B("config");
            ny2Var = null;
        }
        if (fileSize2 % ny2Var.b() == 0) {
            long fileSize3 = ((DownloadTaskInfo) i()).getFileSize();
            ny2 ny2Var2 = this.k;
            if (ny2Var2 == null) {
                y45.B("config");
                ny2Var2 = null;
            }
            jB = fileSize3 / ny2Var2.b();
        } else {
            long fileSize4 = ((DownloadTaskInfo) i()).getFileSize();
            ny2 ny2Var3 = this.k;
            if (ny2Var3 == null) {
                y45.B("config");
                ny2Var3 = null;
            }
            jB = (fileSize4 / ny2Var3.b()) + 1;
        }
        int i = (int) jB;
        ny2 ny2Var4 = this.k;
        if (ny2Var4 == null) {
            y45.B("config");
            ny2Var4 = null;
        }
        int iMin = Math.min(ny2Var4.a(), i);
        if (iMin == 1) {
            fileSize = ((DownloadTaskInfo) i()).getFileSize();
            ((DownloadTaskInfo) i()).getFileSize();
        } else {
            long j = iMin;
            if (((DownloadTaskInfo) i()).getFileSize() % j == 0) {
                fileSize = ((DownloadTaskInfo) i()).getFileSize() / j;
            } else {
                fileSize = (((DownloadTaskInfo) i()).getFileSize() - (((DownloadTaskInfo) i()).getFileSize() % j)) / ((long) (iMin - 1));
                ((DownloadTaskInfo) i()).getFileSize();
            }
        }
        u15 u15Var = new u15(1, iMin);
        ArrayList arrayList = new ArrayList(z71.v(u15Var, 10));
        Iterator it = u15Var.iterator();
        while (it.hasNext()) {
            int iNextInt = ((q15) it).nextInt();
            long j2 = iNextInt - 1;
            by2 by2Var = new by2(0L, ((DownloadTaskInfo) i()).getTaskId(), j2, 0L, j2 * fileSize, iNextInt == iMin ? ((DownloadTaskInfo) i()).getFileSize() : ((long) iNextInt) * fileSize, 1, null);
            ay2 ay2Var2 = this.m;
            if (ay2Var2 == null) {
                y45.B("dbChannel");
                ay2Var2 = null;
            }
            by2Var.g(ay2Var2.c(by2Var));
            arrayList.add(by2Var);
        }
        return arrayList;
    }

    public final void S(ny2 ny2Var, s5b s5bVar, ay2 ay2Var) {
        y45.j(ny2Var, "config");
        y45.j(s5bVar, "fileChannel");
        y45.j(ay2Var, "dbChannel");
        this.k = ny2Var;
        this.l = s5bVar;
        this.m = ay2Var;
    }

    public final boolean T() {
        File parentFile = new File(((DownloadTaskInfo) i()).getPath()).isFile() ? new File(((DownloadTaskInfo) i()).getPath()).getParentFile() : new File(((DownloadTaskInfo) i()).getPath());
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        String str = parentFile.getPath() + File.separator;
        if (new Regex("[\"*:<>?|\\\\]").containsMatchIn(str)) {
            oq5.a.b(this.i, "create download temp file fail,invalid file path:" + str);
            p(new r5b(TransferErrorCode.PATH_RULE_ERROR, "invalid file path:" + str, (Throwable) null, 4, (DefaultConstructorMarker) null));
            return false;
        }
        File file = new File(str + Consts.DOT + ((DownloadTaskInfo) i()).getTaskId() + "_" + ((DownloadTaskInfo) i()).getFileId() + ".tmp");
        if (!file.exists()) {
            ay2 ay2Var = this.m;
            ay2 ay2Var2 = null;
            if (ay2Var == null) {
                y45.B("dbChannel");
                ay2Var = null;
            }
            ay2Var.delete(((DownloadTaskInfo) i()).getTaskId());
            if (this.r == null) {
                ((DownloadTaskInfo) i()).setFileName(CommonFileUtils.a.f(64, ((DownloadTaskInfo) i()).getFileName()));
            }
            ay2 ay2Var3 = this.m;
            if (ay2Var3 == null) {
                y45.B("dbChannel");
            } else {
                ay2Var2 = ay2Var3;
            }
            ay2Var2.delete(((DownloadTaskInfo) i()).getTaskId());
            try {
                file.createNewFile();
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                randomAccessFile.setLength(((DownloadTaskInfo) i()).getFileSize());
                randomAccessFile.close();
            } catch (IOException e) {
                oq5.a.b(this.i, "create download temp file error:", e);
                p(new r5b(TransferErrorCode.CREATE_TEMP_FILE_ERROR, e, null, null, 12, null));
                return false;
            }
        }
        DownloadTaskInfo downloadTaskInfo = (DownloadTaskInfo) i();
        String path = file.getPath();
        y45.i(path, "getPath(...)");
        downloadTaskInfo.setTempFilePath(path);
        return true;
    }

    public final void U(by2 by2Var) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.p >= 300 || ((DownloadTaskInfo) i()).getTransferredSize() == ((DownloadTaskInfo) i()).getFileSize()) {
            this.p = jCurrentTimeMillis;
            t();
        }
        if (jCurrentTimeMillis - this.q >= 300 || ((DownloadTaskInfo) i()).getTransferredSize() == ((DownloadTaskInfo) i()).getFileSize()) {
            this.q = jCurrentTimeMillis;
            ay2 ay2Var = this.m;
            if (ay2Var == null) {
                y45.B("dbChannel");
                ay2Var = null;
            }
            ay2Var.b(by2Var);
        }
    }

    public final boolean V() throws Throwable {
        boolean z;
        s5b s5bVar = this.l;
        if (s5bVar == null) {
            y45.B("fileChannel");
            s5bVar = null;
        }
        ApiResponse apiResponseA = s5bVar.a(((DownloadTaskInfo) i()).getFileId());
        if (apiResponseA instanceof ApiResponse.Success) {
            Object data = ((ApiResponse.Success) apiResponseA).getData();
            y45.g(data);
            FileDownloadUrl fileDownloadUrl = (FileDownloadUrl) data;
            ((DownloadTaskInfo) i()).setUrl(fileDownloadUrl.getUrl());
            ((DownloadTaskInfo) i()).setFileSize(fileDownloadUrl.getSize());
            ((DownloadTaskInfo) i()).setCrcAlgorithm(fileDownloadUrl.getCrc());
            ((DownloadTaskInfo) i()).setContentHash(fileDownloadUrl.getCrc64Hash());
            z = true;
        } else {
            z = false;
        }
        if (apiResponseA instanceof ApiResponse.Failure.Error) {
            ApiResponse.Failure.Error error = (ApiResponse.Failure.Error) apiResponseA;
            oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "]: get file info fail,errorCode:" + error.getErrorCode() + "  errorMessage:" + error.getMessage());
            p(new r5b(error.getErrorCode(), error.getMessage(), null, null, null, 28, null));
        }
        if (!(apiResponseA instanceof ApiResponse.Failure.Exception)) {
            return z;
        }
        ApiResponse.Failure.Exception exception = (ApiResponse.Failure.Exception) apiResponseA;
        oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "] occur exception:", exception.getThrowable());
        throw exception.getThrowable();
    }

    public final void W() {
        TaskDispatcher taskDispatcher = this.o;
        if (taskDispatcher != null) {
            taskDispatcher.A();
        }
        this.o = null;
    }

    @Override
    public void clear() {
        ay2 ay2Var = this.m;
        if (ay2Var != null) {
            if (ay2Var == null) {
                y45.B("dbChannel");
                ay2Var = null;
            }
            ay2Var.delete(((DownloadTaskInfo) i()).getTaskId());
            oq5.a.a(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "] cache cleared");
        }
    }

    /* JADX WARN: Code duplicated, block: B:128:0x0272  */
    /* JADX WARN: Code duplicated, block: B:129:0x0273 A[Catch: InterruptedException -> 0x02e4, TryCatch #2 {InterruptedException -> 0x02e4, blocks: (B:126:0x026c, B:131:0x0279, B:133:0x027d, B:135:0x0283, B:129:0x0273, B:136:0x0287, B:138:0x028b, B:139:0x028f, B:141:0x0297, B:143:0x029b, B:144:0x029f, B:145:0x02a6), top: B:171:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0279 A[Catch: InterruptedException -> 0x02e4, TryCatch #2 {InterruptedException -> 0x02e4, blocks: (B:126:0x026c, B:131:0x0279, B:133:0x027d, B:135:0x0283, B:129:0x0273, B:136:0x0287, B:138:0x028b, B:139:0x028f, B:141:0x0297, B:143:0x029b, B:144:0x029f, B:145:0x02a6), top: B:171:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:133:0x027d A[Catch: InterruptedException -> 0x02e4, TryCatch #2 {InterruptedException -> 0x02e4, blocks: (B:126:0x026c, B:131:0x0279, B:133:0x027d, B:135:0x0283, B:129:0x0273, B:136:0x0287, B:138:0x028b, B:139:0x028f, B:141:0x0297, B:143:0x029b, B:144:0x029f, B:145:0x02a6), top: B:171:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:134:0x0282  */
    /* JADX WARN: Code duplicated, block: B:136:0x0287 A[Catch: InterruptedException -> 0x02e4, TryCatch #2 {InterruptedException -> 0x02e4, blocks: (B:126:0x026c, B:131:0x0279, B:133:0x027d, B:135:0x0283, B:129:0x0273, B:136:0x0287, B:138:0x028b, B:139:0x028f, B:141:0x0297, B:143:0x029b, B:144:0x029f, B:145:0x02a6), top: B:171:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:138:0x028b A[Catch: InterruptedException -> 0x02e4, TryCatch #2 {InterruptedException -> 0x02e4, blocks: (B:126:0x026c, B:131:0x0279, B:133:0x027d, B:135:0x0283, B:129:0x0273, B:136:0x0287, B:138:0x028b, B:139:0x028f, B:141:0x0297, B:143:0x029b, B:144:0x029f, B:145:0x02a6), top: B:171:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0297 A[Catch: InterruptedException -> 0x02e4, TryCatch #2 {InterruptedException -> 0x02e4, blocks: (B:126:0x026c, B:131:0x0279, B:133:0x027d, B:135:0x0283, B:129:0x0273, B:136:0x0287, B:138:0x028b, B:139:0x028f, B:141:0x0297, B:143:0x029b, B:144:0x029f, B:145:0x02a6), top: B:171:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:143:0x029b A[Catch: InterruptedException -> 0x02e4, TryCatch #2 {InterruptedException -> 0x02e4, blocks: (B:126:0x026c, B:131:0x0279, B:133:0x027d, B:135:0x0283, B:129:0x0273, B:136:0x0287, B:138:0x028b, B:139:0x028f, B:141:0x0297, B:143:0x029b, B:144:0x029f, B:145:0x02a6), top: B:171:0x026c }] */
    /* JADX WARN: Code duplicated, block: B:164:0x0365 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:165:0x0366  */
    /* JADX WARN: Code duplicated, block: B:171:0x026c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x011f A[Catch: InterruptedException -> 0x0191, TryCatch #4 {InterruptedException -> 0x0191, blocks: (B:65:0x0118, B:70:0x0125, B:72:0x0129, B:73:0x012d, B:68:0x011f, B:75:0x0134, B:77:0x0138, B:78:0x013c, B:80:0x0144, B:82:0x0148, B:83:0x014c, B:84:0x0153, B:101:0x01e5, B:106:0x01f2, B:108:0x01f6, B:109:0x01fa, B:104:0x01ec, B:110:0x0201, B:112:0x0205, B:113:0x0209, B:115:0x0211, B:117:0x0215, B:118:0x0219, B:119:0x0220), top: B:174:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0134 A[Catch: InterruptedException -> 0x0191, TryCatch #4 {InterruptedException -> 0x0191, blocks: (B:65:0x0118, B:70:0x0125, B:72:0x0129, B:73:0x012d, B:68:0x011f, B:75:0x0134, B:77:0x0138, B:78:0x013c, B:80:0x0144, B:82:0x0148, B:83:0x014c, B:84:0x0153, B:101:0x01e5, B:106:0x01f2, B:108:0x01f6, B:109:0x01fa, B:104:0x01ec, B:110:0x0201, B:112:0x0205, B:113:0x0209, B:115:0x0211, B:117:0x0215, B:118:0x0219, B:119:0x0220), top: B:174:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0138 A[Catch: InterruptedException -> 0x0191, TryCatch #4 {InterruptedException -> 0x0191, blocks: (B:65:0x0118, B:70:0x0125, B:72:0x0129, B:73:0x012d, B:68:0x011f, B:75:0x0134, B:77:0x0138, B:78:0x013c, B:80:0x0144, B:82:0x0148, B:83:0x014c, B:84:0x0153, B:101:0x01e5, B:106:0x01f2, B:108:0x01f6, B:109:0x01fa, B:104:0x01ec, B:110:0x0201, B:112:0x0205, B:113:0x0209, B:115:0x0211, B:117:0x0215, B:118:0x0219, B:119:0x0220), top: B:174:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0144 A[Catch: InterruptedException -> 0x0191, TryCatch #4 {InterruptedException -> 0x0191, blocks: (B:65:0x0118, B:70:0x0125, B:72:0x0129, B:73:0x012d, B:68:0x011f, B:75:0x0134, B:77:0x0138, B:78:0x013c, B:80:0x0144, B:82:0x0148, B:83:0x014c, B:84:0x0153, B:101:0x01e5, B:106:0x01f2, B:108:0x01f6, B:109:0x01fa, B:104:0x01ec, B:110:0x0201, B:112:0x0205, B:113:0x0209, B:115:0x0211, B:117:0x0215, B:118:0x0219, B:119:0x0220), top: B:174:0x0118 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0148 A[Catch: InterruptedException -> 0x0191, TryCatch #4 {InterruptedException -> 0x0191, blocks: (B:65:0x0118, B:70:0x0125, B:72:0x0129, B:73:0x012d, B:68:0x011f, B:75:0x0134, B:77:0x0138, B:78:0x013c, B:80:0x0144, B:82:0x0148, B:83:0x014c, B:84:0x0153, B:101:0x01e5, B:106:0x01f2, B:108:0x01f6, B:109:0x01fa, B:104:0x01ec, B:110:0x0201, B:112:0x0205, B:113:0x0209, B:115:0x0211, B:117:0x0215, B:118:0x0219, B:119:0x0220), top: B:174:0x0118 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:165:0x0366, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [r5b$a] */
    /* JADX WARN: Type inference failed for: r0v70, types: [ny2] */
    /* JADX WARN: Type inference failed for: r0v73 */
    /* JADX WARN: Type inference failed for: r0v75, types: [ny2] */
    /* JADX WARN: Type inference failed for: r0v79, types: [ny2] */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r0v81 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r0v85 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v3, types: [ny2] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12, types: [com.transsion.cloud_drive.transfer.exception.TransferException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14, types: [com.transsion.cloud_drive.transfer.exception.TransferException, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v17, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r15v18 */
    /* JADX WARN: Type inference failed for: r15v19 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v20 */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7, types: [com.transsion.cloud_drive.transfer.exception.TransferException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r17v0, types: [com.transsion.cloud_drive.transfer.internal.download.DownloadExecuteTask, wc0] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.transsion.cloud_drive.transfer.exception.TransferException, java.lang.Object, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public void execute() throws Throwable {
        TransferException transferExceptionA;
        ?? r6;
        ?? r11;
        ?? r12;
        int i;
        TransferException transferException;
        ny2 ny2Var;
        ny2 ny2Var2;
        ny2 ny2Var3;
        ny2 ny2Var4;
        ?? r15;
        ?? r13;
        ny2 ny2Var5;
        ny2 ny2Var6;
        ?? r0;
        z();
        ny2 ny2Var7 = this.k;
        Throwable th = null;
        if (ny2Var7 == null) {
            y45.B("config");
            ny2Var7 = null;
        }
        long j = 2000;
        if (ny2Var7.e() >= 0) {
            int iE = 0;
            loop0: while (true) {
                r11 = th;
                ?? A = A;
                while (true) {
                    if (!this.n && !h()) {
                        ny2 ny2Var8 = this.k;
                        if (ny2Var8 == null) {
                            r12 = ny2Var8;
                            y45.B("config");
                            r12 = th;
                        }
                        r12 = ny2Var8;
                        if (iE > r12.e()) {
                            break loop0;
                        }
                        i = iE + 1;
                        try {
                            try {
                                Q();
                            } catch (Throwable th2) {
                                try {
                                    try {
                                        if (k(th2)) {
                                            try {
                                                Thread.sleep(j);
                                            } catch (Throwable th3) {
                                                th = th3;
                                                A = th;
                                                if (!this.n) {
                                                    if (A != 0) {
                                                        try {
                                                            if (A.isNoNetwork()) {
                                                                if (!v(A)) {
                                                                    ny2Var3 = this.k;
                                                                    if (ny2Var3 == null) {
                                                                        y45.B("config");
                                                                        ny2Var3 = null;
                                                                    }
                                                                    if (ny2Var3.f() > 0) {
                                                                        ny2Var4 = this.k;
                                                                        if (ny2Var4 == null) {
                                                                            y45.B("config");
                                                                            ny2Var4 = null;
                                                                        }
                                                                        Thread.sleep(ny2Var4.f());
                                                                    }
                                                                    oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + " fileName: " + ((DownloadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                                                }
                                                            }
                                                            ny2Var = this.k;
                                                            if (ny2Var == null) {
                                                                y45.B("config");
                                                                ny2Var2 = null;
                                                            } else {
                                                                ny2Var2 = ny2Var;
                                                            }
                                                            ny2Var2.e();
                                                        } catch (InterruptedException unused) {
                                                            J();
                                                            throw th;
                                                        }
                                                    } else if (!v(A)) {
                                                        ny2Var3 = this.k;
                                                        if (ny2Var3 == null) {
                                                            y45.B("config");
                                                            ny2Var3 = null;
                                                        }
                                                        if (ny2Var3.f() > 0) {
                                                            ny2Var4 = this.k;
                                                            if (ny2Var4 == null) {
                                                                y45.B("config");
                                                                ny2Var4 = null;
                                                            }
                                                            Thread.sleep(ny2Var4.f());
                                                        }
                                                        oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + " fileName: " + ((DownloadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                                    } else {
                                                        ny2Var = this.k;
                                                        if (ny2Var == null) {
                                                            y45.B("config");
                                                            ny2Var2 = null;
                                                        } else {
                                                            ny2Var2 = ny2Var;
                                                        }
                                                        ny2Var2.e();
                                                    }
                                                }
                                                throw th;
                                            }
                                        }
                                        A = A(th2);
                                        try {
                                            oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "] occur error:", A);
                                            r15 = A;
                                        } catch (Throwable th4) {
                                            th = th4;
                                            if (!this.n && !h()) {
                                                if (A != 0) {
                                                    if (A.isNoNetwork()) {
                                                        if (!v(A)) {
                                                            ny2Var3 = this.k;
                                                            if (ny2Var3 == null) {
                                                                y45.B("config");
                                                                ny2Var3 = null;
                                                            }
                                                            if (ny2Var3.f() > 0) {
                                                                ny2Var4 = this.k;
                                                                if (ny2Var4 == null) {
                                                                    y45.B("config");
                                                                    ny2Var4 = null;
                                                                }
                                                                Thread.sleep(ny2Var4.f());
                                                            }
                                                            oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + " fileName: " + ((DownloadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                                        }
                                                    }
                                                    ny2Var = this.k;
                                                    if (ny2Var == null) {
                                                        y45.B("config");
                                                        ny2Var2 = null;
                                                    } else {
                                                        ny2Var2 = ny2Var;
                                                    }
                                                    ny2Var2.e();
                                                } else if (!v(A)) {
                                                    ny2Var = this.k;
                                                    if (ny2Var == null) {
                                                        y45.B("config");
                                                        ny2Var2 = null;
                                                    } else {
                                                        ny2Var2 = ny2Var;
                                                    }
                                                    ny2Var2.e();
                                                } else {
                                                    ny2Var3 = this.k;
                                                    if (ny2Var3 == null) {
                                                        y45.B("config");
                                                        ny2Var3 = null;
                                                    }
                                                    if (ny2Var3.f() > 0) {
                                                        ny2Var4 = this.k;
                                                        if (ny2Var4 == null) {
                                                            y45.B("config");
                                                            ny2Var4 = null;
                                                        }
                                                        Thread.sleep(ny2Var4.f());
                                                    }
                                                    oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + " fileName: " + ((DownloadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                                }
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        A = 0;
                                    }
                                } catch (InterruptedException unused2) {
                                    J();
                                    r15 = 0;
                                }
                                if (this.n || h()) {
                                    iE = i;
                                    r15 = r15;
                                    r13 = r15;
                                } else {
                                    if (r15 != 0) {
                                        try {
                                            if (!r15.isNoNetwork()) {
                                                if (v(r15)) {
                                                    ny2Var5 = this.k;
                                                    if (ny2Var5 == null) {
                                                        y45.B("config");
                                                        ny2Var5 = null;
                                                    }
                                                    if (ny2Var5.f() > 0) {
                                                        ny2Var6 = this.k;
                                                        if (ny2Var6 == null) {
                                                            y45.B("config");
                                                            ny2Var6 = null;
                                                        }
                                                        Thread.sleep(ny2Var6.f());
                                                    }
                                                    oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + " fileName: " + ((DownloadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                                    iE = i;
                                                    r15 = r15;
                                                }
                                                r13 = r15;
                                            }
                                        } catch (InterruptedException unused3) {
                                            J();
                                            iE = i;
                                            r13 = 0;
                                        }
                                    } else {
                                        if (v(r15)) {
                                            ny2Var5 = this.k;
                                            if (ny2Var5 == null) {
                                                y45.B("config");
                                                ny2Var5 = null;
                                            }
                                            if (ny2Var5.f() > 0) {
                                                ny2Var6 = this.k;
                                                if (ny2Var6 == null) {
                                                    y45.B("config");
                                                    ny2Var6 = null;
                                                }
                                                Thread.sleep(ny2Var6.f());
                                            }
                                            oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + " fileName: " + ((DownloadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                            iE = i;
                                            r15 = r15;
                                        }
                                        r13 = r15;
                                    }
                                    ny2 ny2Var9 = this.k;
                                    if (ny2Var9 == null) {
                                        y45.B("config");
                                        ny2Var9 = null;
                                    }
                                    iE = ny2Var9.e() + 1;
                                    r15 = r15;
                                    r13 = r15;
                                }
                                th = null;
                                j = 2000;
                                r11 = r13;
                                A = r15;
                            }
                        } catch (InterruptedException e) {
                            if (D()) {
                                J();
                                transferException = null;
                            } else {
                                W();
                                TransferException transferExceptionA2 = A(e);
                                oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "] occur error:", transferExceptionA2);
                                transferException = transferExceptionA2;
                            }
                            if (this.n || h()) {
                                iE = i;
                                r15 = transferException;
                            } else if ((transferException == null || !transferException.isNoNetwork()) && !v(transferException)) {
                                ny2 ny2Var10 = this.k;
                                if (ny2Var10 == null) {
                                    y45.B("config");
                                    ny2Var10 = null;
                                }
                                if (ny2Var10.f() > 0) {
                                    ny2 ny2Var11 = this.k;
                                    if (ny2Var11 == null) {
                                        y45.B("config");
                                        ny2Var11 = null;
                                    }
                                    Thread.sleep(ny2Var11.f());
                                }
                                oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + " fileName: " + ((DownloadTaskInfo) i()).getFileName() + " fail, retry " + i + "]");
                                iE = i;
                                r15 = transferException;
                            } else {
                                ny2 ny2Var12 = this.k;
                                if (ny2Var12 == null) {
                                    y45.B("config");
                                    ny2Var12 = null;
                                }
                                iE = ny2Var12.e() + 1;
                                r15 = transferException;
                            }
                            r13 = r15;
                            th = null;
                            j = 2000;
                            r11 = r13;
                            A = r15;
                        }
                    } else {
                        break loop0;
                    }
                    th = null;
                    j = 2000;
                    r11 = r13;
                    A = r15;
                }
                if (!this.n && !h()) {
                    try {
                        if (v(th)) {
                            ny2 ny2Var13 = this.k;
                            ?? r1 = ny2Var13;
                            if (ny2Var13 == null) {
                                y45.B("config");
                                r1 = th;
                            }
                            iE = r1.e() + 1;
                        } else {
                            ny2 ny2Var14 = this.k;
                            ?? r2 = ny2Var14;
                            if (ny2Var14 == null) {
                                y45.B("config");
                                r2 = th;
                            }
                            if (r2.f() > 0) {
                                ny2 ny2Var15 = this.k;
                                if (ny2Var15 == null) {
                                    r0 = ny2Var15;
                                    y45.B("config");
                                    r0 = th;
                                }
                                r0 = ny2Var15;
                                Thread.sleep(r0.f());
                            }
                            oq5 oq5Var = oq5.a;
                            String str = this.i;
                            String taskId = ((DownloadTaskInfo) i()).getTaskId();
                            String fileName = ((DownloadTaskInfo) i()).getFileName();
                            A = new StringBuilder();
                            A.append("download task[");
                            A.append(taskId);
                            A.append(" fileName: ");
                            A.append(fileName);
                            A.append(" fail, retry ");
                            A.append(i);
                            A.append("]");
                            oq5Var.b(str, A.toString());
                        }
                    } catch (InterruptedException unused4) {
                        J();
                    }
                }
                iE = i;
            }
            r6 = r11;
        } else {
            try {
                Q();
            } catch (InterruptedException e2) {
                if (D()) {
                    J();
                } else {
                    W();
                    transferExceptionA = A(e2);
                    oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "] occur error:", transferExceptionA);
                }
                if (r6 == 0) {
                    r6 = transferExceptionA;
                    return;
                }
                r6 = transferExceptionA;
                oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "] finish,post error:", r6);
                p(r5b.f.a(r6));
                throw r6;
            } catch (Throwable th6) {
                if (k(th6)) {
                    Thread.sleep(2000L);
                }
                TransferException transferExceptionA3 = A(th6);
                oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "] occur error:", transferExceptionA3);
                r6 = transferExceptionA3;
            }
            r6 = 0;
        }
        if (r6 == 0) {
            r6 = transferExceptionA;
            return;
        }
        r6 = transferExceptionA;
        oq5.a.b(this.i, "download task[" + ((DownloadTaskInfo) i()).getTaskId() + "] finish,post error:", r6);
        p(r5b.f.a(r6));
        throw r6;
    }

    @Override
    public String getId() {
        return this.j;
    }

    @Override
    public boolean isCompleted() {
        return this.n;
    }
}
