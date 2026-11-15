package com.transsion.hubsdk.core.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.os.RemoteException;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.provider.ITranSettingsAdapter;
import com.transsion.hubsdk.provider.ITranSettings;
import com.transsion.hubsdk.provider.TranSettings;

public class TranThubSettings implements ITranSettingsAdapter {
    private static final String TAG = "TranThubSettings";
    private ITranSettings mService = ITranSettings.Stub.asInterface(TranServiceManager.getServiceIBinder("settings_provider"));
    private TranSettings mTranSettings;

    private TranSettings getTranSettingsImpl() {
        if (this.mTranSettings == null) {
            this.mTranSettings = new TranSettings();
        }
        return this.mTranSettings;
    }

    @Override
    public int getSecureIntForUser(String str, int i, int i2) {
        try {
            ITranSettings iTranSettings = this.mService;
            if (iTranSettings != null) {
                return iTranSettings.getSecureIntForUser(str, i, i2);
            }
        } catch (RemoteException unused) {
            TranSdkLog.e(TAG, "getSecureIntForUser fail");
        }
        return i;
    }

    @Override
    public String getSecureStringForUser(String str, int i) {
        try {
            ITranSettings iTranSettings = this.mService;
            if (iTranSettings != null) {
                return iTranSettings.getSecureStringForUser(str, i);
            }
            return null;
        } catch (RemoteException unused) {
            TranSdkLog.e(TAG, "getSecureStringForUser fail");
            return null;
        }
    }

    @Override
    public float getSystemFloatForUser(String str, float f, int i) {
        try {
            ITranSettings iTranSettings = this.mService;
            if (iTranSettings != null) {
                return iTranSettings.getSystemFloatForUser(str, f, i);
            }
        } catch (RemoteException unused) {
            TranSdkLog.e(TAG, "getSystemFloatForUser fail");
        }
        return f;
    }

    @Override
    public long getSystemLongForUser(ContentResolver contentResolver, String str, long j, int i) {
        return getTranSettingsImpl().getSystemLongForUser(contentResolver, str, j, i);
    }

    @Override
    public boolean putGlobalInt(Context context, String str, int i) {
        return getTranSettingsImpl().putGlobalInt(context, str, i);
    }

    @Override
    public boolean putSecureInt(Context context, String str, int i) {
        return getTranSettingsImpl().putSecureInt(context, str, i);
    }

    @Override
    public boolean putSecureIntForUser(String str, int i, int i2) {
        try {
            ITranSettings iTranSettings = this.mService;
            if (iTranSettings != null) {
                return iTranSettings.putSecureIntForUser(str, i, i2);
            }
            return false;
        } catch (RemoteException unused) {
            TranSdkLog.e(TAG, "putSecureIntForUser fail");
            return false;
        }
    }

    @Override
    public boolean putSecureStringForUser(String str, String str2, int i) {
        try {
            ITranSettings iTranSettings = this.mService;
            if (iTranSettings != null) {
                return iTranSettings.putSecureStringForUser(str, str2, i);
            }
            return false;
        } catch (RemoteException unused) {
            TranSdkLog.e(TAG, "putSecureStringForUser fail");
            return false;
        }
    }

    @Override
    public boolean putSystemFloatForUser(String str, float f, int i) {
        try {
            ITranSettings iTranSettings = this.mService;
            if (iTranSettings != null) {
                return iTranSettings.putSystemFloatForUser(str, f, i);
            }
            return false;
        } catch (RemoteException unused) {
            TranSdkLog.e(TAG, "putSystemFloatForUser fail");
            return false;
        }
    }

    @Override
    public int getSecureIntForUser(ContentResolver contentResolver, String str, int i, int i2) {
        return getTranSettingsImpl().getSecureIntForUser(contentResolver, str, i, i2);
    }

    @Override
    public String getSecureStringForUser(ContentResolver contentResolver, String str, int i) {
        return getTranSettingsImpl().getSecureStringForUser(contentResolver, str, i);
    }

    @Override
    public float getSystemFloatForUser(ContentResolver contentResolver, String str, float f, int i) {
        return getTranSettingsImpl().getSystemFloatForUser(contentResolver, str, f, i);
    }

    @Override
    public boolean putSecureIntForUser(ContentResolver contentResolver, String str, int i, int i2) {
        return getTranSettingsImpl().putSecureIntForUser(contentResolver, str, i, i2);
    }

    @Override
    public boolean putSecureStringForUser(ContentResolver contentResolver, String str, String str2, int i) {
        return getTranSettingsImpl().putSecureStringForUser(contentResolver, str, str2, i);
    }

    @Override
    public boolean putSystemFloatForUser(ContentResolver contentResolver, String str, float f, int i) {
        return getTranSettingsImpl().putSystemFloatForUser(contentResolver, str, f, i);
    }
}
