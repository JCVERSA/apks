package com.transsion.usercenter.kids;

import android.os.Bundle;
import android.view.View;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.kids.ManageProfilesActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import xu.f;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/transsion/usercenter/kids/ManageProfilesActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/f;", "<init>", "()V", "c0", "()Lxu/f;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "isStatusDark", "()Z", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ManageProfilesActivity extends BaseActivity<f> {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(String str, String str2) {
            Navigator navigatorC = TheRouter.c("/kids/manage_profiles");
            if (str == null) {
                str = "";
            }
            Navigator navigatorK = navigatorC.K("arg_adult_nickname", str);
            if (str2 == null) {
                str2 = "";
            }
            Navigator.x(navigatorK.K("arg_adult_avatar_url", str2), null, null, 3, null);
        }

        private Companion() {
        }
    }

    public static final void d0(ManageProfilesActivity manageProfilesActivity, View view) {
        manageProfilesActivity.finish();
    }

    @Override
    public f getViewBinding() {
        f fVarC = f.c(getLayoutInflater());
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }

    @Override
    public boolean isStatusDark() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ((f) getMViewBinding()).f75564d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ManageProfilesActivity.d0(this.f59134a, view);
            }
        });
        if (savedInstanceState == null) {
            getSupportFragmentManager().p().s(R$id.flContainer, ManageProfilesFragment.INSTANCE.a()).i();
        }
    }
}
