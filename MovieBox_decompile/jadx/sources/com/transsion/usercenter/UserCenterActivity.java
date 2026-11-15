package com.transsion.usercenter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.baseui.activity.BaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/usercenter/UserCenterActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/m;", "<init>", "()V", "", "f0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "e0", "()Lxu/m;", "", "isTranslucent", "()Z", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UserCenterActivity extends BaseActivity<xu.m> {
    /* JADX WARN: Multi-variable type inference failed */
    private final void f0() {
        ((xu.m) getMViewBinding()).f75690b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UserCenterActivity.g0(this.f55341a, view);
            }
        });
        ((xu.m) getMViewBinding()).f75692d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UserCenterActivity.h0(this.f55342a, view);
            }
        });
        ((xu.m) getMViewBinding()).f75691c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UserCenterActivity.i0(this.f55343a, view);
            }
        });
    }

    public static final void g0(UserCenterActivity userCenterActivity, View view) {
        userCenterActivity.startActivity(new Intent(userCenterActivity, (Class<?>) ProfileEditActivity.class));
    }

    public static final void h0(UserCenterActivity userCenterActivity, View view) {
        Intent intent = new Intent(userCenterActivity, (Class<?>) FollowActivity.class);
        intent.putExtra("follow_type_key", 1);
        userCenterActivity.startActivity(intent);
    }

    public static final void i0(UserCenterActivity userCenterActivity, View view) {
        Intent intent = new Intent(userCenterActivity, (Class<?>) FollowActivity.class);
        intent.putExtra("follow_type_key", 2);
        userCenterActivity.startActivity(intent);
    }

    @Override
    public xu.m getViewBinding() {
        xu.m mVarC = xu.m.c(getLayoutInflater());
        Intrinsics.g(mVarC, "inflate(...)");
        return mVarC;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LinearLayoutCompat root = ((xu.m) getMViewBinding()).getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.e(root);
        f0();
    }
}
