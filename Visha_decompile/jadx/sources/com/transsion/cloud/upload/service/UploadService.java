package com.transsion.cloud.upload.service;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.cloud.updownload.common.TransferNetInfo$NetType;
import com.transsion.cloud.upload.model.UploadProgressInfo;
import com.transsion.cloud.upload.model.UploadingItem;
import com.transsion.cloud.upload.task.NewUploadTask;
import com.transsion.cloudcore.cloudapi.impl.CloudUploadManagerImpl;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.cloudcore.db.CloudTransferRecordManager;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.playercommon.R;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.utils.TransferNotificationHelper;
import com.transsion.utils.ToastUtils;
import defpackage.bx4;
import defpackage.h27;
import defpackage.jf;
import defpackage.nhb;
import defpackage.pz6;
import defpackage.rw4;
import defpackage.vz6;
import defpackage.w6c;
import defpackage.xhb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentLinkedQueue;

public class UploadService extends Service {
    public c c;
    public nhb d;
    public volatile TransferNetInfo$NetType b = TransferNetInfo$NetType.UNKNOWN;
    public final SharedPreferences.OnSharedPreferenceChangeListener e = new b();

    public class a extends nhb {
        public a(Object obj) {
            super(obj);
        }

        @Override
        public void a(UploadProgressInfo uploadProgressInfo) {
            super.a(uploadProgressInfo);
            UploadService.this.c.g0(uploadProgressInfo.tag);
            UploadService.this.c.d0();
            if (!uploadProgressInfo.hadMarkError) {
                UploadService.this.c.G();
                uploadProgressInfo.hadMarkError = true;
            }
            UploadService.this.i();
        }

        @Override
        public void b(UploadProgressInfo uploadProgressInfo) {
            super.b(uploadProgressInfo);
            LogUtils.w("visha_cloud_UploadService", "task_finish：" + uploadProgressInfo.toString());
            UploadService.this.c.L(uploadProgressInfo);
            UploadService.this.c.d0();
            UploadService.this.i();
            if (UploadService.this.c.h() <= 0) {
                UploadService.this.stopForeground(true);
            }
        }

        @Override
        public void c(UploadProgressInfo uploadProgressInfo) {
            super.c(uploadProgressInfo);
        }

        @Override
        public void d(UploadProgressInfo uploadProgressInfo) {
            super.d(uploadProgressInfo);
            UploadService.this.c.U(uploadProgressInfo, uploadProgressInfo.currentSize - uploadProgressInfo.lastSize);
        }

        @Override
        public void e(UploadProgressInfo uploadProgressInfo, boolean z) {
            super.e(uploadProgressInfo, z);
            if (z) {
                UploadService.this.c.d0();
            }
        }

        @Override
        public void g(UploadProgressInfo uploadProgressInfo) {
            super.g(uploadProgressInfo);
        }
    }

    public class b implements SharedPreferences.OnSharedPreferenceChangeListener {
        public b() {
        }

