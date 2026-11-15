package com.mgtv.ssp.apkDownload;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.util.v;
import com.mgtv.ssp.R;
import java.lang.ref.WeakReference;

class c extends Handler {
    private WeakReference<d> a;

    public c(d dVar) {
        this.a = new WeakReference<>(dVar);
    }

    @Override
    public void handleMessage(@NonNull Message message) {
        com.mgtv.ssp.download.dao3.c cVar;
        com.mgtv.ssp.download.dao3.c cVar2;
        com.mgtv.ssp.download.dao3.c cVar3;
        com.mgtv.ssp.apkDownload.a.a aVar;
        com.mgtv.ssp.download.dao3.c cVar4;
        d dVar = this.a.get();
        if (dVar != null) {
            int i = message.what;
            if (i == 1) {
                com.mgtv.ssp.apkDownload.a.a aVar2 = (com.mgtv.ssp.apkDownload.a.a) message.obj;
                if (aVar2 == null || (cVar = aVar2.a) == null) {
                    return;
                }
                String str = cVar.e;
                String str2 = cVar.b;
                dVar.a(str2);
                e eVarA = b.a().a(str);
                if (eVarA != null) {
                    eVarA.a(false, true);
                    eVarA.a(str2, str, null, BaseApplication.getContext().getResources().getString(R.string.apk_download_finish), 100);
                }
                dVar.a(false);
                if (!TextUtils.isEmpty(aVar2.a.d)) {
                    a.a(aVar2.a.d);
                }
                v.a(R.string.apk_download_finish);
                return;
            }
            if (i == 2) {
                com.mgtv.ssp.apkDownload.a.a aVar3 = (com.mgtv.ssp.apkDownload.a.a) message.obj;
                if (aVar3 == null || (cVar2 = aVar3.a) == null) {
                    return;
                }
                String strE = cVar2.e();
                String strB = aVar3.a.b();
                dVar.a(strB, aVar3.c);
                e eVarA2 = b.a().a(strE);
                if (eVarA2 != null) {
                    eVarA2.a(false, true);
                    eVarA2.a(strB, strE, null, null, aVar3.c);
                }
                if (!dVar.c()) {
                    v.b(R.string.start_download);
                }
                dVar.a(true);
                return;
            }
            if (i != 3) {
                if (i != 4 || (aVar = (com.mgtv.ssp.apkDownload.a.a) message.obj) == null || (cVar4 = aVar.a) == null) {
                    return;
                }
                String str3 = cVar4.b;
                e eVarA3 = aVar.d ? b.a().a(cVar4.e) : b.a().a(cVar4.e, aVar.e);
                int iLongValue = cVar4.h.longValue() != 0 ? (int) (((cVar4.g.longValue() * 1.0f) / cVar4.h.longValue()) * 100.0f) : 0;
                if (eVarA3 != null) {
                    eVarA3.a(false, false);
                    if (BaseApplication.getContext() == null) {
                        eVarA3.a(cVar4.b, cVar4.e, null, "已暂停下载，点击继续", iLongValue);
                        return;
                    } else {
                        eVarA3.a(cVar4.b, cVar4.e, null, BaseApplication.getContext().getString(R.string.apk_download_click_resume), iLongValue);
                        return;
                    }
                }
                return;
            }
            com.mgtv.ssp.apkDownload.a.a aVar4 = (com.mgtv.ssp.apkDownload.a.a) message.obj;
            if (aVar4 == null || (cVar3 = aVar4.a) == null) {
                return;
            }
            dVar.b(cVar3.b);
            e eVarA4 = b.a().a(cVar3.e);
            int iLongValue2 = cVar3.h.longValue() != 0 ? (int) (((cVar3.g.longValue() * 1.0f) / cVar3.h.longValue()) * 100.0f) : 0;
            if (eVarA4 != null) {
                eVarA4.a(false, false);
                if (BaseApplication.getContext() == null) {
                    eVarA4.a(cVar3.b, cVar3.e, null, "下载失败,请重试!", iLongValue2);
                } else {
                    eVarA4.a(cVar3.b, cVar3.e, null, BaseApplication.getContext().getString(R.string.str_retry_download), iLongValue2);
                }
            }
        }
    }
}
