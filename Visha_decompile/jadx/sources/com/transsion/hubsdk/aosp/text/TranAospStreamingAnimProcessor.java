package com.transsion.hubsdk.aosp.text;

import android.view.View;
import android.view.inputmethod.InputConnection;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.text.ITranStreamingAnimProcessorAdapter;
import java.lang.reflect.Method;

public class TranAospStreamingAnimProcessor implements ITranStreamingAnimProcessorAdapter {
    private static final Class<?> CLASS;
    private static final Method METHOD_handleStreamingOutput;
    private static final Method METHOD_obtain;
    private static final Method METHOD_setAnimCallback;
    private static final Method METHOD_setEndAnimParams;
    private static final Method METHOD_setInputConnection;
    private static final Method METHOD_setStartAnimParams;
    private static final Method METHOD_setUpdateAnimParams;
    private final Object mInstance = TranDoorMan.invokeMethod(METHOD_obtain, null, new Object[0]);

    static {
        Class<?> cls = TranDoorMan.getClass("com.transsion.text.StreamingAnimProcessor");
        CLASS = cls;
        METHOD_obtain = TranDoorMan.getMethod(cls, "obtain", new Class[0]);
        Class cls2 = Integer.TYPE;
        METHOD_handleStreamingOutput = TranDoorMan.getMethod(cls, "handleStreamingOutput", View.class, cls2, CharSequence.class);
        METHOD_setInputConnection = TranDoorMan.getMethod(cls, "setInputConnection", InputConnection.class);
        METHOD_setAnimCallback = TranDoorMan.getMethod(cls, "setAnimCallback", Runnable.class, Runnable.class, Runnable.class);
        Class cls3 = Long.TYPE;
        METHOD_setStartAnimParams = TranDoorMan.getMethod(cls, "setStartAnimParams", cls3, cls3, cls2, cls2);
        Class cls4 = Float.TYPE;
        METHOD_setUpdateAnimParams = TranDoorMan.getMethod(cls, "setUpdateAnimParams", cls2, cls2, cls3, cls3, cls2, cls4, cls4, cls4);
        METHOD_setEndAnimParams = TranDoorMan.getMethod(cls, "setEndAnimParams", cls2);
    }

    @Override
    public void handleStreamingOutput(View view, int i, CharSequence charSequence) {
        TranDoorMan.invokeMethod(METHOD_handleStreamingOutput, this.mInstance, view, Integer.valueOf(i), charSequence);
    }

    @Override
    public void setAnimCallback(Runnable runnable, Runnable runnable2, Runnable runnable3) {
        TranDoorMan.invokeMethod(METHOD_setAnimCallback, this.mInstance, runnable, runnable2, runnable3);
    }

    @Override
    public void setEndAnimParams(int i) {
        TranDoorMan.invokeMethod(METHOD_setEndAnimParams, this.mInstance, Integer.valueOf(i));
    }

    @Override
    public void setInputConnection(InputConnection inputConnection) {
        TranDoorMan.invokeMethod(METHOD_setInputConnection, this.mInstance, inputConnection);
    }

    @Override
    public void setStartAnimParams(long j, long j2, int i, int i2) {
        TranDoorMan.invokeMethod(METHOD_setStartAnimParams, this.mInstance, Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override
    public void setUpdateAnimParams(int i, int i2, long j, long j2, int i3, float f, float f2, float f3) {
        TranDoorMan.invokeMethod(METHOD_setUpdateAnimParams, this.mInstance, Integer.valueOf(i), Integer.valueOf(i2), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i3), Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3));
    }
}
