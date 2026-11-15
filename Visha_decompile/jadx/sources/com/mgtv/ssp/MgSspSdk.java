package com.mgtv.ssp;

import android.app.Activity;
import android.content.Context;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.safe.SafeInformationInterface;
import com.hunantv.imgo.util.h;
import com.mgmi.ssp.MGTVAdFactory;
import com.mgtv.ssp.authbase.AccountInfo;
import com.mgtv.ssp.authbase.MgSspAccountCallback;

public class MgSspSdk {
    private static MgSspSdk inst;

    public static MgSspSdk get() {
        if (inst == null) {
            synchronized (MgSspSdk.class) {
                try {
                    if (inst == null) {
                        inst = new MgSspSdk();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return inst;
    }

    public void changeAreaLanguage(int i, boolean z) throws Throwable {
        com.mgtv.ssp.utils.language.c.a().a(i, z);
    }

    public void changeLanguage(int i, boolean z) throws Throwable {
        com.mgtv.ssp.utils.language.c.a().a(i, z);
    }

    public String getLoadingTitle() {
        return g.a().d();
    }

    public String getSdkVersion() {
        return g.a().b();
    }

    public void init(Context context, InitArgs initArgs, MgSspInitCallback mgSspInitCallback) {
        g.a().a(context, initArgs.mid, initArgs.cToken, mgSspInitCallback);
    }

    public void jumpTo(Activity activity, String str) {
        g.a().a(activity, str);
    }

    public boolean needShowLoading() {
        return g.a().c();
    }

    public void requestMgtvJumpData(Context context, String str, String str2, MgtvJumpDataCallback mgtvJumpDataCallback) {
        g.a().a(context, str, str2, mgtvJumpDataCallback);
    }

    public void setAdsID(String str) {
        MgtvPlayerConstants.MGSDK_POSID = str;
    }

    public void setAdsSwitch(boolean z) {
        MGTVAdFactory.getInstance().setAllowedRC(z);
    }

    public void setContentSwitch(boolean z) {
        g.a().a(z);
    }

    public void setDeviceId(String str) {
    }

    public void setFoldDeviceTag(boolean z) {
        h.a(z);
    }

    public void setGaid(String str) {
        if (str != null) {
            MGTVAdFactory.getInstance().setGaid(str);
        }
    }

    public void setImei(String str) {
    }

    public void setIsOverSea(boolean z) {
        g.a().b(z);
    }

    public void setOaid(String str) {
        g.a().a(str);
        MGTVAdFactory.getInstance().setOaid(str);
    }

    public void setSupportIpv6(int i) {
        com.mgtv.thirdsdk.playcore.utils.c.e(i);
    }

    public void setSupportVip(String str) {
        g.a().b(str);
    }

    public void startAccountBiz(Context context, AccountInfo accountInfo, MgSspAccountCallback mgSspAccountCallback) {
        if (context != null) {
            com.mgtv.ssp.authbase.a.a(context, accountInfo, mgSspAccountCallback);
        }
    }

    public void updateAccountInfo(AccountInfo accountInfo) {
        g.a().a(accountInfo);
    }

    public void init(Context context, InitArgs initArgs, MgSspInitCallback mgSspInitCallback, SafeInformationInterface safeInformationInterface) {
        g.a().a(context, initArgs.mid, initArgs.cToken, mgSspInitCallback, safeInformationInterface);
    }
}
