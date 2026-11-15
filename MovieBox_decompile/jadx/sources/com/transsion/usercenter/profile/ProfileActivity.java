package com.transsion.usercenter.profile;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.usercenter.R$id;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import xu.p0;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001d\u0010\u000fR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lcom/transsion/usercenter/profile/ProfileActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lxu/p0;", "<init>", "()V", "", "C0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "D0", "()Lxu/p0;", "", "f0", "()Ljava/lang/String;", "l0", "m0", "k0", "p0", "retryLoadData", "", "isTranslucent", "()Z", "o0", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "getPageName", "Lcom/transsnet/loginapi/bean/UserInfo;", "i", "Lcom/transsnet/loginapi/bean/UserInfo;", "userInfo", "j", "Ljava/lang/String;", "userId", "Landroidx/fragment/app/Fragment;", CampaignEx.JSON_KEY_AD_K, "Landroidx/fragment/app/Fragment;", "mFragment", "l", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ProfileActivity extends BaseNewActivity<p0> {

    public UserInfo userInfo;

    public String userId;

    private Fragment mFragment;

    private final void C0() {
        Fragment fragmentK0 = getSupportFragmentManager().k0("profile_fragment_tag");
        this.mFragment = fragmentK0 instanceof ProfileFragment ? (ProfileFragment) fragmentK0 : ProfileFragment.INSTANCE.a(this.userId, this.userInfo);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        androidx.fragment.app.w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        Fragment fragment = this.mFragment;
        if (fragment != null) {
            wVarP.t(R$id.f54591fl, fragment, "profile_fragment_tag");
        }
        wVarP.j();
    }

    @Override
    public p0 getViewBinding() {
        p0 p0VarC = p0.c(getLayoutInflater());
        Intrinsics.g(p0VarC, "inflate(...)");
        return p0VarC;
    }

    @Override
    public String f0() {
        return "";
    }

    @Override
    public String getPageName() {
        return "profiledetail";
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public void k0() {
    }

    @Override
    public void l0() {
        s0();
    }

    @Override
    public void m0() {
    }

    @Override
    public boolean o0() {
        return false;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }

    @Override
    protected void onNewIntent(Intent intent) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        TheRouter.l(this);
        C0();
    }

    @Override
    public void p0() {
        C0();
    }

    @Override
    public void retryLoadData() {
        w0();
        if (!yg.l.f76264a.e()) {
            y0();
        } else {
            u0();
            p0();
        }
    }
}
