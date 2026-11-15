package com.cloud.hisavana.sdk.manager;

import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.VideoMeasureManager;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.ikd;
import defpackage.oyd;
import defpackage.y45;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u0003J\r\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010!R\u0014\u0010$\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010!¨\u0006%"}, d2 = {"Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;", "", MethodDecl.initName, "()V", "Loyd;", "measureImpl", "Lzfb;", GslbInterceptor.HEADER_KEY_GSLB, "(Loyd;)V", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adsDTO", "f", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V", "startMeasure", "stopMeasure", "Landroid/view/View;", "view", "", "d", "(Landroid/view/View;)D", "Landroid/os/HandlerThread;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Landroid/os/HandlerThread;", "handlerThread", "Landroid/os/Handler;", "b", "Landroid/os/Handler;", "handler", "Ljava/util/concurrent/CopyOnWriteArrayList;", "c", "Ljava/util/concurrent/CopyOnWriteArrayList;", "measureList", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "immediateRunnable", "e", "delayRunnable", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VideoMeasureManager {
    public static final VideoMeasureManager INSTANCE = new VideoMeasureManager();

    public static final HandlerThread handlerThread;

    public static final Handler handler;

    public static final CopyOnWriteArrayList measureList;

    public static final Runnable immediateRunnable;

    public static final Runnable delayRunnable;

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"com/cloud/hisavana/sdk/manager/VideoMeasureManager$a", "Ljava/lang/Runnable;", "Lzfb;", "run", "()V", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class a implements Runnable {
        @Override
        public void run() {
            VideoMeasureManager.handler.post(VideoMeasureManager.immediateRunnable);
            VideoMeasureManager.handler.postDelayed(this, 500L);
        }
    }

    static {
        HandlerThread handlerThread2 = new HandlerThread("h_video_thread");
        handlerThread2.start();
        handlerThread = handlerThread2;
        handler = new Handler(handlerThread2.getLooper());
        measureList = new CopyOnWriteArrayList();
        immediateRunnable = new Runnable() {
            @Override
            public final void run() {
                VideoMeasureManager.k();
            }
        };
        delayRunnable = new a();
    }

    public static final void i(AdsDTO adsDTO) {
        oyd oydVar;
        if (adsDTO == null) {
            oydVar = null;
            break;
        }
        Iterator it = measureList.iterator();
        do {
            if (!it.hasNext()) {
                oydVar = null;
                break;
            }
            oydVar = (oyd) it.next();
        } while (!y45.e(oydVar.b(), adsDTO));
        if (oydVar != null) {
            measureList.remove(oydVar);
        }
        ikd ikdVarB = ikd.b();
        StringBuilder sb = new StringBuilder();
        sb.append("current measure list size is ");
        CopyOnWriteArrayList copyOnWriteArrayList = measureList;
        sb.append(copyOnWriteArrayList.size());
        ikdVarB.d("VideoMeasureManager", sb.toString());
        if (copyOnWriteArrayList.size() <= 0) {
            INSTANCE.stopMeasure();
        }
    }

    public static final void j(oyd oydVar) {
        y45.j(oydVar, "$measureImpl");
        CopyOnWriteArrayList copyOnWriteArrayList = measureList;
        if (copyOnWriteArrayList.contains(oydVar)) {
            copyOnWriteArrayList.remove(copyOnWriteArrayList.indexOf(oydVar));
        }
        copyOnWriteArrayList.add(oydVar);
        if (copyOnWriteArrayList.size() > 20) {
            copyOnWriteArrayList.remove(0);
        }
        INSTANCE.startMeasure();
        ikd.b().d("VideoMeasureManager", "------------->measureList size is " + copyOnWriteArrayList.size());
    }

    public static final void k() {
        Iterator it = measureList.iterator();
        while (it.hasNext()) {
            ((oyd) it.next()).d();
        }
    }

    public final double d(View view) {
        if (view == null || view.getWindowVisibility() != 0) {
            return 0.0d;
        }
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect) && view.isShown()) {
            double dHeight = ((double) rect.height()) * ((double) rect.width());
            double height = ((double) view.getHeight()) * ((double) view.getWidth());
            if (height <= 0.0d) {
                return 0.0d;
            }
            return (dHeight * ((double) 100)) / height;
        }
        return 0.0d;
    }

    public final void f(final AdsDTO adsDTO) {
        ikd.b().d("VideoMeasureManager", "-------------> remove video ad measure");
        handler.post(new Runnable() {
            @Override
            public final void run() {
                VideoMeasureManager.i(adsDTO);
            }
        });
    }

    public final void g(final oyd measureImpl) {
        y45.j(measureImpl, "measureImpl");
        ikd.b().d("VideoMeasureManager", "-------------> add video ad measure");
        handler.post(new Runnable() {
            @Override
            public final void run() {
                VideoMeasureManager.j(measureImpl);
            }
        });
    }

    public final void startMeasure() {
        ikd ikdVarB = ikd.b();
        StringBuilder sb = new StringBuilder();
        sb.append("current measure list size is ");
        CopyOnWriteArrayList copyOnWriteArrayList = measureList;
        sb.append(copyOnWriteArrayList.size());
        ikdVarB.d("VideoMeasureManager", sb.toString());
        if (copyOnWriteArrayList.size() > 0) {
            Handler handler2 = handler;
            handler2.post(immediateRunnable);
            handler2.post(delayRunnable);
        }
    }

    public final void stopMeasure() {
        ikd.b().d("VideoMeasureManager", "stop video ad measure");
        Handler handler2 = handler;
        handler2.removeCallbacks(immediateRunnable);
        handler2.removeCallbacks(delayRunnable);
    }
}
