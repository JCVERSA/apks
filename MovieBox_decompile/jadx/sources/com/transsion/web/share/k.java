package com.transsion.web.share;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.u;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.web.R$string;
import com.transsion.web.fragment.WebFragmentV2;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import oq.p;
import org.json.JSONObject;

public final class k {

    private final Fragment f55958a;

    private final Function2 f55959b;

    private androidx.activity.result.b f55960c;

    private boolean f55961d;

    private long f55962e;

    private final String f55963f;

    private final String f55964g;

    private final String f55965h;

    private final androidx.activity.result.a f55966i;

    private String f55967j;

    public static final class a implements androidx.p009lifecycle.f {
        a() {
        }

        @Override
        public void onCreate(u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override
        public void onDestroy(u uVar) {
            androidx.p009lifecycle.e.b(this, uVar);
        }

        @Override
        public void onPause(u uVar) {
            androidx.p009lifecycle.e.c(this, uVar);
        }

        @Override
        public void onResume(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.d(this, owner);
            k.this.f55962e = 0L;
        }

        @Override
        public void onStart(u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override
        public void onStop(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.f(this, owner);
            if (com.blankj.utilcode.util.c.j()) {
                return;
            }
            k.this.f55962e = SystemClock.elapsedRealtime();
        }
    }

    public k(Fragment fragment, Function2 shareCallback) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(shareCallback, "shareCallback");
        this.f55958a = fragment;
        this.f55959b = shareCallback;
        this.f55963f = "fail";
        this.f55964g = "cancel";
        this.f55965h = NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;
        androidx.activity.result.a aVar = new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                k.n(this.f55957a, (ActivityResult) obj);
            }
        };
        this.f55966i = aVar;
        this.f55960c = fragment.registerForActivityResult(new f.j(), aVar);
        fragment.getLifecycle().a(new a());
        this.f55967j = "";
    }

    private final Intent f(Context context, String str, String str2, String str3) {
        String strG = g(context, str2, str3);
        if (strG == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(ShareConstant.SHARE_TYPE_TEXT);
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setPackage(strG);
        return intent;
    }

    private final String g(Context context, String str, String str2) {
        if (str != null && com.transsion.baseui.util.a.f42330a.c(context, str)) {
            return str;
        }
        if (str2 == null || !com.transsion.baseui.util.a.f42330a.c(context, str2)) {
            return null;
        }
        return str2;
    }

    public static final Unit i(k kVar, boolean z10) {
        if (z10) {
            kVar.m(kVar.f55965h);
        } else {
            kVar.m(kVar.f55963f);
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.web_app_not_exist);
        }
        return Unit.f64096a;
    }

    public static final Unit j(k kVar, boolean z10) {
        if (z10) {
            kVar.m(kVar.f55965h);
        } else {
            kVar.m(kVar.f55963f);
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.web_app_not_exist);
        }
        return Unit.f64096a;
    }

    public static final Unit l(Context context, k kVar, String packageName, String str, String txt) {
        Object objM453constructorimpl;
        Unit unit;
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(txt, "txt");
        if (packageName.length() == 0) {
            ClipData clipDataNewPlainText = ClipData.newPlainText("MovieBox", txt);
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(clipDataNewPlainText);
            }
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.web_copied);
            kVar.m(kVar.f55965h);
        } else {
            Intent intentF = kVar.f(context, txt, packageName, str);
            if (intentF == null) {
                com.tn.lib.widget.toast.core.h.f40484a.k(R$string.web_app_not_exist);
                kVar.m(kVar.f55963f);
            } else {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    androidx.activity.result.b bVar = kVar.f55960c;
                    if (bVar != null) {
                        bVar.a(intentF);
                        unit = Unit.f64096a;
                    } else {
                        unit = null;
                    }
                    objM453constructorimpl = Result.m453constructorimpl(unit);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
                    kVar.m(kVar.f55963f);
                    objM453constructorimpl = Unit.f64096a;
                }
            }
        }
        return Unit.f64096a;
    }

    private final void m(String str) {
        this.f55959b.invoke(this.f55967j, str);
    }

    public static final void n(k kVar, ActivityResult activityResult) {
        String str;
        Intrinsics.h(activityResult, "activityResult");
        try {
            if (kVar.f55961d) {
                int resultCode = activityResult.getResultCode();
                if (resultCode == -1) {
                    str = kVar.f55965h;
                } else if (resultCode != 0) {
                    str = kVar.f55963f;
                } else {
                    com.tn.lib.widget.toast.core.h.f40484a.k(com.transsion.share.R$string.cancel);
                    str = kVar.f55964g;
                }
            } else if (kVar.f55962e == 0 || SystemClock.elapsedRealtime() - kVar.f55962e < 1500) {
                wf.a.C0922a c0922a = wf.a.f74274a;
                String strA = WebFragmentV2.INSTANCE.a();
                Intrinsics.g(strA, "<get-TAG>(...)");
                wf.a.C0922a.f(c0922a, strA, "操作太快了 leaveVskitTime:" + kVar.f55962e, false, 4, null);
                str = kVar.f55963f;
            } else {
                str = kVar.f55965h;
            }
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String strA2 = WebFragmentV2.INSTANCE.a();
            Intrinsics.g(strA2, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a2, strA2, "shareResultActivityResultCallback:" + str + "  ----  " + activityResult.getResultCode(), false, 4, null);
            kVar.m(str);
        } catch (Exception unused) {
        }
    }

    public final void h(Activity activity, String data, String callbackId) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        JSONObject jSONObject = new JSONObject(data);
        String strOptString = jSONObject.optString("packageName");
        String strOptString2 = jSONObject.optString("txt");
        this.f55967j = callbackId;
        Context context = this.f55958a.getContext();
        if (context == null) {
            return;
        }
        if (Intrinsics.c(strOptString, "copyLink")) {
            ClipData clipDataNewPlainText = ClipData.newPlainText("MovieBox", strOptString2);
            ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(clipDataNewPlainText);
            }
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.web_copied);
            m(this.f55965h);
            return;
        }
        if (strOptString == null || strOptString.length() == 0) {
            m("0");
            return;
        }
        if (TextUtils.equals(strOptString, "com.whatsapp")) {
            p pVar = p.f67948a;
            Intrinsics.e(strOptString2);
            pVar.d(activity, strOptString2, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return k.i(this.f55955a, ((Boolean) obj).booleanValue());
                }
            });
        } else if (TextUtils.equals(strOptString, "org.telegram.messenger")) {
            p pVar2 = p.f67948a;
            Intrinsics.e(strOptString2);
            pVar2.c(activity, strOptString2, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return k.j(this.f55956a, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    public final void k(String data, String callbackId, FragmentManager fragmentManager) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        Intrinsics.h(fragmentManager, "fragmentManager");
        this.f55967j = callbackId;
        final Context context = this.f55958a.getContext();
        if (context == null) {
            return;
        }
        try {
            if (fragmentManager.k0("WebShareDialog") != null) {
                return;
            }
            WebShareDialog webShareDialogA = WebShareDialog.INSTANCE.a(data);
            webShareDialogA.r0(new Function3() {
                @Override
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return k.l(context, this, (String) obj, (String) obj2, (String) obj3);
                }
            });
            webShareDialogA.show(fragmentManager, "WebShareDialog");
        } catch (Exception unused) {
            m(this.f55963f);
        }
    }
}
