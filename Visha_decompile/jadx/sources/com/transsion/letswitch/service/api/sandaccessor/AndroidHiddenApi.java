package com.transsion.letswitch.service.api.sandaccessor;

import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class AndroidHiddenApi {

    public static class ServiceManagerProxy {
        private static final String TAG = "ServiceManagerProxy";
        private static Class<?> sClass;
        private static Method sGetServiceMethod;

        public static IBinder getService(String str) {
            try {
                if (sClass == null) {
                    sClass = Class.forName("android.os.ServiceManager");
                }
                if (sGetServiceMethod == null) {
                    Method declaredMethod = sClass.getDeclaredMethod("getService", String.class);
                    sGetServiceMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                return (IBinder) sGetServiceMethod.invoke(null, str);
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                Log.w(TAG, "Warning : invoke ServiceManager.getService, " + e);
                return null;
            }
        }
    }
}
