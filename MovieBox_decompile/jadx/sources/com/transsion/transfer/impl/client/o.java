package com.transsion.transfer.impl.client;

import com.transsion.transfer.androidasync.http.AsyncHttpClient;
import com.transsion.transfer.impl.TaskState;
import com.transsion.transfer.impl.entity.FileData;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

public final class o {

    public static final a f53653r = new a(null);

    private final AsyncHttpClient f53654a;

    private final String f53655b;

    private final String f53656c;

    private final String f53657d;

    private final com.transsion.transfer.impl.f f53658e;

    private final Function2 f53659f;

    private boolean f53660g;

    private com.transsion.transfer.androidasync.future.f f53661h;

    private long f53662i;

    private final List f53663j;

    private final List f53664k;

    private final List f53665l;

    private final List f53666m;

    private final Map f53667n;

    private boolean f53668o;

    private Long f53669p;

    private final c f53670q;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends AsyncHttpClient.g {

        final FileData f53672b;

        final long f53673c;

        b(FileData fileData, long j10) {
            this.f53672b = fileData;
            this.f53673c = j10;
        }

        @Override
        public void a(com.transsion.transfer.androidasync.http.k kVar, long j10, long j11) {
            if (o.this.f53660g && kVar != null) {
                kVar.close();
            }
            super.a(kVar, j10, j11);
            if (System.currentTimeMillis() - o.this.f53662i < 2000) {
                return;
            }
            o.this.f53662i = System.currentTimeMillis();
            com.transsion.transfer.impl.f fVar = o.this.f53658e;
            String fileRemotePath = this.f53672b.getFileRemotePath();
            long j12 = this.f53673c;
            fVar.C(fileRemotePath, j10 + j12, j11 + j12);
        }

        @Override
        public void b(com.transsion.transfer.androidasync.http.k kVar) {
            o.this.f53658e.J(this.f53672b.getFileRemotePath(), TaskState.TRANSFERRING, this.f53673c, this.f53672b.getFileSize(), 0L, null);
        }

        @Override
        public void c(Exception exc, com.transsion.transfer.androidasync.http.k kVar, File file) throws UnsupportedEncodingException {
            o.this.f53668o = false;
            o.this.f53670q.a(this.f53672b, kVar != null ? Integer.valueOf(kVar.b()) : null, exc);
        }
    }

    public static final class c implements Function3 {
        c() {
        }