        @Override
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if ("allow_mobile_data".equals(str) && pz6.b(Utils.a()) && pz6.c(MainApp.w)) {
                if (MainApp.h) {
                    UploadService.this.c.J();
                } else {
                    UploadService.this.c.f(true);
                }
            }
        }
    }

    public class c extends Binder implements bx4 {
        public final Map b = Collections.synchronizedMap(new LinkedHashMap());
        public final ConcurrentLinkedQueue c = new ConcurrentLinkedQueue();
        public final ConcurrentLinkedQueue d = new ConcurrentLinkedQueue();
        public final Map e = Collections.synchronizedMap(new LinkedHashMap());
        public final Map f = Collections.synchronizedMap(new LinkedHashMap());
        public final Map g = Collections.synchronizedMap(new TreeMap(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return this.b.Q((String) obj, (String) obj2);
            }
        }));
        public int h;
        public int i;
        public long j;
        public long k;
        public rw4 l;
        public NewUploadTask m;

        public c() {
        }

        public void G() {
            this.h++;
        }

        public void H() {
            this.i++;
        }

        public final void I(String str, NewUploadTask newUploadTask, boolean z) {
            this.b.put(str, newUploadTask);
            if (z) {
                this.e.put(str, newUploadTask);
            } else {
                this.f.put(str, newUploadTask);
            }
            this.j += newUploadTask.mProgressInfo.totalSize;
            this.k += newUploadTask.mProgressInfo.currentSize;
            T();
        }

        public void J() {
            this.c.clear();
            K();
            int i = 0;
            for (NewUploadTask newUploadTask : this.b.values()) {
                if (newUploadTask != null && (newUploadTask.mProgressInfo.status != 5 || newUploadTask.mProgressInfo.status == 3)) {
                    if (i < MainApp.e) {
                        newUploadTask.start();
                        this.d.add(newUploadTask.mProgressInfo.tag);
                        i++;
                        h0(newUploadTask.mProgressInfo.tag, newUploadTask, true);
                    } else {
                        newUploadTask.waiting();
                        this.c.add(newUploadTask.mProgressInfo.tag);
                    }
                }
            }
        }

        public final void K() {
            this.d.clear();
            this.g.clear();
            this.m = null;
        }

        public void L(UploadProgressInfo uploadProgressInfo) {
            String str = uploadProgressInfo != null ? uploadProgressInfo.tag : "";
            if (this.l != null && str != null) {
                NewUploadTask newUploadTask = this.m;
                if (str.equals(newUploadTask != null ? newUploadTask.mProgressInfo.tag : "")) {
                    this.l.r(1.0f, uploadProgressInfo == null ? 0L : uploadProgressInfo.speed);
                }
            }
            H();
            b0(str);
        }

        public int M() {
            return this.h;
        }

        public final NewUploadTask N() {
            synchronized (this.g) {
                if (this.g.isEmpty()) {
                    return null;
                }
                try {
                    NewUploadTask newUploadTask = (NewUploadTask) this.g.values().iterator().next();
                    StringBuilder sb = new StringBuilder();
                    sb.append("getFirstDownTask: found first task with tag: ");
                    sb.append(newUploadTask != null ? newUploadTask.mProgressInfo : "null");
                    LogUtils.j("visha_cloud_UploadService", sb.toString());
                    return newUploadTask;
                } catch (Exception e) {
                    LogUtils.m("visha_cloud_UploadService", "getFirstDownTask error: " + e.getMessage());
                    return null;
                }
            }
        }

        public int O() {
            return this.i;
        }

        public NewUploadTask P(String str) {
            return (NewUploadTask) this.b.get(str);
        }

        public final int Q(String str, String str2) {
            NewUploadTask newUploadTask = (NewUploadTask) this.b.get(str);
            NewUploadTask newUploadTask2 = (NewUploadTask) this.b.get(str2);
            return (newUploadTask == null || newUploadTask2 == null) ? str.compareTo(str2) : Long.compare(newUploadTask.mProgressInfo.date, newUploadTask2.mProgressInfo.date);
        }

        public void R() {
            this.c.clear();
            K();
            for (NewUploadTask newUploadTask : this.b.values()) {
                if (newUploadTask != null && newUploadTask.mProgressInfo.status != 5 && newUploadTask.mProgressInfo.status != 3) {
                    newUploadTask.noNetPause();
                }
            }
        }

        public void S() {
            h27.c().e(1127, Integer.valueOf(h()));
        }

        public final void T() {
            rw4 rw4Var = this.l;
            if (rw4Var != null) {
                rw4Var.m(this.j);
            }
        }

        public final void U(UploadProgressInfo uploadProgressInfo, long j) {
            String str;
            this.k += j;
            if (this.l == null || (str = uploadProgressInfo.tag) == null) {
                return;
            }
            NewUploadTask newUploadTask = this.m;
            if (str.equals(newUploadTask != null ? newUploadTask.mProgressInfo.tag : "")) {
                this.l.r(uploadProgressInfo.fraction, uploadProgressInfo.speed);
            }
        }

        @Override
        public void s(NewUploadTask newUploadTask) {
            newUploadTask.pause(false);
            this.d.remove(newUploadTask.mProgressInfo.tag);
            h0(newUploadTask.mProgressInfo.tag, newUploadTask, false);
            this.c.remove(newUploadTask.mProgressInfo.tag);
            d0();
        }

        public final void W(String str, NewUploadTask newUploadTask) {
            I(str, newUploadTask, false);
            S();
        }

        public final void X(String str, NewUploadTask newUploadTask) {
            this.d.remove(str);
            this.d.add(str);
            h0(str, newUploadTask, true);
        }

        public final void Y(String str) {
            this.c.remove(str);
            this.c.add(str);
        }

        public boolean Z() {
            this.c.clear();
            K();
            boolean z = false;
            int i = 0;
            for (NewUploadTask newUploadTask : this.b.values()) {
                if (newUploadTask != null && newUploadTask.mProgressInfo.status != 3 && newUploadTask.mProgressInfo.status != 5) {
                    if (i < MainApp.e) {
                        newUploadTask.start();
                        this.d.add(newUploadTask.mProgressInfo.tag);
                        i++;
                        h0(newUploadTask.mProgressInfo.tag, newUploadTask, true);
                        z = true;
                    } else {
                        newUploadTask.waiting();
                        this.c.add(newUploadTask.mProgressInfo.tag);
                    }
                }
            }
            return z;
        }

        @Override
        public void a(boolean z) {
            UploadService.this.stopForeground(true);
        }

        @Override
        public void u(NewUploadTask newUploadTask) {
            String str = newUploadTask.mProgressInfo.tag;
            Log.i("visha_cloud_UploadService", "removeTask: " + newUploadTask.mProgressInfo);
            if (newUploadTask.mProgressInfo != null && newUploadTask.mProgressInfo.status == 9 && !TextUtils.isEmpty(newUploadTask.getFileId())) {
                CloudUploadManagerImpl.h.a(Utils.a()).D(newUploadTask.getFileId());
            }
            b0(str);
            newUploadTask.remove();
        }

        @Override
        public void b(Notification notification) {
            UploadService.this.startForeground(10000, notification);
        }

        public final void b0(String str) {
            NewUploadTask newUploadTask = (NewUploadTask) this.b.remove(str);
            if (newUploadTask != null) {
                this.j -= newUploadTask.mProgressInfo.totalSize;
                this.k -= newUploadTask.mProgressInfo.currentSize;
                T();
            }
            this.d.remove(str);
            h0(str, newUploadTask, false);
            this.c.remove(str);
            this.f.remove(str);
            this.e.remove(str);
            S();
        }

        public final void c0(String str, NewUploadTask newUploadTask, boolean z) {
            I(str, newUploadTask, z);
            S();
        }

        public void d0() {
            String str;
            NewUploadTask newUploadTaskP;
            do {
                str = (String) this.c.poll();
                if (str == null) {
                    return;
                } else {
                    newUploadTaskP = P(str);
                }
            } while (newUploadTaskP == null);
            newUploadTaskP.start();
            X(str, newUploadTaskP);
        }

        @Override
        public List e() {
            return new ArrayList(this.e.values());
        }

        public final void e0(NewUploadTask newUploadTask) {
            String str;
            NewUploadTask newUploadTaskP;
            newUploadTask.start();
            X(newUploadTask.mProgressInfo.tag, newUploadTask);
            this.c.remove(newUploadTask.mProgressInfo.tag);
            this.e.remove(newUploadTask.mProgressInfo.tag);
            this.f.put(newUploadTask.mProgressInfo.tag, newUploadTask);
            if (this.d.size() <= MainApp.e || (newUploadTaskP = P((str = (String) this.d.poll()))) == null) {
                return;
            }
            newUploadTaskP.waiting();
            Y(str);
        }

        @Override
        public void f(boolean z) {
            this.c.clear();
            K();
            for (NewUploadTask newUploadTask : this.b.values()) {
                if (newUploadTask != null && newUploadTask.mProgressInfo.status != 4 && newUploadTask.mProgressInfo.status != 5) {
                    newUploadTask.pause(z);
                }
            }
        }

        public final void f0(Context context, UploadingItem uploadingItem) {
            NewUploadTask newUploadTaskA = xhb.a(uploadingItem);
            String str = newUploadTaskA.mProgressInfo.tag;
            newUploadTaskA.register(UploadService.this.e());
            W(str, newUploadTaskA);
            int size = this.d.size();
            if (size < MainApp.f) {
                LogUtils.j("visha_cloud_UploadService", "startNewUpload:" + size + " " + MainApp.e);
                newUploadTaskA.start();
                X(str, newUploadTaskA);
                return;
            }
            newUploadTaskA.waiting();
            LogUtils.j("visha_cloud_UploadService", "startNewUpload:" + size + " " + MainApp.e);
            Y(str);
        }

        @Override
        public long g() {
            return this.j;
        }

        public void g0(String str) {
            this.d.remove(str);
            h0(str, null, false);
            this.c.remove(str);
            this.e.put(str, (NewUploadTask) this.b.get(str));
            this.f.remove(str);
        }

        @Override
        public int h() {
            return this.b.size();
        }

        public final void h0(String str, NewUploadTask newUploadTask, boolean z) {
            if (z) {
                if (this.g.isEmpty()) {
                    h27.c().e(1136, Integer.valueOf(z()));
                }
                this.g.remove(str);
                this.g.put(str, newUploadTask);
            } else {
                this.g.remove(str);
                if (this.g.isEmpty()) {
                    this.m = null;
                    h27.c().e(1136, Integer.valueOf(z()));
                    return;
                }
            }
            this.m = N();
            StringBuilder sb = new StringBuilder();
            sb.append("updateDownTaskMap : ");
            NewUploadTask newUploadTask2 = this.m;
            sb.append(newUploadTask2 != null ? newUploadTask2.mProgressInfo : "null");
            LogUtils.j("visha_cloud_UploadService", sb.toString());
        }

        @Override
        public List j() {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                arrayList.add((NewUploadTask) this.b.get((String) it.next()));
            }
            return arrayList;
        }

        @Override
        public void k(String str, rw4 rw4Var) {
            this.l = rw4Var;
        }

        @Override
        public void l() {
            try {
                ArrayList<NewUploadTask> arrayList = new ArrayList();
                synchronized (this.b) {
                    try {
                        for (NewUploadTask newUploadTask : this.b.values()) {
                            if (newUploadTask != null) {
                                arrayList.add(newUploadTask);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                for (NewUploadTask newUploadTask2 : arrayList) {
                    if (newUploadTask2 != null) {
                        u(newUploadTask2);
                    }
                }
                LogUtils.w("visha_cloud_UploadService", "Successfully removed " + arrayList.size() + " cloud tasks");
            } catch (Exception e) {
                LogUtils.m("visha_cloud_UploadService", "Error in removeAllCloudTask: " + e.getMessage());
            }
        }

        @Override
        public void q() {
            this.c.clear();
            K();
            int i = 0;
            for (NewUploadTask newUploadTask : this.b.values()) {
                if (newUploadTask != null && newUploadTask.mProgressInfo.status != 5) {
                    if (i < MainApp.f) {
                        newUploadTask.start();
                        this.d.add(newUploadTask.mProgressInfo.tag);
                        h0(newUploadTask.mProgressInfo.tag, newUploadTask, true);
                        i++;
                    } else {
                        newUploadTask.waiting();
                        this.c.add(newUploadTask.mProgressInfo.tag);
                    }
                    this.e.remove(newUploadTask.mProgressInfo.tag);
                    this.f.put(newUploadTask.mProgressInfo.tag, newUploadTask);
                }
            }
        }

        @Override
        public void r(NewUploadTask newUploadTask, boolean z) {
            if (z) {
                e0(newUploadTask);
                return;
            }
            newUploadTask.waiting();
            this.e.remove(newUploadTask.mProgressInfo.tag);
            this.f.put(newUploadTask.mProgressInfo.tag, newUploadTask);
            Y(newUploadTask.mProgressInfo.tag);
        }

        @Override
        public List t() {
            return new ArrayList(this.b.values());
        }

        @Override
        public List x() {
            return new ArrayList(this.f.values());
        }

        @Override
        public void y(Context context, List list) {
            ToastUtils.s(R.string.visha_added_to_upload_list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                f0(context, (UploadingItem) it.next());
            }
        }

        @Override
        public int z() {
            return this.d.size();
        }
    }

    public class d implements vz6 {
        public d() {
        }

        @Override
        public void onConnect(int i) {
            super.onConnect(i);
        }

        @Override
        public void onDisconnect() {
            LogUtils.w("visha_cloud_UploadService", "onDisconnect");
            TransferNetInfo$NetType transferNetInfo$NetType = UploadService.this.b;
            TransferNetInfo$NetType transferNetInfo$NetType2 = TransferNetInfo$NetType.NO;
            if (transferNetInfo$NetType != transferNetInfo$NetType2) {
                UploadService.this.c.R();
            }
            UploadService.this.b = transferNetInfo$NetType2;
        }

        @Override
        public void onMobile() {
            LogUtils.w("visha_cloud_UploadService", "onMobile:" + MainApp.h);
            TransferNetInfo$NetType transferNetInfo$NetType = UploadService.this.b;
            TransferNetInfo$NetType transferNetInfo$NetType2 = TransferNetInfo$NetType.MOBILE;
            if (transferNetInfo$NetType != transferNetInfo$NetType2) {
                if (!MainApp.h) {
                    UploadService.this.c.f(true);
                } else if (UploadService.this.c.d.isEmpty() && UploadService.this.c.Z()) {
                    ToastUtils.s(R.string.visha_uploading_by_mobile);
                }
            }
            UploadService.this.b = transferNetInfo$NetType2;
        }

        @Override
        public void onWifi() {
            TransferNetInfo$NetType transferNetInfo$NetType = UploadService.this.b;
            TransferNetInfo$NetType transferNetInfo$NetType2 = TransferNetInfo$NetType.WIFI;
            if (transferNetInfo$NetType != transferNetInfo$NetType2) {
                UploadService.this.c.Z();
            }
            UploadService.this.b = transferNetInfo$NetType2;
        }

        @Override
        public void unknowNet() {
            UploadService.this.b = TransferNetInfo$NetType.UNKNOWN;
            LogUtils.w("visha_cloud_UploadService", "unknownNet");
        }
    }

    public final nhb e() {
        if (this.d == null) {
            this.d = new a("visha_cloud_UploadService");
        }
        return this.d;
    }

    public final void f() {
        this.c = new c();
        d dVar = new d();
        w6c.y(Utils.a(), this.e);
        MainApp.d("visha_cloud_UploadService", dVar);
        g();
    }

    public void g() {
        TaskExecutor.c(new Runnable() {
            @Override
            public void run() {
                ArrayList arrayList = new ArrayList();
                Iterator<CloudTaskEntity> it = CloudTransferRecordManager.getInstance().getAllUploadingTask().iterator();
                while (it.hasNext()) {
                    UploadProgressInfo uploadProgressInfoB = xhb.b(it.next());
                    if (uploadProgressInfoB.status != 5) {
                        arrayList.add(uploadProgressInfoB);
                    }
                }
                UploadService.this.h(arrayList);
                LiveEventBus.b().c("download_task_restore", Boolean.TRUE);
            }
        });
    }

    public final List h(List list) {
        if (MainApp.s) {
            Log.w("visha_cloud_UploadService", "haveClearAllCloudTask not recover task!");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            UploadProgressInfo uploadProgressInfo = (UploadProgressInfo) it.next();
            NewUploadTask newUploadTask = (NewUploadTask) this.c.b.get(uploadProgressInfo.tag);
            int i = uploadProgressInfo.status;
            if (i == 8) {
                uploadProgressInfo.status = 8;
            } else if (i == 9) {
                uploadProgressInfo.status = 9;
            } else {
                if (i != 4) {
                    i = 3;
                }
                uploadProgressInfo.status = i;
            }
            if (newUploadTask == null) {
                newUploadTask = new NewUploadTask(uploadProgressInfo);
                newUploadTask.register(e());
                this.c.c0(uploadProgressInfo.tag, newUploadTask, uploadProgressInfo.status == 4);
                if (uploadProgressInfo.status == 8) {
                    newUploadTask.resumeTranscoding();
                }
            }
            arrayList.add(newUploadTask);
        }
        return arrayList;
    }

    public final void i() {
        TransferNotificationHelper.l(jf.c(), 10003, this.c.O(), this.c.M());
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.c;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        f();
        LogUtils.v("visha_cloud_UploadService", "UploadService created");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.i("visha_cloud_UploadService", "onDestroy");
        w6c.H(Utils.a(), this.e);
        MainApp.s("visha_cloud_UploadService");
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.i("visha_cloud_UploadService", "onStartCommand");
        return 1;
    }
}
