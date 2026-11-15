package com.transsion.sniffer_load;

import android.app.Activity;
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
import com.lzy.okgo.model.Progress;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.cloud.clouddownload.CloudDownloadTask;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.cloudcore.db.CloudTransferRecordManager;
import com.transsion.magicvideo.utils.GpReviewUtils;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.utils.TransferNotificationHelper;
import com.transsion.sniffer_load.okdownload.M3U8DownloadTask;
import com.transsion.sniffer_load.okdownload.NewDownloadTask;
import com.transsion.sniffer_load.okdownload.SniffDownloadTask;
import com.transsion.sniffer_load.sniffservice.SniffHeaderInjector;
import com.transsion.utils.ToastUtils;
import com.transsion.videodownloader.model.VideoTaskItem;
import defpackage.av3;
import defpackage.ba0;
import defpackage.bz0;
import defpackage.dr9;
import defpackage.dz5;
import defpackage.e16;
import defpackage.h27;
import defpackage.hb0;
import defpackage.mf7;
import defpackage.p06;
import defpackage.p13;
import defpackage.pp3;
import defpackage.pz6;
import defpackage.r03;
import defpackage.r13;
import defpackage.rw4;
import defpackage.ry2;
import defpackage.ty2;
import defpackage.uz2;
import defpackage.vz6;
import defpackage.w6c;
import defpackage.wu4;
import defpackage.yv5;
import defpackage.yx2;
import defpackage.zz0;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentLinkedQueue;

public class DownloadService extends Service {
    public b b;
    public c c;
    public final SharedPreferences.OnSharedPreferenceChangeListener d = new a();
    public volatile GlobalDownloadManger.NetType e = GlobalDownloadManger.NetType.UNKNOWN;

    public class a implements SharedPreferences.OnSharedPreferenceChangeListener {
        public a() {
        }