        /* JADX WARN: Code duplicated, block: B:35:0x017c  */
        /* JADX WARN: Code duplicated, block: B:38:0x018e  */
        /* JADX WARN: Code duplicated, block: B:44:0x01a9  */
        /* JADX WARN: Code duplicated, block: B:51:0x01d0  */
        /* JADX WARN: Code duplicated, block: B:54:0x01e6  */
        /* JADX WARN: Code duplicated, block: B:55:0x01eb  */
        /* JADX WARN: Code duplicated, block: B:58:0x020a  */
        /* JADX WARN: Code duplicated, block: B:60:0x020f  */
        /* JADX WARN: Code duplicated, block: B:68:0x01a4 A[SYNTHETIC] */
        public void a(FileData data, Integer num, Exception exc) throws UnsupportedEncodingException {
            Iterator it;
            Object next;
            FileData fileData;
            TaskState taskState;
            String message;
            Intrinsics.h(data, "data");
            long jCurrentTimeMillis = System.currentTimeMillis();
            Long l10 = o.this.f53669p;
            long jLongValue = jCurrentTimeMillis - (l10 != null ? l10.longValue() : 0L);
            Object obj = null;
            o.this.f53669p = null;
            if (exc == null) {
                IntRange intRange = new IntRange(200, 299);
                if (num == null || !intRange.o(num.intValue())) {
                    it = o.this.f53664k.iterator();
                    do {
                        if (it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((FileData) next).getFileRemotePath(), data.getFileRemotePath()));
                    fileData = (FileData) next;
                    if (fileData != null) {
                        o oVar = o.this;
                        oVar.f53664k.remove(fileData);
                        oVar.f53665l.add(fileData);
                        com.transsion.transfer.impl.f fVar = oVar.f53658e;
                        String fileRemotePath = fileData.getFileRemotePath();
                        if (num == null && num.intValue() == 404) {
                            taskState = TaskState.NO_FILE;
                        } else {
                            taskState = TaskState.ERROR;
                        }
                        TaskState taskState2 = taskState;
                        long length = new File(fileData.getFileReceiveCachePath()).length();
                        long fileSize = fileData.getFileSize();
                        if (exc != null) {
                            message = exc.getMessage();
                        } else {
                            message = null;
                        }
                        fVar.J(fileRemotePath, taskState2, length, fileSize, jLongValue, "errorCode:" + num + ", errorMsg:" + message);
                    }
                    if (exc != null) {
                        exc.printStackTrace();
                    }
                    String message2 = exc != null ? exc.getMessage() : null;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("invoke: send file error:");
                    sb2.append(message2);
                    sb2.append(", skip it and send next");
                } else {
                    for (Object obj2 : o.this.f53664k) {
                        if (Intrinsics.c(((FileData) obj2).getFileRemotePath(), data.getFileRemotePath())) {
                            obj = obj2;
                            break;
                        }
                    }
                    FileData fileData2 = (FileData) obj;
                    if (fileData2 != null) {
                        File finalFile = fileData2.getFinalFile();
                        o.this.f53664k.remove(fileData2);
                        if (fileData2.verifyFile()) {
                            au.e eVar = new au.e(fileData2);
                            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                            String name = au.e.class.getName();
                            Intrinsics.g(name, "getName(...)");
                            flowEventBus.postEvent(name, eVar, 0L);
                            o.this.f53666m.add(fileData2);
                            o.this.f53658e.J(fileData2.getFileRemotePath(), TaskState.FINISH, finalFile.length(), fileData2.getFileSize(), jLongValue, null);
                            Function2 function2 = o.this.f53659f;
                            List list = o.this.f53666m;
                            ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
                            Iterator it2 = list.iterator();
                            while (it2.hasNext()) {
                                arrayList.add(((FileData) it2.next()).getFileRemotePath());
                            }
                            function2.invoke(CollectionsKt.U0(arrayList), Boolean.valueOf(o.this.f53663j.isEmpty()));
                        } else {
                            Integer num2 = (Integer) o.this.f53667n.get(fileData2.getFileRemotePath());
                            int iIntValue = num2 != null ? num2.intValue() : 0;
                            if (iIntValue > 1) {
                                o.this.f53658e.J(fileData2.getFileRemotePath(), TaskState.ERROR, fileData2.getDownloadedSize(), fileData2.getFileSize(), jLongValue, "verify file failed");
                                long fileSize2 = fileData2.getFileSize();
                                long length2 = finalFile.length();
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("invoke: verify file fail，fileSize:");
                                sb3.append(fileSize2);
                                sb3.append(", saveFile.size:");
                                sb3.append(length2);
                                sb3.append(", and delete cache file ,and retry");
                                fileData2.clearFile();
                            } else {
                                o.this.f53667n.put(fileData2.getFileRemotePath(), Integer.valueOf(iIntValue + 1));
                                o.this.f53664k.add(fileData2);
                            }
                        }
                    }
                }
            } else {
                it = o.this.f53664k.iterator();
                do {
                    if (it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((FileData) next).getFileRemotePath(), data.getFileRemotePath()));
                fileData = (FileData) next;
                if (fileData != null) {
                    o oVar2 = o.this;
                    oVar2.f53664k.remove(fileData);
                    oVar2.f53665l.add(fileData);
                    com.transsion.transfer.impl.f fVar2 = oVar2.f53658e;
                    String fileRemotePath2 = fileData.getFileRemotePath();
                    if (num == null) {
                        taskState = TaskState.ERROR;
                    } else {
                        taskState = TaskState.NO_FILE;
                    }
                    TaskState taskState3 = taskState;
                    long length3 = new File(fileData.getFileReceiveCachePath()).length();
                    long fileSize3 = fileData.getFileSize();
                    if (exc != null) {
                        message = exc.getMessage();
                    } else {
                        message = null;
                    }
                    fVar2.J(fileRemotePath2, taskState3, length3, fileSize3, jLongValue, "errorCode:" + num + ", errorMsg:" + message);
                }
                if (exc != null) {
                    exc.printStackTrace();
                }
                if (exc != null) {
                }
                StringBuilder sb4 = new StringBuilder();
                sb4.append("invoke: send file error:");
                sb4.append(message2);
                sb4.append(", skip it and send next");
            }
            o.this.r();
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3) throws UnsupportedEncodingException {
            a((FileData) obj, (Integer) obj2, (Exception) obj3);
            return Unit.f64096a;
        }
    }

    public o(AsyncHttpClient httpClient, String clientIp, String transferId, String urlPath, com.transsion.transfer.impl.f listener, Function2 completeListener) {
        Intrinsics.h(httpClient, "httpClient");
        Intrinsics.h(clientIp, "clientIp");
        Intrinsics.h(transferId, "transferId");
        Intrinsics.h(urlPath, "urlPath");
        Intrinsics.h(listener, "listener");
        Intrinsics.h(completeListener, "completeListener");
        this.f53654a = httpClient;
        this.f53655b = clientIp;
        this.f53656c = transferId;
        this.f53657d = urlPath;
        this.f53658e = listener;
        this.f53659f = completeListener;
        this.f53663j = new ArrayList();
        this.f53664k = new ArrayList();
        this.f53665l = new ArrayList();
        this.f53666m = new ArrayList();
        this.f53667n = new LinkedHashMap();
        this.f53669p = 0L;
        this.f53670q = new c();
    }

