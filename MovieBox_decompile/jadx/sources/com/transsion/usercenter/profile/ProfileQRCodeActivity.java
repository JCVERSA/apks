package com.transsion.usercenter.profile;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.zxing.BarcodeFormat;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.utils.ActivityPermissionUtil;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.usercenter.profile.dialog.ProfileCameraPermissionDialog;
import com.transsion.web.api.WebPageIdentity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 02\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\bH\u0016¢\u0006\u0004\b!\u0010\u001aJ\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0004R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\r0(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.¨\u00062"}, d2 = {"Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lxu/l;", "<init>", "()V", "", "H0", "O0", "", "openSetting", "Q0", "(Z)V", "M0", "", "scannedText", "L0", "(Ljava/lang/String;)V", "url", "K0", "(Ljava/lang/String;)Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "n0", "()Z", "onPause", "onDestroy", "I0", "()Lxu/l;", "f0", "()Ljava/lang/String;", "setImmersionStatusBar", "l0", "m0", "k0", "p0", "q0", "retryLoadData", "Landroidx/activity/result/b;", "i", "Landroidx/activity/result/b;", "requestCameraPermissionLauncher", "Laf/a;", "j", "Laf/a;", "callback", CampaignEx.JSON_KEY_AD_K, "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ProfileQRCodeActivity extends BaseNewActivity<xu.l> {

    private final androidx.activity.result.b requestCameraPermissionLauncher = registerForActivityResult(new f.i(), new androidx.activity.result.a() {
        @Override
        public final void a(Object obj) {
            ProfileQRCodeActivity.P0(this.f55080a, ((Boolean) obj).booleanValue());
        }
    });

    private final af.a callback = new b();

    public static final class b implements af.a {
        b() {
        }

        @Override
        public void a(List resultPoints) {
            Intrinsics.h(resultPoints, "resultPoints");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void b(af.c result) {
            Intrinsics.h(result, "result");
            if (result.e() != null) {
                ((xu.l) ProfileQRCodeActivity.this.getMViewBinding()).f75664e.pause();
                String strE = result.e();
                ProfileQRCodeActivity profileQRCodeActivity = ProfileQRCodeActivity.this;
                Intrinsics.e(strE);
                profileQRCodeActivity.L0(strE);
            }
        }
    }

    private final void H0() {
        if (androidx.core.content.b.checkSelfPermission(this, "android.permission.CAMERA") == 0) {
            return;
        }
        O0();
    }

    public static final void J0(ProfileQRCodeActivity profileQRCodeActivity, View view) {
        profileQRCodeActivity.finish();
    }

    private final boolean K0(String url) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("oneroom://com.community.oneroom");
        arrayList.add("oneroom://com.community.moviebox");
        arrayList.add("https://v.aoneroom.com");
        arrayList.add("https://h5.aoneroom.com");
        arrayList.add("https://m.mvbrowse.com");
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (StringsKt.W(url, (String) it.next(), false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    public final void L0(String scannedText) {
        if (K0(scannedText)) {
            ij.k.h(scannedText, null, 1, null);
        } else {
            String str = UrlUtils.QUESTION_MARK;
            if (StringsKt.c0(scannedText, UrlUtils.QUESTION_MARK, false, 2, null)) {
                str = UrlUtils.AND_MARK;
            }
            Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", scannedText + str + "web_unlock_key=web_unlock_value"), this, null, 2, null);
        }
        finish();
    }

    private final void M0() {
        ActivityPermissionUtil.f42224a.c("android.settings.APPLICATION_DETAILS_SETTINGS", 1023, new Function0() {
            @Override
            public final Object invoke() {
                return ProfileQRCodeActivity.N0(this.f55086a);
            }
        });
    }

    public static final Unit N0(ProfileQRCodeActivity profileQRCodeActivity) {
        if (androidx.core.content.b.checkSelfPermission(profileQRCodeActivity, "android.permission.CAMERA") == 0) {
            return Unit.f64096a;
        }
        profileQRCodeActivity.Q0(true);
        return Unit.f64096a;
    }

    private final void O0() {
        this.requestCameraPermissionLauncher.a("android.permission.CAMERA");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void P0(ProfileQRCodeActivity profileQRCodeActivity, boolean z10) {
        if (z10) {
            ((xu.l) profileQRCodeActivity.getMViewBinding()).f75664e.resume();
        } else if (profileQRCodeActivity.shouldShowRequestPermissionRationale("android.permission.CAMERA")) {
            profileQRCodeActivity.Q0(false);
        } else {
            profileQRCodeActivity.Q0(true);
        }
    }

    private final void Q0(final boolean openSetting) {
        ProfileCameraPermissionDialog profileCameraPermissionDialog = new ProfileCameraPermissionDialog();
        profileCameraPermissionDialog.u0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ProfileQRCodeActivity.R0(openSetting, this, ((Boolean) obj).booleanValue());
            }
        });
        profileCameraPermissionDialog.k0(this, "ProfileCameraPermissionDialog");
    }

    public static final Unit R0(boolean z10, ProfileQRCodeActivity profileQRCodeActivity, boolean z11) {
        if (!z11) {
            profileQRCodeActivity.finish();
        } else if (z10) {
            profileQRCodeActivity.M0();
        } else {
            profileQRCodeActivity.O0();
        }
        return Unit.f64096a;
    }

    @Override
    public xu.l getViewBinding() {
        xu.l lVarC = xu.l.c(getLayoutInflater());
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }

    @Override
    public String f0() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void k0() {
        ((xu.l) getMViewBinding()).f75661b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ProfileQRCodeActivity.J0(this.f54999a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void l0() {
        ((xu.l) getMViewBinding()).f75664e.setDecoderFactory(new af.k(CollectionsKt.o(BarcodeFormat.QR_CODE, BarcodeFormat.CODE_39)));
        ((xu.l) getMViewBinding()).f75664e.initializeFromIntent(getIntent());
        ((xu.l) getMViewBinding()).f75664e.decodeContinuous(this.callback);
        ImageView vStatusSpace = ((xu.l) getMViewBinding()).f75663d;
        Intrinsics.g(vStatusSpace, "vStatusSpace");
        uf.c.e(vStatusSpace);
    }

    @Override
    public void m0() {
    }

    @Override
    public boolean n0() {
        return false;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        ImmersionBar.with(this).transparentBar().init();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onPause() {
        super.onPause();
        ((xu.l) getMViewBinding()).f75664e.pause();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onResume() {
        super.onResume();
        ((xu.l) getMViewBinding()).f75664e.resume();
    }

    @Override
    public void p0() {
    }

    @Override
    public void q0() {
        super.q0();
        H0();
    }

    @Override
    public void retryLoadData() {
    }

    @Override
    public boolean setImmersionStatusBar() {
        return false;
    }
}
