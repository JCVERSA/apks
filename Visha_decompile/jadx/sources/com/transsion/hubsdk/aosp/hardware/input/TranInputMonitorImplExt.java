package com.transsion.hubsdk.aosp.hardware.input;

import android.os.Handler;
import android.os.Looper;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import com.transsion.hubsdk.util.TranLog;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class TranInputMonitorImplExt {
    private static final String TAG = "TranInputMonitorImplExt";
    private Handler mHandler;
    private Object mInputMonitor;
    private TranInputReceiver mReceiver;
    private final ITranTouchEventHandler mTouchEventHandler;

    public interface ITranTouchEventHandler {
        void handleInputEvent(InputEvent inputEvent);
    }

    public class TranInputReceiver extends InputEventReceiver {
        public TranInputReceiver(InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
        }

        public void onInputEvent(InputEvent inputEvent) {
            if (TranInputMonitorImplExt.this.mTouchEventHandler != null) {
                TranInputMonitorImplExt.this.mTouchEventHandler.handleInputEvent(inputEvent);
            }
            finishInputEvent(inputEvent, true);
        }
    }

    public TranInputMonitorImplExt(Object obj, ITranTouchEventHandler iTranTouchEventHandler) {
        Handler handler = new Handler(Looper.getMainLooper());
        this.mHandler = handler;
        this.mTouchEventHandler = iTranTouchEventHandler;
        this.mInputMonitor = obj;
        handler.post(new Runnable() {
            @Override
            public void run() {
                synchronized (this) {
                    if (TranInputMonitorImplExt.this.mInputMonitor != null) {
                        Object objInvoke = null;
                        try {
                            Method declaredMethod = TranInputMonitorImplExt.this.mInputMonitor.getClass().getDeclaredMethod("getInputChannel", null);
                            declaredMethod.setAccessible(true);
                            objInvoke = declaredMethod.invoke(TranInputMonitorImplExt.this.mInputMonitor, null);
                        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                            TranLog.d(TranInputMonitorImplExt.TAG, "getInputChannel fail :" + e);
                        }
                        TranInputMonitorImplExt.this.mReceiver = TranInputMonitorImplExt.this.new TranInputReceiver((InputChannel) objInvoke, Looper.getMainLooper());
                    }
                }
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0039 A[Catch: all -> 0x001a, TryCatch #1 {, blocks: (B:3:0x0001, B:6:0x0006, B:12:0x0033, B:13:0x0035, B:15:0x0039, B:16:0x003e, B:11:0x001d), top: B:22:0x0001, inners: #0 }] */
    public void dispose() {
        TranInputReceiver tranInputReceiver;
        synchronized (this) {
            Object obj = this.mInputMonitor;
            if (obj != null) {
                try {
                    Method declaredMethod = obj.getClass().getDeclaredMethod("dispose", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.mInputMonitor, null);
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                    TranLog.d(TAG, "dispose fail :" + e);
                }
                this.mInputMonitor = null;
                tranInputReceiver = this.mReceiver;
                if (tranInputReceiver != null) {
                    tranInputReceiver.dispose();
                    this.mReceiver = null;
                }
            } else {
                tranInputReceiver = this.mReceiver;
                if (tranInputReceiver != null) {
                    tranInputReceiver.dispose();
                    this.mReceiver = null;
                }
            }
            throw th;
        }
    }

    public void pilferPointers() {
        Object obj = this.mInputMonitor;
        if (obj != null) {
            try {
                Method declaredMethod = obj.getClass().getDeclaredMethod("pilferPointers", null);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(this.mInputMonitor, null);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                TranLog.d(TAG, "pilferPointers fail :" + e);
            }
        }
    }
}
