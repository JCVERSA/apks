package com.transsion.hubsdk.aosp.service.dream;

import android.os.IBinder;
import com.transsion.hubsdk.aosp.dream.TranAospDreamServiceWrapperExt;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.service.dream.ITranDreamServiceAdapter;
import java.lang.reflect.Method;

public class TranAospDreamService implements ITranDreamServiceAdapter {
    private static final String DREAM_SERVICE = "dreams";
    private static final String TAG = "TranAospDreamService";
    private static Class<?> sClassName = TranDoorMan.getClass("android.service.dreams.IDreamManager$Stub");
    private static Class<?> sManagerClassName = TranDoorMan.getClass("android.os.ServiceManager");
    private Method mMethodAsInterface;
    private Method mMethodGetService;
    private Object mObject = getIDreamManager();
    private TranAospDreamServiceWrapperExt mTranAospDreamServiceWrapperExt;

    private Object getIDreamManager() {
        this.mMethodGetService = TranDoorMan.getMethod(sManagerClassName, "getService", String.class);
        this.mMethodAsInterface = TranDoorMan.getMethod(sClassName, "asInterface", IBinder.class);
        Object objInvokeMethod = TranDoorMan.invokeMethod(this.mMethodGetService, sManagerClassName, DREAM_SERVICE);
        return TranDoorMan.invokeMethod(this.mMethodAsInterface, sClassName, objInvokeMethod instanceof IBinder ? (IBinder) objInvokeMethod : null);
    }

    private TranAospDreamServiceWrapperExt getTranAospDreamServiceWrapperExt() {
        if (this.mTranAospDreamServiceWrapperExt == null) {
            this.mTranAospDreamServiceWrapperExt = new TranAospDreamServiceWrapperExt();
        }
        return this.mTranAospDreamServiceWrapperExt;
    }

    @Override
    public void finishSelf(IBinder iBinder, boolean z) {
        Object obj = this.mObject;
        if (obj != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(obj.getClass(), "finishSelf", IBinder.class, Boolean.TYPE), this.mObject, iBinder, Boolean.valueOf(z));
        }
    }

    @Override
    public IBinder getTranDreamServiceWrapper(TranAospDreamServiceWrapperExt.ITranDreamService iTranDreamService) {
        return getTranAospDreamServiceWrapperExt().getTranDreamServiceWrapper(iTranDreamService);
    }

    @Override
    public void startDozing(IBinder iBinder, int i, int i2) {
        Object obj = this.mObject;
        if (obj != null) {
            Class<?> cls = obj.getClass();
            Class cls2 = Integer.TYPE;
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "startDozing", IBinder.class, cls2, cls2), this.mObject, iBinder, Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    @Override
    public void stopDozing(IBinder iBinder) {
        Object obj = this.mObject;
        if (obj != null) {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(obj.getClass(), "stopDozing", IBinder.class), this.mObject, iBinder);
        }
    }
}
