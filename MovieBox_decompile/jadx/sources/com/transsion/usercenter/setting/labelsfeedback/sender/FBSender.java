package com.transsion.usercenter.setting.labelsfeedback.sender;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.c0;
import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.d;
import androidx.work.k;
import com.blankj.utilcode.util.o;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tencent.mmkv.MMKV;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.setting.labelsfeedback.model.FbDataModel;
import fh.b;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import yg.l;

public final class FBSender {

    public static final FBSender f55319a = new FBSender();

    private static final Lazy f55320b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return FBSender.g();
        }
    });

    public static final class a implements c0 {

        final LiveData f55321a;

        final String f55322b;

        public class C0660a {

            public static final int[] f55323a;

            static {
                int[] iArr = new int[WorkInfo.State.values().length];
                try {
                    iArr[WorkInfo.State.SUCCEEDED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[WorkInfo.State.FAILED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f55323a = iArr;
            }
        }

        a(LiveData liveData, String str) {
            this.f55321a = liveData;
            this.f55322b = str;
        }

        @Override
        public void onChanged(WorkInfo workInfo) {
            WorkInfo.State stateA = workInfo != null ? workInfo.a() : null;
            int i10 = stateA == null ? -1 : C0660a.f55323a[stateA.ordinal()];
            if (i10 == 1) {
                b.f60176a.d(R$string.feedback_tips_suceess);
                this.f55321a.o(this);
                FBSender.f55319a.k(null);
            } else {
                if (i10 != 2) {
                    return;
                }
                b.f60176a.d(R$string.feedback_tips_failed);
                this.f55321a.o(this);
                FBSender.f55319a.k(this.f55322b);
            }
        }
    }

    private FBSender() {
    }

    private final String d() {
        return f().k("key_failed_json");
    }

    private final MMKV f() {
        return (MMKV) f55320b.getValue();
    }

    public static final MMKV g() {
        MMKV mmkvI = MMKV.I("feedback_mmkv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final void j(String str, Application application) throws Throwable {
        k.a aVar = new k.a(FbSenderWorker.class);
        Pair[] pairArr = {TuplesKt.a("key_work_data", str)};
        d.a aVar2 = new d.a();
        Pair pair = pairArr[0];
        aVar2.b((String) pair.getFirst(), pair.getSecond());
        d dVarA = aVar2.a();
        Intrinsics.g(dVarA, "dataBuilder.build()");
        aVar.l(dVarA);
        k kVar = (k) aVar.b();
        Context contextCreateDeviceProtectedStorageContext = application;
        if (Build.VERSION.SDK_INT >= 24) {
            contextCreateDeviceProtectedStorageContext = application.createDeviceProtectedStorageContext();
        }
        WorkManager workManagerF = WorkManager.f(contextCreateDeviceProtectedStorageContext);
        Intrinsics.g(workManagerF, "getInstance(...)");
        workManagerF.a("feedback work name", ExistingWorkPolicy.REPLACE, kVar).a();
        LiveData liveDataG = workManagerF.g(kVar.a());
        Intrinsics.g(liveDataG, "getWorkInfoByIdLiveData(...)");
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new FBSender$sendJson$1(liveDataG, new a(liveDataG, str), null), 3, null);
    }

    public final void k(String str) {
        if (str == null) {
            f().remove("key_failed_json");
        } else {
            f().v("key_failed_json", str);
        }
    }

    public final FbDataModel e() {
        String strD = d();
        if (strD == null) {
            return null;
        }
        try {
            return (FbDataModel) o.d(strD, FbDataModel.class);
        } catch (Exception e10) {
            String message = e10.getMessage();
            if (message == null) {
                message = "unable to parse json";
            }
            Log.e(TmcConstants.MENU_KEY_FEEDBACK, message);
            return null;
        }
    }

    public final void h(Application application) throws Throwable {
        String strD;
        Intrinsics.h(application, "application");
        if (l.f76264a.e() && (strD = d()) != null) {
            f55319a.j(strD, application);
        }
    }

    public final void i(FbDataModel model, Application application) {
        Intrinsics.h(model, "model");
        Intrinsics.h(application, "application");
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new FBSender$send$1(model, application, null), 3, null);
    }
}
