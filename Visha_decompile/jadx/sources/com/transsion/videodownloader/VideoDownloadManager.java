package com.transsion.videodownloader;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.hisavana.common.constant.ComConstants;
import com.transsion.moduleservice.IM3U8MergeService;
import com.transsion.videodownloader.model.Video;
import com.transsion.videodownloader.model.VideoTaskItem;
import com.transsion.videodownloader.utils.WorkerThreadHandler;
import defpackage.aw5;
import defpackage.crb;
import defpackage.cw5;
import defpackage.eq5;
import defpackage.erb;
import defpackage.ex4;
import defpackage.frb;
import defpackage.fx4;
import defpackage.i7c;
import defpackage.jv4;
import defpackage.pv5;
import defpackage.qs6;
import defpackage.qy2;
import defpackage.r0a;
import defpackage.rqb;
import defpackage.rrb;
import defpackage.sqb;
import defpackage.ty2;
import defpackage.tz2;
import defpackage.uh1;
import defpackage.wu4;
import defpackage.xu4;
import defpackage.zu3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public class VideoDownloadManager {
    public static volatile VideoDownloadManager j;
    public rqb e;
    public f f;
    public tz2 a = null;
    public sqb b = null;
    public final Object d = new Object();
    public final List g = new CopyOnWriteArrayList();
    public final Map h = new ConcurrentHashMap();
    public final Map i = new ConcurrentHashMap();
    public final crb c = new crb();

    public class a implements fx4 {
        public final VideoTaskItem a;
        public final Map b;

        public a(VideoTaskItem videoTaskItem, Map map) {
            this.a = videoTaskItem;
            this.b = map;
        }

        @Override
        public void a(VideoTaskItem videoTaskItem, Throwable th) {
            VideoDownloadManager.this.Y(this.a, this.b);
        }

        @Override
        public void b(VideoTaskItem videoTaskItem, pv5 pv5Var) {
            VideoDownloadManager.this.g0(this.a, pv5Var, this.b);
        }
    }

    public class b implements ex4 {
        public final Map a;
        public final VideoTaskItem b;

        public b(Map map, VideoTaskItem videoTaskItem) {
            this.a = map;
            this.b = videoTaskItem;
        }

        @Override
        public void a(Throwable th) {
            eq5.d("VideoDownloadManager", "onInfoFailed error=" + th);
            this.b.setErrorCode(ty2.g(th));
            this.b.setTaskState(6);
            VideoDownloadManager.this.f.obtainMessage(7, this.b).sendToTarget();
        }

        @Override
        public void b(VideoTaskItem videoTaskItem) {
            eq5.d("VideoDownloadManager", "onLiveM3U8Callback cannot be cached.");
            this.b.setErrorCode(5104);
            this.b.setTaskState(6);
            VideoDownloadManager.this.f.obtainMessage(7, this.b).sendToTarget();
        }

        @Override
        public void c(VideoTaskItem videoTaskItem, pv5 pv5Var) {
            this.b.setMimeType(videoTaskItem.getMimeType());
            VideoDownloadManager.this.g0(this.b, pv5Var, this.a);
        }

        @Override
        public void d(VideoTaskItem videoTaskItem) {
            VideoDownloadManager.this.d0(videoTaskItem, this.a);
        }

        @Override
        public void e(Throwable th) {
            eq5.d("VideoDownloadManager", "onM3U8InfoFailed : " + th);
            this.b.setErrorCode(ty2.g(th));
            this.b.setTaskState(6);
            VideoDownloadManager.this.f.obtainMessage(7, this.b).sendToTarget();
        }
    }

    public class c implements xu4 {
        public final VideoTaskItem a;

        public c(VideoTaskItem videoTaskItem) {
            this.a = videoTaskItem;
        }

        @Override
        public void a(long j) {
            if (this.a.getTaskState() != 5) {
                this.a.setTaskState(5);
                this.a.setDownloadSize(j);
                this.a.setIsCompleted(true);
                this.a.setPercent(100.0f);
                if (this.a.isHlsType()) {
                    this.a.setFilePath(this.a.getSaveDir() + File.separator + this.a.getFileHash() + "_local.m3u8");
                    VideoTaskItem videoTaskItem = this.a;
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.a.getFileHash());
                    sb.append("_");
                    sb.append("local.m3u8");
                    videoTaskItem.setFileName(sb.toString());
                } else {
                    this.a.setFilePath(this.a.getSaveDir() + File.separator + this.a.getFileHash() + ".video");
                    VideoTaskItem videoTaskItem2 = this.a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.a.getFileHash());
                    sb2.append(".video");
                    videoTaskItem2.setFileName(sb2.toString());
                }
                VideoDownloadManager.this.f.obtainMessage(6, this.a).sendToTarget();
                VideoDownloadManager.this.f.removeMessages(4);
            }
        }

        @Override
        public void b(Throwable th) {
            if (this.a.isSuccessState()) {
                return;
            }
            this.a.setErrorCode(ty2.g(th));
            this.a.setTaskState(6);
            VideoDownloadManager.this.f.obtainMessage(7, this.a).sendToTarget();
            VideoDownloadManager.this.f.removeMessages(4);
        }

        @Override
        public void c(String str) {
            this.a.setTaskState(2);
            VideoDownloadManager.this.f.obtainMessage(3, this.a).sendToTarget();
        }

        @Override
        public void d(float f, long j, long j2, float f2) {
            if (this.a.isPaused()) {
                return;
            }
            if (this.a.isErrorState() && this.a.isSuccessState()) {
                return;
            }
            this.a.setTaskState(3);
            this.a.setPercent(f);
            this.a.setSpeed(f2);
            this.a.setDownloadSize(j);
            this.a.setTotalSize(j2);
            VideoDownloadManager.this.f.obtainMessage(4, this.a).sendToTarget();
        }

        @Override
        public void e() {
            if (this.a.isErrorState() && this.a.isSuccessState()) {
                return;
            }
            this.a.setTaskState(7);
            this.a.setPaused(true);
            VideoDownloadManager.this.f.obtainMessage(5, this.a).sendToTarget();
            VideoDownloadManager.this.f.removeMessages(2);
            VideoDownloadManager.this.f.removeMessages(4);
            VideoDownloadManager.this.f.removeMessages(3);
            VideoDownloadManager.this.f.removeMessages(1);
        }

        @Override
        public void f(float f, long j, int i, int i2, float f2) {
            if (this.a.isPaused()) {
                return;
            }
            if (this.a.isErrorState() && this.a.isSuccessState()) {
                return;
            }
            this.a.setTaskState(3);
            this.a.setPercent(f);
            this.a.setSpeed(f2);
            this.a.setDownloadSize(j);
            this.a.setCurTs(i);
            this.a.setTotalTs(i2);
            VideoDownloadManager.this.f.obtainMessage(4, this.a).sendToTarget();
        }
    }

    public class d implements IM3U8MergeService.IVideoTransformListener {
        public final VideoTaskItem a;
        public final File b;
        public final jv4 c;
        public final String d;

        public d(VideoTaskItem videoTaskItem, File file, jv4 jv4Var, String str) {
            this.a = videoTaskItem;
            this.b = file;
            this.c = jv4Var;
            this.d = str;
        }

        public final void b(VideoTaskItem videoTaskItem, File file, jv4 jv4Var, String str) {
            videoTaskItem.setFilePath(file.getAbsolutePath());
            jv4Var.a(videoTaskItem);
            VideoDownloadManager.this.a.k(videoTaskItem);
            File parentFile = new File(str).getParentFile();
            eq5.a("VideoDownloadManager", "deleteFolder:" + parentFile.toString());
            zu3.g(parentFile);
        }

        @Override
        public void onTransformFailed(Exception exc) {
            eq5.c("VideoDownloadManager", "VideoMerge onTransformFailed e=" + exc);
            if (this.b.exists()) {
                this.b.delete();
            }
            this.c.a(this.a);
            this.a.setTaskState(10);
            VideoDownloadManager.this.a.i(this.a, exc);
        }

        @Override
        public void onTransformFinished() {
            eq5.c("VideoDownloadManager", "VideoMerge onTransformFinished outputPath=" + this.b);
            this.a.setFileName("m3u8.mp4");
            this.a.setFilePath(this.b.getAbsolutePath());
            this.a.setMimeType(Video.Mime.MIME_TYPE_MP4);
            this.a.setVideoType(3);
            this.a.setTaskState(9);
            final VideoTaskItem videoTaskItem = this.a;
            final File file = this.b;
            final jv4 jv4Var = this.c;
            final String str = this.d;
            WorkerThreadHandler.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.b(videoTaskItem, file, jv4Var, str);
                }
            });
        }

        @Override
        public void onTransformProgress(float f) {
            this.a.setTaskState(11);
            this.a.setPercent(f);
            VideoDownloadManager.this.a.j(this.a, f);
        }
    }

    public static class e {
        public String a;
        public String b;
        public int c = ComConstants.defScheduleTime;
        public int d = ComConstants.defScheduleTime;
        public boolean e = false;
        public int f = 3;
        public boolean g = false;

        public e(Context context) {
            uh1.b(context);
        }

        public rqb a() {
            return new rqb(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
        }

        public e b(String str) {
            this.a = str;
            return this;
        }

        public e c(int i) {
            this.f = i;
            return this;
        }

        public e d(String str) {
            this.b = str;
            return this;
        }

        public e e(boolean z) {
            this.e = z;
            return this;
        }

        public e f(boolean z) {
            this.g = z;
            return this;
        }

        public e g(int i, int i2) {
            this.c = i;
            this.d = i2;
            return this;
        }
    }

    public class f extends Handler {
        public f(Looper looper) {
            super(looper);
        }

        public final void d() {
            WorkerThreadHandler.a(new Runnable() {
                @Override
                public final void run() throws Throwable {
                    this.b.g();
                }
            });
        }

        public final void e(int i, VideoTaskItem videoTaskItem) {
            switch (i) {
                case 0:
                    VideoDownloadManager.this.F(videoTaskItem);
                    break;
                case 1:
                    VideoDownloadManager.this.I(videoTaskItem);
                    break;
                case 2:
                    VideoDownloadManager.this.J(videoTaskItem);
                    break;
                case 3:
                    VideoDownloadManager.this.L(videoTaskItem);
                    break;
                case 4:
                    VideoDownloadManager.this.K(videoTaskItem);
                    break;
                case 5:
                    removeMessages(3);
                    removeMessages(2);
                    removeMessages(4);
                    VideoDownloadManager.this.H(videoTaskItem);
                    break;
                case 6:
                    VideoDownloadManager.this.M(videoTaskItem);
                    break;
                case 7:
                    VideoDownloadManager.this.G(videoTaskItem);
                    break;
            }
        }

        public final void f(VideoTaskItem videoTaskItem) {
            VideoDownloadManager.this.i.put(videoTaskItem.getUrl(), videoTaskItem);
            VideoDownloadManager.this.Q(videoTaskItem);
        }

        public final void g() throws Throwable {
            List<VideoTaskItem> listC = VideoDownloadManager.this.b.c();
            for (VideoTaskItem videoTaskItem : listC) {
                if (VideoDownloadManager.this.e != null && VideoDownloadManager.this.e.f() && videoTaskItem.isHlsType()) {
                    VideoDownloadManager.this.A(videoTaskItem, new jv4() {
                        @Override
                        public final void a(VideoTaskItem videoTaskItem2) {
                            this.a.f(videoTaskItem2);
                        }
                    });
                } else {
                    VideoDownloadManager.this.i.put(videoTaskItem.getUrl(), videoTaskItem);
                }
            }
            Iterator it = VideoDownloadManager.this.g.iterator();
            while (it.hasNext()) {
                ((wu4) it.next()).a(listC);
            }
        }

        public final void h() {
            VideoDownloadManager.this.b.a();
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 100) {
                d();
            } else if (i == 101) {
                WorkerThreadHandler.a(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.h();
                    }
                });
            } else {
                e(i, (VideoTaskItem) message.obj);
            }
        }
    }

    public static VideoDownloadManager E() {
        if (j == null) {
            synchronized (VideoDownloadManager.class) {
                try {
                    if (j == null) {
                        j = new VideoDownloadManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return j;
    }

    public final void A(VideoTaskItem videoTaskItem, jv4 jv4Var) {
        String finalFileName;
        File file;
        if (videoTaskItem == null || TextUtils.isEmpty(videoTaskItem.getFilePath())) {
            jv4Var.a(videoTaskItem);
            return;
        }
        eq5.c("VideoDownloadManager", "VideoMerge doMergeTs taskItem=" + videoTaskItem);
        String filePath = videoTaskItem.getFilePath();
        if (TextUtils.isEmpty(videoTaskItem.getFileHash())) {
            videoTaskItem.setFileHash(frb.c(videoTaskItem.getUrl()));
        }
        if (videoTaskItem.getFinalFileName().endsWith(Video.SUFFIX.SUFFIX_MP4)) {
            finalFileName = videoTaskItem.getFinalFileName();
        } else {
            finalFileName = videoTaskItem.getFinalFileName() + Video.SUFFIX.SUFFIX_MP4;
        }
        File file2 = new File(qy2.c, finalFileName);
        if (file2.exists()) {
            file = new File(qy2.c, zu3.u(videoTaskItem.getFinalFileName()) + '_' + System.currentTimeMillis() + Video.SUFFIX.SUFFIX_MP4);
        } else {
            file = file2;
        }
        IM3U8MergeService service = IM3U8MergeService.ServiceInstance.getService();
        if (service == null) {
            eq5.b("VideoDownloadManager", "get merge service failed");
            return;
        }
        LogUtils.j("VideoDownloadManager", "ts merge inputPath:" + filePath, "outputPath:" + file);
        service.transformM3U8ToMp4(filePath, file.getAbsolutePath(), new d(videoTaskItem, file, jv4Var, filePath));
    }

    public final void B(final VideoTaskItem videoTaskItem) {
        ThreadUtils.i(new ThreadUtils.Task<Object>() {
            @Override
            public Object doInBackground() throws Throwable {
                String str;
                String strSubstring = videoTaskItem.getTsSavePath().substring(videoTaskItem.getTsSavePath().lastIndexOf(47) + 1);
                File file = new File(videoTaskItem.getTsSavePath());
                File file2 = new File(qy2.c, strSubstring);
                LogUtils.j("VideoDownloadManager", "onTsDownloadSuccess: src ts path: " + videoTaskItem.getTsSavePath(), "copyed to: " + file2.getAbsolutePath());
                if (zu3.E(file, file2, null)) {
                    LogUtils.j("VideoDownloadManager", "move ts files successfully: " + file2.getAbsolutePath());
                    if (r0a.g(videoTaskItem.getFinalFileName())) {
                        str = videoTaskItem.getFileHash() + "_" + System.currentTimeMillis() + Video.SUFFIX.SUFFIX_M3U8;
                    } else {
                        int iIndexOf = videoTaskItem.getFinalFileName().indexOf(46);
                        if (iIndexOf > 0) {
                            str = videoTaskItem.getFinalFileName().substring(0, iIndexOf) + "_" + System.currentTimeMillis() + Video.SUFFIX.SUFFIX_M3U8;
                        } else {
                            str = videoTaskItem.getFinalFileName() + "_" + System.currentTimeMillis() + Video.SUFFIX.SUFFIX_M3U8;
                        }
                    }
                    File file3 = new File(qy2.c, str);
                    if (file3.exists()) {
                        file3.delete();
                    }
                    File file4 = new File(videoTaskItem.getFilePath());
                    if (file4.exists()) {
                        try {
                            aw5.a(qy2.c, file2, aw5.j(file4), str);
                            File parentFile = file4.getParentFile();
                            eq5.a("VideoDownloadManager", "delete Folder:" + parentFile.getAbsolutePath());
                            zu3.g(parentFile);
                            videoTaskItem.setFileName("m3u8.mp4");
                            videoTaskItem.setFilePath(file3.getAbsolutePath());
                            videoTaskItem.setMimeType(Video.Mime.MIME_TYPE_MP4);
                            videoTaskItem.setVideoType(3);
                            videoTaskItem.setTaskState(9);
                            VideoDownloadManager.this.a.h(videoTaskItem);
                            VideoDownloadManager.this.Q(videoTaskItem);
                        } catch (Exception e2) {
                            LogUtils.m("VideoDownloadManager", "create local m3u8 failed exception:" + e2.getMessage());
                            videoTaskItem.setErrorCode(5105);
                            videoTaskItem.setTaskState(6);
                            VideoDownloadManager.this.a.b(videoTaskItem);
                            e2.printStackTrace();
                        }
                    } else {
                        LogUtils.j("VideoDownloadManager", "local temporary m3u8 file not found in" + file4.getAbsolutePath());
                        videoTaskItem.setErrorCode(5105);
                        videoTaskItem.setTaskState(6);
                        VideoDownloadManager.this.a.b(videoTaskItem);
                    }
                } else {
                    LogUtils.j("VideoDownloadManager", "move ts files failed,task=" + videoTaskItem);
                    videoTaskItem.setErrorCode(5106);
                    videoTaskItem.setTaskState(6);
                    VideoDownloadManager.this.a.b(videoTaskItem);
                }
                return null;
            }

            @Override
            public void onCancel() {
            }

            @Override
            public void onFail(Throwable th) {
            }

            @Override
            public void onSuccess(Object obj) {
            }
        });
    }

    public void C(wu4 wu4Var) {
        this.g.add(wu4Var);
        this.f.obtainMessage(100).sendToTarget();
    }

    public String D() {
        rqb rqbVar = this.e;
        if (rqbVar != null) {
            return rqbVar.a();
        }
        return null;
    }

    public final void F(VideoTaskItem videoTaskItem) {
        this.a.a(videoTaskItem);
    }

    public final void G(VideoTaskItem videoTaskItem) {
        this.a.b(videoTaskItem);
        b0(videoTaskItem);
    }

    public final void H(VideoTaskItem videoTaskItem) {
        this.a.c(videoTaskItem);
        b0(videoTaskItem);
    }

    public final void I(VideoTaskItem videoTaskItem) {
        this.a.d(videoTaskItem);
    }

    public final void J(VideoTaskItem videoTaskItem) {
        this.a.e(videoTaskItem);
        V(videoTaskItem);
    }

    public final void K(VideoTaskItem videoTaskItem) {
        this.a.f(videoTaskItem);
        W(videoTaskItem);
    }

    public final void L(VideoTaskItem videoTaskItem) {
        this.a.g(videoTaskItem);
    }

    public final void M(VideoTaskItem videoTaskItem) {
        b0(videoTaskItem);
        eq5.c("VideoDownloadManager", "handleOnDownloadSuccess shouldM3U8Merged=" + this.e.f() + ", isHlsType=" + videoTaskItem.isHlsType());
        if (videoTaskItem.isHlsType()) {
            N(videoTaskItem);
        } else {
            this.a.h(videoTaskItem);
            Q(videoTaskItem);
        }
    }

    public final void N(VideoTaskItem videoTaskItem) {
        if (this.e.f()) {
            A(videoTaskItem, new jv4() {
                @Override
                public final void a(VideoTaskItem videoTaskItem2) {
                    this.a.Q(videoTaskItem2);
                }
            });
        } else {
            B(videoTaskItem);
        }
    }

    public void O(rqb rqbVar) {
        this.e = rqbVar;
        frb.m(rqbVar);
        this.b = new sqb(uh1.a());
        HandlerThread handlerThread = new HandlerThread("Video_download_state_thread");
        handlerThread.start();
        this.f = new f(handlerThread.getLooper());
    }

    public final void P(VideoTaskItem videoTaskItem) {
        this.b.b(videoTaskItem);
    }

    public final void R(VideoTaskItem videoTaskItem) {
        this.b.g(videoTaskItem);
    }

    public final void S(VideoTaskItem videoTaskItem) {
        this.b.f(videoTaskItem);
    }

    public final void T(VideoTaskItem videoTaskItem) {
        this.b.g(videoTaskItem);
    }

    public final void Q(final VideoTaskItem videoTaskItem) {
        WorkerThreadHandler.a(new Runnable() {
            @Override
            public final void run() {
                this.b.R(videoTaskItem);
            }
        });
    }

    public void V(final VideoTaskItem videoTaskItem) {
        WorkerThreadHandler.a(new Runnable() {
            @Override
            public final void run() {
                this.b.S(videoTaskItem);
            }
        });
    }

    public final void W(final VideoTaskItem videoTaskItem) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (videoTaskItem.getLastUpdateTime() + 1000 < jCurrentTimeMillis) {
            WorkerThreadHandler.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.T(videoTaskItem);
                }
            });
            videoTaskItem.setLastUpdateTime(jCurrentTimeMillis);
        }
    }

    public final void X(VideoTaskItem videoTaskItem, Map map) {
        LogUtils.j("VideoDownloadManager", "parseExistVideoDownloadInfo:" + videoTaskItem.toString());
        if (videoTaskItem.isHlsType()) {
            rrb.d().f(videoTaskItem, new a(videoTaskItem, map));
        } else {
            d0(videoTaskItem, map);
        }
    }

    public final void Y(VideoTaskItem videoTaskItem, Map map) {
        LogUtils.j("VideoDownloadManager", "parseNetworkVideoInfo:" + videoTaskItem.toString());
        rrb.d().h(videoTaskItem, new b(map, videoTaskItem), map);
    }

    public final void Z(VideoTaskItem videoTaskItem, Map map) {
        videoTaskItem.setFileHash(frb.c(videoTaskItem.getUrl()));
        if (videoTaskItem.getDownloadCreateTime() != 0) {
            X(videoTaskItem, map);
        } else {
            Y(videoTaskItem, map);
        }
    }

    public void a0(VideoTaskItem videoTaskItem) {
        if (videoTaskItem == null || TextUtils.isEmpty(videoTaskItem.getUrl())) {
            return;
        }
        videoTaskItem.setPaused(true);
        synchronized (this.d) {
            this.c.g(videoTaskItem);
        }
        erb erbVar = (erb) this.h.get(videoTaskItem.getUrl());
        if (erbVar != null) {
            erbVar.c();
        }
    }

    public final void b0(VideoTaskItem videoTaskItem) {
        synchronized (this.d) {
            try {
                this.c.g(videoTaskItem);
                eq5.d("VideoDownloadManager", "removeDownloadQueue size=" + this.c.h() + StringUtils.COMMA + this.c.b() + StringUtils.COMMA + this.c.c());
                int iC = this.c.c();
                for (int iB = this.c.b(); iB < this.e.b() && iC > 0 && this.c.h() != 0 && iB != this.c.h(); iB++) {
                    e0(this.c.f(), null);
                    iC--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c0(tz2 tz2Var) {
        this.a = tz2Var;
    }

    public final void d0(VideoTaskItem videoTaskItem, Map map) {
        videoTaskItem.setTaskState(1);
        this.i.put(videoTaskItem.getUrl(), videoTaskItem);
        this.f.obtainMessage(2, (VideoTaskItem) videoTaskItem.clone()).sendToTarget();
        synchronized (this.d) {
            try {
                if (this.c.b() >= this.e.b()) {
                    return;
                }
                erb qs6Var = (erb) this.h.get(videoTaskItem.getUrl());
                if (qs6Var == null) {
                    qs6Var = new qs6(videoTaskItem, map);
                    this.h.put(videoTaskItem.getUrl(), qs6Var);
                }
                f0(qs6Var, videoTaskItem);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e0(VideoTaskItem videoTaskItem, Map map) {
        if (videoTaskItem == null || TextUtils.isEmpty(videoTaskItem.getUrl())) {
            return;
        }
        Z(videoTaskItem, map);
    }

    public final void f0(erb erbVar, VideoTaskItem videoTaskItem) {
        if (erbVar != null) {
            erbVar.d(new c(videoTaskItem));
            erbVar.e();
        }
    }

    public final void g0(VideoTaskItem videoTaskItem, pv5 pv5Var, Map map) {
        LogUtils.j("VideoDownloadManager", "startM3U8VideoDownloadTask: " + videoTaskItem);
        videoTaskItem.setTaskState(1);
        this.i.put(videoTaskItem.getUrl(), videoTaskItem);
        this.f.obtainMessage(2, (VideoTaskItem) videoTaskItem.clone()).sendToTarget();
        synchronized (this.d) {
            try {
                if (this.c.b() >= this.e.b()) {
                    return;
                }
                erb cw5Var = (erb) this.h.get(videoTaskItem.getUrl());
                if (cw5Var == null) {
                    cw5Var = new cw5(videoTaskItem, pv5Var, map);
                    this.h.put(videoTaskItem.getUrl(), cw5Var);
                }
                f0(cw5Var, videoTaskItem);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void y(VideoTaskItem videoTaskItem) {
        this.c.g(videoTaskItem);
    }

    public void z(final VideoTaskItem videoTaskItem, boolean z) {
        String strD = D();
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        a0(videoTaskItem);
        File file = new File(strD + File.separator + frb.c(videoTaskItem.getUrl()));
        StringBuilder sb = new StringBuilder();
        sb.append("VideoDownloadManager_deleteVideoTask:");
        sb.append(file.getAbsolutePath());
        eq5.a("VideoDownloadManager", sb.toString());
        WorkerThreadHandler.a(new Runnable() {
            @Override
            public final void run() {
                this.b.P(videoTaskItem);
            }
        });
        if (z) {
            try {
                i7c.c(file);
            } catch (Exception e2) {
                eq5.d("VideoDownloadManager", "Delete file: " + file + " failed, exception=" + e2.getMessage());
                return;
            }
        }
        this.h.remove(videoTaskItem.getUrl());
        videoTaskItem.reset();
        this.f.obtainMessage(0, videoTaskItem).sendToTarget();
    }
}
