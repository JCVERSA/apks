package com.transsion.hubsdk.core.internal.app;

import android.os.IBinder;
import android.os.LocaleList;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.api.internal.app.TranLocaleInfo;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.internal.app.ITranLocalePickerManagerAdapter;
import com.transsion.hubsdk.internal.app.ITranLocalePicker;
import com.transsion.hubsdk.internal.app.TranLocale;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class TranThubLocalePickerManager implements ITranLocalePickerManagerAdapter {
    private static final String TAG = "TranThubLocalePickerManager";
    private ITranLocalePicker mService;

    public TranThubLocalePickerManager() {
        IBinder serviceIBinder = TranServiceManager.getServiceIBinder("locale_picker");
        TranSdkLog.d(TAG, "TranThubLocalePickerManager: " + serviceIBinder);
        this.mService = ITranLocalePicker.Stub.asInterface(serviceIBinder);
    }

    public Object lambda$updateLocale$0(Locale locale) throws RemoteException {
        TranLocale tranLocale = new TranLocale(locale);
        ITranLocalePicker iTranLocalePicker = this.mService;
        if (iTranLocalePicker == null) {
            return null;
        }
        iTranLocalePicker.updateLocale(tranLocale);
        return null;
    }

    @Override
    public List<TranLocaleInfo> getAllAssetLocales(boolean z) {
        ArrayList arrayList = new ArrayList();
        if (this.mService == null) {
            return arrayList;
        }
        List<com.transsion.hubsdk.internal.app.TranLocaleInfo> arrayList2 = new ArrayList();
        try {
            arrayList2 = this.mService.getAllAssetLocales(z);
        } catch (RemoteException e) {
            TranSdkLog.d(TAG, "getAllAssetLocales fail: " + e);
        }
        for (com.transsion.hubsdk.internal.app.TranLocaleInfo tranLocaleInfo : arrayList2) {
            arrayList.add(new TranLocaleInfo(tranLocaleInfo.getLabel(), tranLocaleInfo.getLocale()));
        }
        return arrayList;
    }

    @VisibleForTesting
    public void setService(ITranLocalePicker iTranLocalePicker) {
        this.mService = iTranLocalePicker;
    }

    @Override
    public void updateLocale(final Locale locale) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$updateLocale$0(locale);
            }
        }, "locale_picker");
        TranSdkLog.d(TAG, "updateLocale");
    }

    @Override
    public void updateLocales(LocaleList localeList) {
        ITranLocalePicker iTranLocalePicker = this.mService;
        if (iTranLocalePicker == null) {
            return;
        }
        try {
            iTranLocalePicker.updateLocales(localeList);
        } catch (RemoteException e) {
            TranSdkLog.d(TAG, "updateLocales fail: " + e);
        }
    }
}
