package cn.com.custommma.mobile.tracking.api;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.com.custommma.mobile.tracking.util.DeviceInfoUtil;
import cn.com.custommma.mobile.tracking.viewability.origin.CallBack;
import defpackage.na1;
import defpackage.ng9;
import defpackage.rq5;
import java.util.HashSet;

public class SendMessageThread extends Thread {
    private cn.com.custommma.mobile.tracking.util.a connectUtil;
    private Context context;
    private boolean isInterruptThread = false;
    private boolean isNormalList;
    private Object object;
    private HashSet<String> requestList;
    private String spName;

    public SendMessageThread(String str, Context context, boolean z) {
        this.connectUtil = null;
        this.object = null;
        this.requestList = null;
        this.spName = str;
        this.context = context;
        this.isNormalList = z;
        this.requestList = new HashSet<>();
        this.connectUtil = cn.com.custommma.mobile.tracking.util.a.b();
        this.object = new Object();
    }

    private void handleFailedResult(String str, long j) {
        if (this.isNormalList) {
            ng9.h(this.context, "cn.com.mma.mobile.tracking.mgmi_ssp_normal", str);
            ng9.e(this.context, "cn.com.mma.mobile.tracking.mgmi_ssp_falied", str, j);
            ng9.e(this.context, "cn.com.mma.mobile.tracking.mgmi_ssp_other", str, 1L);
        } else {
            long jA = ng9.a(this.context, "cn.com.mma.mobile.tracking.mgmi_ssp_other", str) + 1;
            if (jA > 3) {
                ng9.h(this.context, "cn.com.mma.mobile.tracking.mgmi_ssp_falied", str);
                ng9.h(this.context, "cn.com.mma.mobile.tracking.mgmi_ssp_other", str);
            } else {
                ng9.e(this.context, "cn.com.mma.mobile.tracking.mgmi_ssp_other", str, jA);
            }
        }
        this.requestList.remove(str);
    }

    private void handleSuccessResult(String str, String str2) {
        ng9.h(this.context, str, str2);
        if (!this.isNormalList) {
            ng9.h(this.context, "cn.com.mma.mobile.tracking.mgmi_ssp_other", str2);
        }
        this.requestList.remove(str2);
    }

    private synchronized void sendData() {
        synchronized (SendMessageThread.class) {
            try {
                for (String str : ng9.b(this.context, this.spName).getAll().keySet()) {
                    try {
                        if (!this.isInterruptThread && DeviceInfoUtil.w(this.context)) {
                            if (TextUtils.isEmpty(str)) {
                                continue;
                            } else {
                                long jA = ng9.a(this.context, this.spName, str);
                                if (jA <= System.currentTimeMillis()) {
                                    ng9.h(this.context, this.spName, str);
                                } else {
                                    if (this.requestList.contains(str)) {
                                        return;
                                    }
                                    this.requestList.add(str);
                                    byte[] bArrC = this.connectUtil.c(str);
                                    CallBack callBack = (CallBack) a.d.b(str);
                                    ViewAbilityHandler.MonitorType monitorType = (ViewAbilityHandler.MonitorType) a.e.b(str);
                                    if (bArrC == null) {
                                        handleFailedResult(str, jA);
                                        if (callBack != null) {
                                            callBack.onFailed(monitorType.toString() + ":MMA_URL Failed To Send");
                                        }
                                        a.d.d(str);
                                        a.e.d(str);
                                        return;
                                    }
                                    if (callBack != null) {
                                        callBack.onSuccess(monitorType.toString());
                                    }
                                    a.d.d(str);
                                    a.e.d(str);
                                    rq5.c("record [" + na1.j(str) + "] upload succeed.");
                                    handleSuccessResult(this.spName, str);
                                    if (Countly.n) {
                                        this.context.sendBroadcast(new Intent(Countly.q));
                                    }
                                }
                            }
                        }
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void interrupt() {
        this.isInterruptThread = true;
        super.interrupt();
    }

    @Override
    public void run() {
        sendData();
    }
}
