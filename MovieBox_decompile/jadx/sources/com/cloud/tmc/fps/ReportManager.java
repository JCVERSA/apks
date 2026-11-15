package com.cloud.tmc.fps;

import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.cloud.tmc.fps.data.StackTraceData;
import com.cloud.tmc.fps.record.IRecord;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.miniutils.util.EncodeUtils;
import com.google.gson.Gson;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

public class ReportManager implements IRecord.FrameListener {
    private Boolean firstRecord;
    private Boolean isRecording;
    private Handler mHandler;
    private ConcurrentLinkedQueue<StackTraceElement[]> mTracesInOneFrame = new ConcurrentLinkedQueue<>();
    private Runnable stackTraceTask;

    public ReportManager() {
        Boolean bool = Boolean.FALSE;
        this.isRecording = bool;
        this.firstRecord = bool;
        this.stackTraceTask = new Runnable() {
            @Override
            public void run() {
                StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
                if (ReportManager.this.firstRecord.booleanValue()) {
                    ReportManager.this.mTracesInOneFrame.clear();
                }
                ReportManager.this.mTracesInOneFrame.add(stackTrace);
                ReportManager.this.firstRecord = Boolean.FALSE;
                ReportManager.this.mHandler.postDelayed(this, FpsConfig.INSTANCE.getTraceInterval());
            }
        };
        HandlerThread handlerThread = new HandlerThread(getClass().getSimpleName());
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper());
    }

    private void dealPreFrameTraceInfo(long j10, Long l10) {
        if (l10.longValue() <= FpsConfig.INSTANCE.getJankThreshold() || this.mTracesInOneFrame.size() <= 0) {
            return;
        }
        this.mHandler.post(new Runnable() {
            @Override
            public void run() {
                ArrayList arrayList = new ArrayList();
                Iterator it = ReportManager.this.mTracesInOneFrame.iterator();
                while (it.hasNext()) {
                    String strBase64Encode2String = EncodeUtils.base64Encode2String(ReportManager.this.traceToString(2, (StackTraceElement[]) it.next()).getBytes(StandardCharsets.UTF_8));
                    int count = 0;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= arrayList.size()) {
                            i10 = -1;
                            break;
                        } else {
                            if (strBase64Encode2String.equals(((StackTraceData) arrayList.get(i10)).getStackInfo())) {
                                count = ((StackTraceData) arrayList.get(i10)).getCount();
                                break;
                            }
                            i10++;
                        }
                    }
                    if (count == 0 || i10 <= -1) {
                        arrayList.add(new StackTraceData(1, strBase64Encode2String));
                    } else {
                        ((StackTraceData) arrayList.get(i10)).setCount(((StackTraceData) arrayList.get(i10)).getCount() + 1);
                    }
                }
                Bundle bundle = new Bundle();
                bundle.putString("fps_drop_stackInfo", new Gson().toJson(arrayList));
                ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record("", PointAnalyseType.POINT_FPS, "", bundle);
                ReportManager.this.mTracesInOneFrame.clear();
            }
        });
    }

    public String traceToString(int i10, Object[] objArr) {
        if (objArr.length == 0) {
            return "[]";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < objArr.length - i10; i11++) {
            if (i11 == (objArr.length - i10) - 1) {
                return sb2.toString();
            }
            sb2.append(objArr[i11]);
            sb2.append("\n");
        }
        return sb2.toString();
    }

    @Override
    public void onFrame(long j10, long j11) {
        if (this.isRecording.booleanValue()) {
            this.mHandler.removeCallbacks(this.stackTraceTask);
            dealPreFrameTraceInfo(j10, Long.valueOf(j11));
            this.firstRecord = Boolean.TRUE;
            this.mHandler.postDelayed(this.stackTraceTask, FpsConfig.INSTANCE.getTraceInterval());
        }
    }

    @Override
    public void onRecord(boolean z10) {
        this.isRecording = Boolean.valueOf(z10);
    }
}
