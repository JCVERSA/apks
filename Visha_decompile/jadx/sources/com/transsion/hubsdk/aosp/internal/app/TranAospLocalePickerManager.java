package com.transsion.hubsdk.aosp.internal.app;

import android.content.Context;
import android.os.LocaleList;
import com.transsion.hubsdk.api.internal.app.TranLocaleInfo;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.internal.app.ITranLocalePickerManagerAdapter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class TranAospLocalePickerManager implements ITranLocalePickerManagerAdapter {
    private static final String TAG = "TranAospLocalePickerManager";
    private static Class<?> sClassName = TranDoorMan.getClass("com.android.internal.app.LocalePicker");
    private static Class<?> sLocalInfoClassName = TranDoorMan.getClass("com.android.internal.app.LocalePicker$LocaleInfo");
    private Context mContext = TranHubSdkManager.getContext();
    private Object mInstanceObject;

    @Override
    public List<TranLocaleInfo> getAllAssetLocales(boolean z) {
        new ArrayList();
        ArrayList arrayList = new ArrayList();
        try {
            Method method = TranDoorMan.getMethod(sClassName, "getAllAssetLocales", Context.class, Boolean.TYPE);
            method.setAccessible(true);
            List list = (List) method.invoke(null, this.mContext, Boolean.valueOf(z));
            Method method2 = TranDoorMan.getMethod(sLocalInfoClassName, "getLabel", new Class[0]);
            method2.setAccessible(true);
            Method method3 = TranDoorMan.getMethod(sLocalInfoClassName, "getLocale", new Class[0]);
            method3.setAccessible(true);
            for (Object obj : list) {
                arrayList.add(new TranLocaleInfo((String) method2.invoke(obj, null), (Locale) method3.invoke(obj, null)));
            }
        } catch (IllegalAccessException | InvocationTargetException e) {
            TranSdkLog.e(TAG, "getAllAssetLocales fail " + e);
        }
        return arrayList;
    }

    @Override
    public void updateLocale(Locale locale) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "updateLocale", Locale.class), sClassName, locale);
    }

    @Override
    public void updateLocales(LocaleList localeList) {
        try {
            TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "updateLocales", LocaleList.class), sClassName, localeList);
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "updateLocales fail " + th);
        }
    }
}
