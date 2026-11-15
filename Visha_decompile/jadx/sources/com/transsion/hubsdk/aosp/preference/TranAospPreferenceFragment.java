package com.transsion.hubsdk.aosp.preference;

import android.preference.PreferenceFragment;
import android.widget.ListView;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.preference.ITranPreferenceFragmentAdapter;
import java.lang.reflect.Method;

public class TranAospPreferenceFragment implements ITranPreferenceFragmentAdapter {
    private static final String TAG = "TranAospPreferenceFragment";
    private static Class<?> sClassName = TranDoorMan.getClass("android.preference.PreferenceFragment");

    @Override
    public ListView getListView(PreferenceFragment preferenceFragment) {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "getListView", new Class[0]);
            method.setAccessible(true);
            Object objInvoke = method.invoke(preferenceFragment, null);
            if (objInvoke != null && (objInvoke instanceof ListView)) {
                return (ListView) objInvoke;
            }
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getListView fail" + th);
        }
        return null;
    }
}
