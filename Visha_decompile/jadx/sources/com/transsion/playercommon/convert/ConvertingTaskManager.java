package com.transsion.playercommon.convert;

import android.database.ContentObserver;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.util.Log;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.core.log.LogUtils;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import defpackage.e74;
import defpackage.h27;
import defpackage.jf;
import defpackage.ji1;
import defpackage.tpb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;

public class ConvertingTaskManager {
    public static volatile ConvertingTaskManager l;
    public long h;
    public boolean i;
    public final ConcurrentLinkedQueue c = new ConcurrentLinkedQueue();
    public final ConcurrentLinkedQueue d = new ConcurrentLinkedQueue();
    public final ArrayList e = new ArrayList();
    public final Map f = new HashMap();
    public final Map g = new HashMap();
    public final Handler j = new Handler(ThreadUtils.o().getLooper(), new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.w(message);
        }
    });
    public final ContentObserver k = new a(null);
    public final ji1 a = new ji1();
    public final Map b = Collections.synchronizedMap(new LinkedHashMap());

    public class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }

        @Override
        public void onChange(boolean z) {
            ConvertingTaskManager.this.A();
        }
    }

    public interface b {
        void q(int i);
    }

    public interface c {
        void a(int i);
    }

    public static ArrayList C(boolean z, boolean z2) {
        return new ArrayList(tpb.j0().Z(z, !z2 ? new e74() {
            @Override
            public final Object invoke(Object obj) {
                return ConvertingTaskManager.x((Integer) obj);
            }
        } : null));
    }

    public static ConvertingTaskManager j() {
        if (l == null) {
            synchronized (ConvertingTaskManager.class) {
                l = new ConvertingTaskManager();
            }
        }
        return l;
    }

    public static void u(List list) {
        tpb.j0().l(list);
    }

    public static void v(MediaItem mediaItem) {
        tpb.j0().c0(mediaItem);
    }

    public static Boolean x(Integer num) {
        j().I(num.intValue());
        return Boolean.TRUE;
    }

    public void A() {
        this.j.removeMessages(1);
        this.j.sendEmptyMessageDelayed(1, 0L);
    }

    public void B(MediaItem mediaItem) {
        TranConvertingTask tranConvertingTask = new TranConvertingTask(mediaItem);
        this.b.put(Integer.valueOf(mediaItem.id), tranConvertingTask);
        if (ConvertingTask.statusNotFailed(mediaItem.isConvertedFailed)) {
            this.c.add(Integer.valueOf(tranConvertingTask.mediaItem.id));
            tranConvertingTask.start();
        } else {
            mediaItem.clearDefaultCover();
            this.d.add(Integer.valueOf(tranConvertingTask.mediaItem.id));
        }
        y();
    }

    public void D() {
        if (this.i) {
            return;
        }
        jf.c().getContentResolver().registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, this.k);
        this.i = true;
    }

    public void E(String str) {
        this.g.remove(str);
    }

    public final ConvertingTask F(Integer num) {
        ConvertingTask convertingTask = (ConvertingTask) this.b.remove(num);
        if (convertingTask != null) {
            convertingTask.remove();
            MediaItem mediaItem = convertingTask.mediaItem;
            if (mediaItem != null) {
                mediaItem.clearDefaultCover();
            }
        }
        y();
        return convertingTask;
    }

    public void G(String str) {
        this.f.remove(str);
    }

    public void H(ConvertingTask convertingTask) {
        F(Integer.valueOf(convertingTask.mediaItem.id));
        int i = convertingTask.taskStatus;
        if (i == 0) {
            this.c.remove(convertingTask);
            return;
        }
        if (i == 2 || i == 3) {
            convertingTask.remove();
        } else if (i == 1 || i == -2) {
            this.d.remove(Integer.valueOf(convertingTask.mediaItem.id));
        }
    }

    public void I(int i) {
        ConvertingTask convertingTaskK = k(i);
        if (convertingTaskK != null) {
            H(convertingTaskK);
        }
    }

    public void J(ConvertingTask convertingTask) {
        this.c.remove(convertingTask);
    }

    public void K(String str, b bVar) {
        this.g.put(str, bVar);
    }

    public void L(String str, c cVar) {
        this.f.put(str, cVar);
    }

    public void M(ArrayList arrayList) {
        this.e.clear();
        this.e.addAll(arrayList);
        z();
    }

    public void N() {
        if (jf.k(this.h, 10000L)) {
            return;
        }
        this.h = System.currentTimeMillis();
        h27.c().e(1112, new Object[0]);
    }

    public void O() {
        if (this.i) {
            jf.c().getContentResolver().unregisterContentObserver(this.k);
            this.i = false;
        }
    }

    public final void e() {
        TaskExecutor.c(new Runnable() {
            @Override
            public void run() {
                LogUtils.d("ConvertingTaskManager", "checkConvertingList run");
                ConvertingTaskManager.C(true, false);
            }
        });
    }

    public void f() {
        if (this.b == null) {
            return;
        }
        Iterator it = new ArrayList(this.b.values()).iterator();
        while (it.hasNext()) {
            ((ConvertingTask) it.next()).unregister();
        }
    }

    public void g() {
        for (MediaItem mediaItem : this.e) {
            if (mediaItem != null) {
                mediaItem.clearDefaultCover();
            }
        }
        this.e.clear();
    }

    public boolean h() {
        return this.b.size() >= 10;
    }

    public int i() {
        return this.d.size();
    }

    public ConvertingTask k(int i) {
        return (ConvertingTask) j().l().get(Integer.valueOf(i));
    }

    public Map l() {
        return this.b;
    }

    public ji1 m() {
        return this.a;
    }

    public boolean n(int i) {
        return ((ConvertingTask) this.b.get(Integer.valueOf(i))) != null;
    }

    public boolean o(MediaItem mediaItem) {
        return ((ConvertingTask) this.b.get(Integer.valueOf(mediaItem.id))) != null;
    }

    public boolean p(MediaItem mediaItem) {
        return this.e.contains(mediaItem);
    }

    public boolean q() {
        return this.e.size() >= 10;
    }

    public void r() {
        try {
            Iterator it = C(true, true).iterator();
            while (it.hasNext()) {
                j().B((MediaItem) it.next());
            }
        } catch (Exception e) {
            Log.e("ConvertingTaskManager", "queryAllConvertingVideos failed:" + e.getMessage());
        }
    }

    public void s(final MediaItem mediaItem) {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                ConvertingTaskManager.v(mediaItem);
            }
        });
    }

    public void t(final List list) {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                ConvertingTaskManager.u(list);
            }
        });
    }

    public final boolean w(Message message) {
        int i = message.what;
        if (i == 1) {
            e();
        } else if (i == 100) {
            O();
        }
        return true;
    }

    public void y() {
        Iterator it = this.f.values().iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(this.b.size());
        }
        this.j.removeMessages(100);
        if (this.b.size() == 0) {
            this.j.sendEmptyMessageDelayed(100, 180000L);
        } else {
            D();
        }
    }

    public void z() {
        Iterator it = this.g.values().iterator();
        while (it.hasNext()) {
            ((b) it.next()).q(this.e.size());
        }
    }
}