    public final void r() throws UnsupportedEncodingException {
        if (this.f53660g) {
            return;
        }
        if (this.f53664k.isEmpty() && !this.f53663j.isEmpty()) {
            this.f53664k.add(this.f53663j.remove(0));
        }
        if (this.f53664k.isEmpty() || this.f53668o) {
            return;
        }
        s((FileData) this.f53664k.get(0));
    }

    private final void s(FileData fileData) throws UnsupportedEncodingException {
        File parentFile = new File(fileData.getFileReceiveCachePath()).getParentFile();
        if ((parentFile != null ? parentFile.getFreeSpace() : 0L) < fileData.getFileSize()) {
            this.f53658e.J(fileData.getFileRemotePath(), TaskState.SPACE_LIMIT, 0L, fileData.getFileSize(), 0L, null);
            this.f53664k.remove(fileData);
            r();
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("receiveFile:start:");
        sb2.append(fileData);
        sb2.append(" ");
        this.f53668o = true;
        FileData.Companion companion = FileData.INSTANCE;
        TaskState taskState = TaskState.CONNECTING;
        fileData.setState(companion.a(taskState));
        fileData.filePrepare();
        File tempFile = fileData.getTempFile();
        File tempBackFile = tempFile.exists() ? fileData.getTempBackFile() : tempFile;
        long length = tempFile.exists() ? tempFile.length() : 0L;
        this.f53669p = Long.valueOf(System.currentTimeMillis());
        this.f53658e.J(fileData.getFileRemotePath(), taskState, length, fileData.getFileSize(), 0L, null);
        AsyncHttpClient asyncHttpClient = this.f53654a;
        com.transsion.transfer.androidasync.http.h hVarC = TransferClient.f53593t.c(this.f53657d + "/client/fetchFile?file=" + au.a.b(fileData.getFileRemotePath()), this.f53655b, this.f53656c);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("transferFile: bytes=");
        sb3.append(length);
        sb3.append("-");
        StringBuilder sb4 = new StringBuilder();
        sb4.append("transferFile: fileData=");
        sb4.append(fileData);
        hVarC.h().a("Range", "bytes=" + length + "-");
        Unit unit = Unit.f64096a;
        this.f53661h = asyncHttpClient.t(hVarC, tempBackFile.getAbsolutePath(), new b(fileData, length));
    }

    public final void p(List files) {
        Object obj;
        Object next;
        Intrinsics.h(files, "files");
        this.f53660g = false;
        ArrayList arrayList = new ArrayList();
        List<FileData> list = files;
        for (FileData fileData : list) {
            Iterator it = this.f53664k.iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(fileData.getFileRemotePath(), ((FileData) next).getFileRemotePath()));
            if (next == null) {
                for (Object obj2 : this.f53663j) {
                    if (Intrinsics.c(fileData.getFileRemotePath(), ((FileData) obj2).getFileRemotePath())) {
                        obj = obj2;
                        break;
                    }
                }
                if (obj != null) {
                }
            }
            arrayList.add(fileData);
        }
        if (!arrayList.isEmpty()) {
            files.removeAll(arrayList);
        }
        List list2 = this.f53663j;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.e(MapsKt.e(CollectionsKt.v(list2, 10)), 16));
        for (Object obj3 : list2) {
            linkedHashMap.put(((FileData) obj3).getFileRemotePath(), obj3);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.e(MapsKt.e(CollectionsKt.v(list, 10)), 16));
        for (Object obj4 : list) {
            linkedHashMap2.put(((FileData) obj4).getFileRemotePath(), obj4);
        }
        List listR0 = CollectionsKt.R0(MapsKt.o(linkedHashMap, linkedHashMap2).values());
        this.f53663j.clear();
        this.f53663j.addAll(listR0);
        r();
    }

    public final void q() {
        com.transsion.transfer.androidasync.future.f fVar = this.f53661h;
        if (fVar != null) {
            fVar.cancel(true);
        }
        this.f53660g = true;
        this.f53664k.clear();
        this.f53663j.clear();
        this.f53666m.clear();
        this.f53665l.clear();
        this.f53667n.clear();
    }

    public final void t(FileData fileData) {
        if (fileData != null) {
            if (!this.f53664k.contains(fileData)) {
                this.f53663j.remove(fileData);
            }
            this.f53664k.remove(fileData);
            this.f53664k.add(0, fileData);
        }
        r();
    }
}
