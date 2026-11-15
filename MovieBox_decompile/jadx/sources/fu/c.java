package fu;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.e;
import androidx.p009lifecycle.f;
import androidx.p009lifecycle.u;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.tn.lib.widget.toast.core.h;
import com.transsion.transfer.wifi.qrcode.QrCodeUtil;
import com.transsion.transfer.wifi.util.g;
import com.transsion.web.R$string;
import com.transsion.web.share.WebShareDialog;
import f.j;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

public final class c {

    private long f60512a;

    private androidx.activity.result.b f60516e;

    private final String f60513b = "fail";

    private final String f60514c = "cancel";

    private final String f60515d = NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;

    private final androidx.activity.result.a f60517f = new androidx.activity.result.a() {
        @Override
        public final void a(Object obj) {
            c.h(this.f60509a, (ActivityResult) obj);
        }
    };

    public static final class a implements f {
        a() {
        }

        @Override
        public void onCreate(u uVar) {
            e.a(this, uVar);
        }

        @Override
        public void onDestroy(u uVar) {
            e.b(this, uVar);
        }

        @Override
        public void onPause(u uVar) {
            e.c(this, uVar);
        }

        @Override
        public void onResume(u owner) {
            Intrinsics.h(owner, "owner");
            e.d(this, owner);
            c.this.f60512a = 0L;
        }

        @Override
        public void onStart(u uVar) {
            e.e(this, uVar);
        }

        @Override
        public void onStop(u owner) {
            Intrinsics.h(owner, "owner");
            e.f(this, owner);
            if (com.blankj.utilcode.util.c.j()) {
                return;
            }
            c.this.f60512a = SystemClock.elapsedRealtime();
        }
    }

    private final Intent d(Context context, String str, String str2, String str3) {
        String strE = e(context, str2, str3);
        if (strE == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(ShareConstant.SHARE_TYPE_TEXT);
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setPackage(strE);
        return intent;
    }

    private final String e(Context context, String str, String str2) {
        if (str != null && com.transsion.baseui.util.a.f42330a.c(context, str)) {
            return str;
        }
        if (str2 == null || !com.transsion.baseui.util.a.f42330a.c(context, str2)) {
            return null;
        }
        return str2;
    }

    private final String f() {
        return "Enjoy Free Dramas & HD Movies on MovieBox—now with file transfer support! " + QrCodeUtil.f53835a.d();
    }

    public static final void h(c cVar, ActivityResult activityResult) {
        Intrinsics.h(activityResult, "activityResult");
        try {
            String str = (cVar.f60512a == 0 || SystemClock.elapsedRealtime() - cVar.f60512a < 1500) ? cVar.f60513b : cVar.f60515d;
            g.d(g.f53898a, "ShareManager --> shareResultActivityResultCallback --> result = " + str, false, 2, null);
            h.f40484a.l(str);
        } catch (Exception unused) {
        }
    }

    public static final Unit j(AppCompatActivity appCompatActivity, c cVar, String packageName, String str, String txt) {
        Object objM453constructorimpl;
        Unit unit;
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(txt, "txt");
        g.h(g.f53898a, "ShareManager --> showShareDialog() --> packageName = " + packageName + " --> backUpPackageName = " + str + " --> txt = " + txt, false, 2, null);
        if (packageName.length() == 0) {
            ClipData clipDataNewPlainText = ClipData.newPlainText("MovieBox", txt);
            ClipboardManager clipboardManager = (ClipboardManager) appCompatActivity.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(clipDataNewPlainText);
            }
            h.f40484a.k(R$string.web_copied);
        } else {
            Intent intentD = cVar.d(appCompatActivity, txt, packageName, str);
            if (intentD == null) {
                h.f40484a.k(R$string.web_app_not_exist);
            } else {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    androidx.activity.result.b bVar = cVar.f60516e;
                    if (bVar != null) {
                        bVar.a(intentD);
                        unit = Unit.f64096a;
                    } else {
                        unit = null;
                    }
                    objM453constructorimpl = Result.m453constructorimpl(unit);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    g.d(g.f53898a, "ShareManager --> showShareDialog() --> it = " + thM456exceptionOrNullimpl, false, 2, null);
                    objM453constructorimpl = Unit.f64096a;
                }
            }
        }
        return Unit.f64096a;
    }

    public final void g(AppCompatActivity activity) {
        Intrinsics.h(activity, "activity");
        this.f60516e = activity.registerForActivityResult(new j(), this.f60517f);
        activity.getLifecycle().a(new a());
    }

    public final void i(final AppCompatActivity activity) {
        Intrinsics.h(activity, "activity");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("WhatsApp", f());
        jSONObject.put("Telegram", f());
        jSONObject.put("CopyLink", f());
        WebShareDialog.Companion aVar = WebShareDialog.INSTANCE;
        String string = jSONObject.toString();
        Intrinsics.g(string, "toString(...)");
        WebShareDialog webShareDialogA = aVar.a(string);
        webShareDialogA.s0("wifi_share_panel");
        webShareDialogA.t0(false);
        webShareDialogA.r0(new Function3() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return c.j(activity, this, (String) obj, (String) obj2, (String) obj3);
            }
        });
        FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        webShareDialogA.show(supportFragmentManager, "WebShareDialog");
    }
}