        @Override
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if ("simultaneous_download_mode".equals(str)) {
                DownloadService.this.b.Z(MainApp.e);
                return;
            }
            if ("allow_mobile_data".equals(str) && pz6.b(Utils.a()) && pz6.c(MainApp.w)) {
                if (MainApp.h) {
                    DownloadService.this.b.L();
                } else {
                    DownloadService.this.b.f(true);
                }
            }
        }
    }

    public class b extends Binder implements ry2 {
        public rw4 j;
        public NewDownloadTask k;
        public int l;
        public int m;
        public long n;
        public long o;
        public final Map b = Collections.synchronizedMap(new LinkedHashMap());
        public final ConcurrentLinkedQueue c = new ConcurrentLinkedQueue();
        public final ConcurrentLinkedQueue d = new ConcurrentLinkedQueue();
        public final Map e = new HashMap();
        public final Map f = Collections.synchronizedMap(new LinkedHashMap());
        public final Map g = Collections.synchronizedMap(new LinkedHashMap());
        public final Map h = Collections.synchronizedMap(new LinkedHashMap());
        public final Map i = Collections.synchronizedMap(new TreeMap(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return this.b.T((String) obj, (String) obj2);
            }
        }));
        public final Object p = new Object();

        public b() {
        }

        public int T(String str, String str2) {
            if (str == null || str2 == null) {
                if (Objects.equals(str, str2)) {
                    return 0;
                }
                return str == null ? -1 : 1;
            }
            NewDownloadTask newDownloadTask = (NewDownloadTask) this.b.get(str);
            NewDownloadTask newDownloadTask2 = (NewDownloadTask) this.b.get(str2);
            return (newDownloadTask == null || newDownloadTask2 == null) ? str.compareTo(str2) : Long.compare(newDownloadTask.progress.date, newDownloadTask2.progress.date);
        }

        private void W() {
            rw4 rw4Var = this.j;
            if (rw4Var != null) {
                rw4Var.m(this.n);
            }
        }

        @Override
        public void A(NewDownloadTask newDownloadTask, boolean z) {
            if (z) {
                m0(newDownloadTask);
            } else {
                newDownloadTask.waiting();
                e0(newDownloadTask.progress.url);
            }
        }

        public void I() {
            this.l++;
        }

        public void J() {
            this.m++;
        }

        public final void K(String str, NewDownloadTask newDownloadTask, boolean z) {
            this.b.put(str, newDownloadTask);
            if (z) {
                this.f.put(str, newDownloadTask);
            } else {
                this.g.put(str, newDownloadTask);
            }
            this.n += newDownloadTask.progress.totalSize;
            this.o += (long) (newDownloadTask.progress.fraction * newDownloadTask.progress.totalSize);
            W();
        }

        public void L() {
            this.c.clear();
            M();
            int i = 0;
            for (NewDownloadTask newDownloadTask : this.b.values()) {
                if (newDownloadTask != null && (newDownloadTask.progress.status != 5 || newDownloadTask.progress.status == 3)) {
                    if (i < MainApp.e) {
                        newDownloadTask.start();
                        this.d.add(newDownloadTask.progress.tag);
                        o0(newDownloadTask.progress.tag, newDownloadTask, true);
                        i++;
                    } else {
                        newDownloadTask.waiting();
                        this.c.add(newDownloadTask.progress.tag);
                    }
                }
            }
        }

        public final void M() {
            this.d.clear();
            this.i.clear();
            this.k = null;
        }

        public final void N() {
            this.b.clear();
            this.g.clear();
            this.f.clear();
            this.n = 0L;
            this.o = 0L;
        }

        public int O() {
            return this.l;
        }

        public final NewDownloadTask P() {
            synchronized (this.i) {
                if (this.i.isEmpty()) {
                    return null;
                }
                try {
                    NewDownloadTask newDownloadTask = (NewDownloadTask) this.i.values().iterator().next();
                    StringBuilder sb = new StringBuilder();
                    sb.append("getFirstDownTask: found first task with tag: ");
                    sb.append(newDownloadTask != null ? newDownloadTask.progress : "null");
                    LogUtils.j("visha_DownloadService", sb.toString());
                    return newDownloadTask;
                } catch (Exception e) {
                    LogUtils.m("visha_DownloadService", "getFirstDownTask error: " + e.getMessage());
                    return null;
                }
            }
        }

        public NewDownloadTask Q(String str) {
            return (NewDownloadTask) this.b.get(str);
        }

        public int R() {
            return this.m;
        }

        @Override
        public NewDownloadTask getTask(String str) {
            return (NewDownloadTask) this.b.get(str);
        }

        public void U() {
            this.c.clear();
            M();
            for (NewDownloadTask newDownloadTask : this.b.values()) {
                if (newDownloadTask != null && newDownloadTask.progress.status != 5 && newDownloadTask.progress.status != 3) {
                    newDownloadTask.noNetPause();
                }
            }
        }

        public void V() {
            h27.c().e(1116, Integer.valueOf(h()));
            Iterator it = this.e.values().iterator();
            while (it.hasNext()) {
                ((mf7) it.next()).a(h());
            }
        }

        public void X(Progress progress) {
            String str = progress != null ? progress.tag : "";
            if (this.j != null && str != null) {
                NewDownloadTask newDownloadTask = this.k;
                if (str.equals(newDownloadTask != null ? newDownloadTask.progress.tag : "")) {
                    this.j.r(1.0f, progress == null ? 0L : progress.speed);
                }
            }
            if (g0(progress.tag) == null) {
                g0(progress.sniffId);
            }
        }

        public final void Y(Progress progress, long j) {
            String str;
            if (this.j != null && (str = progress.tag) != null) {
                NewDownloadTask newDownloadTask = this.k;
                if (str.equals(newDownloadTask != null ? newDownloadTask.progress.tag : "")) {
                    this.j.r(progress.fraction, progress.speed);
                }
            }
            this.o += j;
        }

        public final void Z(int i) {
            int size = this.d.size();
            int i2 = 0;
            if (i < size) {
                while (i2 < size - i) {
                    p0((String) this.d.poll());
                    i2++;
                }
            } else if (i > size) {
                while (i2 < i - size) {
                    l0();
                    i2++;
                }
            }
        }

        @Override
        public void a(boolean z) {
            DownloadService.this.stopForeground(true);
        }

        @Override
        public void s(NewDownloadTask newDownloadTask) {
            newDownloadTask.pause(false);
            this.d.remove(newDownloadTask.progress.tag);
            o0(newDownloadTask.progress.tag, newDownloadTask, false);
            this.c.remove(newDownloadTask.progress.tag);
            l0();
        }

        @Override
        public void b(Notification notification) {
            try {
                DownloadService.this.startForeground(10000, notification);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public final void b0(String str, NewDownloadTask newDownloadTask) {
            if (str == null) {
                return;
            }
            this.d.remove(str);
            this.d.add(str);
            o0(str, newDownloadTask, true);
        }

        @Override
        public NewDownloadTask c(String str, boolean z) {
            NewDownloadTask newDownloadTaskQ = Q(str);
            if (newDownloadTaskQ != null) {
                return newDownloadTaskQ;
            }
            try {
                for (NewDownloadTask newDownloadTask : this.b.values()) {
                    if (newDownloadTask != null && TextUtils.equals(newDownloadTask.progress.url, str)) {
                        return newDownloadTask;
                    }
                }
                return null;
            } catch (Exception e) {
                LogUtils.l("visha_DownloadService", e.toString());
                return null;
            }
        }

        public final void c0(String str, NewDownloadTask newDownloadTask) {
            K(str, newDownloadTask, false);
            V();
        }

        @Override
        public boolean d(String str) {
            return this.b.containsKey(str) || r03.t().o(str) != null;
        }

        public final boolean d0(String str) {
            this.c.remove(str);
            return this.c.add(str);
        }

        @Override
        public List e() {
            return new ArrayList(this.f.values());
        }

        public final boolean e0(String str) {
            this.c.remove(str);
            return this.c.add(str);
        }

        @Override
        public void f(boolean z) {
            this.c.clear();
            M();
            for (NewDownloadTask newDownloadTask : this.b.values()) {
                if (newDownloadTask != null && newDownloadTask.progress.status != 4 && newDownloadTask.progress.status != 5) {
                    newDownloadTask.pause(z);
                }
            }
            TransferNotificationHelper.a(MainApp.f(), 0);
        }

        public boolean f0() {
            this.c.clear();
            M();
            boolean z = false;
            int i = 0;
            for (NewDownloadTask newDownloadTask : this.b.values()) {
                if (newDownloadTask != null && newDownloadTask.progress.status != 3 && newDownloadTask.progress.status != 5) {
                    if (i < MainApp.e) {
                        newDownloadTask.start();
                        ConcurrentLinkedQueue concurrentLinkedQueue = this.d;
                        if (concurrentLinkedQueue != null) {
                            concurrentLinkedQueue.add(newDownloadTask.progress.tag);
                        }
                        o0(newDownloadTask.progress.tag, newDownloadTask, true);
                        i++;
                        z = true;
                    } else {
                        newDownloadTask.waiting();
                        ConcurrentLinkedQueue concurrentLinkedQueue2 = this.c;
                        if (concurrentLinkedQueue2 != null) {
                            concurrentLinkedQueue2.add(newDownloadTask.progress.tag);
                        }
                    }
                }
            }
            return z;
        }

        @Override
        public long g() {
            return this.n;
        }

        public NewDownloadTask g0(String str) {
            NewDownloadTask newDownloadTask = (NewDownloadTask) this.b.remove(str);
            if (newDownloadTask != null) {
                this.n -= newDownloadTask.progress.totalSize;
                this.o -= (long) (newDownloadTask.progress.fraction * newDownloadTask.progress.totalSize);
                W();
            }
            this.d.remove(str);
            o0(str, newDownloadTask, false);
            this.c.remove(str);
            this.f.remove(str);
            this.g.remove(str);
            V();
            return newDownloadTask;
        }

        @Override
        public int h() {
            return this.b.size();
        }

        @Override
        public void u(NewDownloadTask newDownloadTask) {
            this.d.remove(newDownloadTask.progress.tag);
            this.c.remove(newDownloadTask.progress.tag);
            g0(newDownloadTask.progress.tag);
            newDownloadTask.remove(true);
        }

        @Override
        public void i(String str) {
            this.e.remove(str);
        }

        public final void i0(String str, NewDownloadTask newDownloadTask, boolean z) {
            K(str, newDownloadTask, z);
            V();
        }

        public final int j0(Context context, bz0 bz0Var, boolean z) {
            if (av3.x(yx2.h + File.separator + bz0Var.c)) {
                if (z) {
                    return -1;
                }
                ToastUtils.u(context, R.string.photo_video_loaded);
                return -1;
            }
            if (Q(bz0.d(bz0Var.b)) != null) {
                if (z) {
                    return 0;
                }
                ToastUtils.s(R.string.bt_file_has_task);
                return 0;
            }
            if (!z) {
                ToastUtils.s(R.string.download_add_to_download_list);
            }
            NewDownloadTask task = GlobalDownloadManger.B().d(bz0Var.b) ? GlobalDownloadManger.B().getTask(bz0Var.b) : r13.b(bz0Var);
            String str = task.progress.tag;
            task.register(DownloadService.this.new d());
            c0(str, task);
            int size = this.d.size();
            if (size < MainApp.e) {
                LogUtils.j("visha_DownloadService", "startDownloadForCloud:" + size + " " + MainApp.e);
                task.start();
                b0(str, task);
                return 1;
            }
            task.waiting();
            LogUtils.j("visha_DownloadService", "startDownloadForCloud:" + size + " " + MainApp.e);
            d0(str);
            return 1;
        }

        @Override
        public void k(String str, rw4 rw4Var) {
            this.j = rw4Var;
        }

        public final boolean k0(Context context, com.transsion.sniffer_load.okdownload.a aVar) {
            SniffHeaderInjector.inject(aVar, aVar.k, aVar.b);
            int iA = aVar.a();
            if (iA == 0) {
                hb0.sniffDownloadResolution = aVar.f();
                hb0.sniffDlgType = aVar.e();
            }
            e16.d(aVar.b, aVar.d, aVar.j ? 1 : 0, aVar.f, iA);
            if (av3.x(yx2.h + File.separator + aVar.d)) {
                ToastUtils.u(context, R.string.photo_video_loaded);
                return false;
            }
            if (Q(aVar.b) != null || Q(aVar.h) != null || Q(aVar.t) != null) {
                ToastUtils.s(R.string.bt_file_has_task);
                return false;
            }
            ToastUtils.s(R.string.download_add_to_download_list);
            NewDownloadTask task = GlobalDownloadManger.B().d(aVar.g()) ? GlobalDownloadManger.B().getTask(aVar.g()) : r13.j(aVar);
            String str = task.progress.tag;
            task.register(DownloadService.this.new d());
            c0(str, task);
            int size = this.d.size();
            if (size < MainApp.e) {
                LogUtils.j("visha_DownloadService", "startDownload1:" + size + " " + MainApp.e);
                task.start();
                b0(str, task);
                return true;
            }
            task.waiting();
            LogUtils.j("visha_DownloadService", "startDownload2:" + size + " " + MainApp.e);
            d0(str);
            return true;
        }

        @Override
        public void l() {
            try {
                ArrayList<NewDownloadTask> arrayList = new ArrayList();
                synchronized (this.b) {
                    try {
                        for (NewDownloadTask newDownloadTask : this.b.values()) {
                            if (newDownloadTask != null && newDownloadTask.progress != null && newDownloadTask.progress.downloadSource == 1) {
                                arrayList.add(newDownloadTask);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                for (NewDownloadTask newDownloadTask2 : arrayList) {
                    if (newDownloadTask2 != null) {
                        u(newDownloadTask2);
                    }
                }
                LogUtils.w("visha_DownloadService", "Successfully removed " + arrayList.size() + " cloud tasks");
            } catch (Exception e) {
                LogUtils.m("visha_DownloadService", "Error in removeAllCloudTask: " + e.getMessage());
            }
        }

        public void l0() {
            String str;
            NewDownloadTask newDownloadTaskQ;
            do {
                str = (String) this.c.poll();
                if (str == null) {
                    return;
                } else {
                    newDownloadTaskQ = Q(str);
                }
            } while (newDownloadTaskQ == null);
            newDownloadTaskQ.start();
            b0(str, newDownloadTaskQ);
        }

        @Override
        public void m(String str) {
            Iterator it = this.b.values().iterator();
            while (it.hasNext()) {
                ((NewDownloadTask) it.next()).unRegister(str);
            }
        }

        public void m0(NewDownloadTask newDownloadTask) {
            String str;
            NewDownloadTask newDownloadTaskQ;
            newDownloadTask.start();
            b0(newDownloadTask.progress.tag, newDownloadTask);
            this.c.remove(newDownloadTask.progress.tag);
            this.f.remove(newDownloadTask.progress.tag);
            this.g.put(newDownloadTask.progress.tag, newDownloadTask);
            if (this.d.size() <= MainApp.e || (newDownloadTaskQ = Q((str = (String) this.d.poll()))) == null) {
                return;
            }
            newDownloadTaskQ.waiting();
            e0(str);
        }

        @Override
        public boolean n(Context context, List list) {
            Iterator it = list.iterator();
            boolean z = false;
            boolean z2 = false;
            while (it.hasNext()) {
                int iJ0 = j0(context, (bz0) it.next(), true);
                if (iJ0 == 1 && !z) {
                    ToastUtils.s(R.string.download_add_to_download_list);
                    z = true;
                } else if (iJ0 == 0) {
                    z2 = true;
                }
            }
            if (list.isEmpty() || z) {
                return true;
            }
            ToastUtils.u(context, z2 ? R.string.bt_file_has_task : R.string.photo_video_loaded);
            return false;
        }

        public void n0(String str) {
            this.d.remove(str);
            o0(str, null, false);
            this.c.remove(str);
            this.f.put(str, (NewDownloadTask) this.b.get(str));
            this.g.remove(str);
        }

        @Override
        public int o() {
            return this.d.size();
        }

        public final void o0(String str, NewDownloadTask newDownloadTask, boolean z) {
            if (z) {
                if (this.i.isEmpty()) {
                    h27.c().e(1136, Integer.valueOf(o()));
                }
                this.i.remove(str);
                this.i.put(str, newDownloadTask);
            } else {
                this.i.remove(str);
                if (this.i.isEmpty()) {
                    this.k = null;
                    h27.c().e(1136, Integer.valueOf(o()));
                    return;
                }
            }
            this.k = P();
            StringBuilder sb = new StringBuilder();
            sb.append("updateDownTaskMap : ");
            NewDownloadTask newDownloadTask2 = this.k;
            sb.append(newDownloadTask2 != null ? newDownloadTask2.progress : "null");
            LogUtils.j("visha_DownloadService", sb.toString());
        }

        @Override
        public boolean p(Context context, ba0 ba0Var) {
            if (ba0Var == null) {
                return false;
            }
            if (context instanceof Activity) {
                GpReviewUtils.d((Activity) context);
            }
            if (ba0Var.a() == 0 || ba0Var.a() == 2 || ba0Var.a() == 3) {
                return k0(context, (com.transsion.sniffer_load.okdownload.a) ba0Var);
            }
            return ba0Var.a() == 1 && j0(context, (bz0) ba0Var, false) == 1;
        }

        public void p0(String str) {
            NewDownloadTask newDownloadTaskQ = Q(str);
            if (newDownloadTaskQ != null) {
                newDownloadTaskQ.waiting();
                e0(newDownloadTaskQ.progress.tag);
            }
            this.d.remove(str);
            o0(str, null, false);
        }

        @Override
        public void q() {
            this.c.clear();
            M();
            int i = 0;
            for (NewDownloadTask newDownloadTask : this.b.values()) {
                if (newDownloadTask != null) {
                    if (newDownloadTask.progress.status != 5) {
                        if (i < MainApp.e) {
                            newDownloadTask.start();
                            this.d.add(newDownloadTask.progress.tag);
                            o0(newDownloadTask.progress.tag, newDownloadTask, true);
                            i++;
                        } else {
                            newDownloadTask.waiting();
                            this.c.add(newDownloadTask.progress.tag);
                        }
                    }
                    this.f.remove(newDownloadTask.progress.tag);
                    this.g.put(newDownloadTask.progress.tag, newDownloadTask);
                }
            }
        }

        @Override
        public List t() {
            return new ArrayList(this.b.values());
        }

        @Override
        public void v(String str, mf7 mf7Var) {
            this.e.put(str, mf7Var);
        }

        @Override
        public GlobalDownloadManger.NetType w() {
            return DownloadService.this.e;
        }

        @Override
        public List x() {
            return new ArrayList(this.g.values());
        }
    }

    public class c implements vz6 {
        public c() {
        }

        @Override
        public void onConnect(int i) {
            super.onConnect(i);
        }

        @Override
        public void onDisconnect() {
            LogUtils.w("visha_DownloadService", "onDisconnect");
            GlobalDownloadManger.NetType netType = DownloadService.this.e;
            GlobalDownloadManger.NetType netType2 = GlobalDownloadManger.NetType.NO;
            if (netType != netType2) {
                DownloadService.this.b.U();
            }
            DownloadService.this.e = netType2;
        }

        @Override
        public void onMobile() {
            LogUtils.w("visha_DownloadService", "onMobile:" + MainApp.h);
            GlobalDownloadManger.NetType netType = DownloadService.this.e;
            GlobalDownloadManger.NetType netType2 = GlobalDownloadManger.NetType.MOBILE;
            if (netType != netType2) {
                if (!MainApp.h) {
                    DownloadService.this.b.f(true);
                } else if (DownloadService.this.b.d.isEmpty() && DownloadService.this.b.f0()) {
                    ToastUtils.s(R.string.visha_downloading_by_mobile);
                }
            }
            DownloadService.this.e = netType2;
        }

        @Override
        public void onWifi() {
            GlobalDownloadManger.NetType netType = DownloadService.this.e;
            GlobalDownloadManger.NetType netType2 = GlobalDownloadManger.NetType.WIFI;
            if (netType != netType2) {
                DownloadService.this.b.f0();
            }
            DownloadService.this.e = netType2;
        }

        @Override
        public void unknowNet() {
            DownloadService.this.e = GlobalDownloadManger.NetType.UNKNOWN;
            LogUtils.w("visha_DownloadService", "unknowNet");
        }
    }

    public class d extends uz2 {
        public int b;

        public d() {
            super("StatusDownloadListener");
            this.b = 2;
        }

        @Override
        public void a(Progress progress) {
            DownloadService.this.b.Y(progress, progress.currentSize - progress.lastSize);
        }

        @Override
        public void c(Progress progress) {
            NewDownloadTask newDownloadTask;
            String strD;
            if (DownloadService.this.b.d.contains(progress.tag)) {
                if (DownloadService.j(progress)) {
                    LogUtils.w("visha_DownloadService", "skip global retry after breakpoint recovery: " + progress.url);
                } else {
                    int i = this.b - 1;
                    this.b = i;
                    if (i >= 0 && !M3U8DownloadTask.isMergeFailed(progress) && (newDownloadTask = (NewDownloadTask) DownloadService.this.b.b.get(progress.tag)) != null) {
                        LogUtils.w("visha_DownloadService", "download error, retry:" + progress.url);
                        newDownloadTask.start();
                        return;
                    }
                }
                Throwable th = progress.exception;
                if (th != null) {
                    strD = progress.downloadSource == 0 ? ty2.a(th) : th.getMessage();
                } else {
                    strD = progress.downloadSource == 0 ? ty2.d(-1) : "";
                }
                p06.o0("dl_manager_downloading_error", "error_code", strD);
                LogUtils.w("visha_DownloadService", "a task is onError " + progress.exception);
                if (progress.downloadSource == 0) {
                    if (progress.isClient) {
                        p06.W("dl_manager_downloading_cfail", strD, progress.url);
                    } else {
                        p06.W("dl_manager_downloading_sfail", strD, progress.url);
                    }
                }
                DownloadService.this.b.n0(progress.tag);
                DownloadService.this.b.l0();
                if (!progress.hasErrorNotify) {
                    DownloadService.this.b.I();
                    progress.hasErrorNotify = true;
                }
                DownloadService.this.k();
            }
        }

        @Override
        public void d(Progress progress) {
            LogUtils.w("visha_DownloadService", "task_start:" + progress.toString());
        }

        @Override
        public void e(Progress progress, boolean z) {
            LogUtils.w("visha_DownloadService", "task_removed:" + progress.status + " needStartNext:" + z);
            if (z) {
                DownloadService.this.b.l0();
            }
        }

        @Override
        public void b(File file, Progress progress) {
            LogUtils.w("visha_DownloadService", "task_finish：" + progress.toString());
            DownloadService.this.b.X(progress);
            DownloadService.this.b.l0();
            r03.t().n(progress.tag);
            DownloadService.this.b.J();
            DownloadService.this.k();
            if (DownloadService.this.b.o() <= 0) {
                DownloadService.this.stopForeground(true);
            }
        }
    }

    public static boolean j(Progress progress) {
        Throwable th;
        if (!pp3.p() || !Boolean.TRUE.equals(progress.extra3) || (th = progress.exception) == null || th.getMessage() == null || TextUtils.isEmpty(th.getMessage())) {
            return false;
        }
        String lowerCase = th.getMessage().toLowerCase();
        return lowerCase.contains("breakpoint") || lowerCase.contains("http response code is 416");
    }

    public final void f() {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences("download_migration", 0);
            if (sharedPreferences.getBoolean("migration_completed", false)) {
                Log.d("visha_DownloadService", "Download records migration already completed, skipping");
            } else {
                Log.i("visha_DownloadService", "Starting download records migration check...");
                p13.c();
                p13.f();
                sharedPreferences.edit().putBoolean("migration_completed", true).apply();
                Log.i("visha_DownloadService", "Download records migration completed");
            }
        } catch (Exception e) {
            Log.e("visha_DownloadService", "Error during download records migration: " + e.getMessage());
        }
    }

    public final void g() {
        this.b = new b();
        yv5.c().g(M3U8DownloadTask.sM3U8DownloadListener);
        c cVar = new c();
        this.c = cVar;
        MainApp.d("visha_DownloadService", cVar);
        TaskExecutor.c(new TaskExecutor.Task<Void>() {
            @Override
            public Void onBackground() {
                w6c.y(Utils.a(), DownloadService.this.d);
                return null;
            }
        });
        h();
    }

    public void h() {
        TaskExecutor.c(new Runnable() {
            @Override
            public void run() {
                DownloadService.this.f();
                yv5.c().j(Utils.a());
                List<Progress> listR = r03.t().r();
                ArrayList arrayList = new ArrayList();
                for (Progress progress : listR) {
                    if (progress.request == null) {
                        Log.i("visha_DownloadService", "there has a progress request is null!" + progress.tag);
                    } else {
                        if (dr9.a.e(progress.source)) {
                            progress.downloadSource = 0;
                        } else {
                            progress.downloadSource = progress.source;
                        }
                        arrayList.add(progress);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                if (zz0.d()) {
                    if (MainApp.s) {
                        Log.w("visha_DownloadService", "haveClearAllCloudTask not restoreCloudTaskFromDB!");
                    } else {
                        Iterator<CloudTaskEntity> it = CloudTransferRecordManager.getInstance().getAllDownloadingTask().iterator();
                        while (it.hasNext()) {
                            Progress progressK = r13.k(it.next());
                            if (progressK.status != 5) {
                                arrayList2.add(progressK);
                            }
                        }
                    }
                }
                final List listI = DownloadService.this.i(arrayList, arrayList2);
                yv5.c().b(new wu4() {
                    @Override
                    public void a(List list) {
                        ArrayList<NewDownloadTask> arrayList3 = new ArrayList(listI);
                        ArrayList arrayList4 = new ArrayList();
                        if (list != null) {
                            Iterator it2 = list.iterator();
                            while (it2.hasNext()) {
                                VideoTaskItem videoTaskItem = (VideoTaskItem) it2.next();
                                if (videoTaskItem.getTaskState() != 9) {
                                    arrayList4.add(new M3U8DownloadTask(r13.a(videoTaskItem), videoTaskItem));
                                }
                            }
                        }
                        Comparator<NewDownloadTask> comparator = new Comparator<NewDownloadTask>() {
                            @Override
                            public int compare(NewDownloadTask newDownloadTask, NewDownloadTask newDownloadTask2) {
                                return newDownloadTask.progress.date > newDownloadTask2.progress.date ? 1 : 0;
                            }
                        };
                        DownloadService.this.b.N();
                        arrayList3.addAll(arrayList4);
                        Collections.sort(arrayList3, comparator);
                        int[] iArr = new int[7];
                        for (NewDownloadTask newDownloadTask : arrayList3) {
                            newDownloadTask.register(DownloadService.this.new d());
                            DownloadService.this.b.i0(newDownloadTask.progress.tag, newDownloadTask, newDownloadTask.progress.status == 4);
                            int i = newDownloadTask.progress.status % 7;
                            iArr[i] = iArr[i] + 1;
                        }
                        DownloadService.this.b.V();
                        dz5.d(iArr);
                    }
                });
            }
        });
    }

    public List i(List list, List list2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Progress progress = (Progress) it.next();
            NewDownloadTask sniffDownloadTask = (NewDownloadTask) this.b.b.get(progress.tag);
            int i = progress.status;
            progress.status = i == 4 ? i : 3;
            if (sniffDownloadTask == null) {
                sniffDownloadTask = new SniffDownloadTask(progress);
                sniffDownloadTask.register(new d());
                this.b.i0(progress.tag, sniffDownloadTask, progress.status == 4);
            }
            arrayList.add(sniffDownloadTask);
        }
        if (MainApp.s) {
            Log.w("visha_DownloadService", "haveClearAllCloudTask not restore task!");
        } else {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                Progress progress2 = (Progress) it2.next();
                NewDownloadTask cloudDownloadTask = (NewDownloadTask) this.b.b.get(progress2.tag);
                int i2 = progress2.status;
                if (i2 != 4) {
                    i2 = 3;
                }
                progress2.status = i2;
                if (progress2.cloudFileId == null) {
                    Log.e("visha_DownloadService", "restore cloudFileId is null:" + progress2);
                } else {
                    if (cloudDownloadTask == null) {
                        cloudDownloadTask = new CloudDownloadTask(progress2);
                        cloudDownloadTask.register(new d());
                        this.b.i0(progress2.tag, cloudDownloadTask, progress2.status == 4);
                    }
                    arrayList.add(cloudDownloadTask);
                }
            }
        }
        return arrayList;
    }

    public final void k() {
        TransferNotificationHelper.c(MainApp.f(), 10001, this.b.R(), this.b.O());
    }

    @Override
    public IBinder onBind(Intent intent) {
        Log.i("visha_DownloadService", "onBind");
        return this.b;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.i("visha_DownloadService", "onCreate");
        g();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.i("visha_DownloadService", "onDestroy");
        w6c.H(Utils.a(), this.d);
        MainApp.s("visha_DownloadService");
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.i("visha_DownloadService", "onStartCommand");
        return 1;
    }
}
