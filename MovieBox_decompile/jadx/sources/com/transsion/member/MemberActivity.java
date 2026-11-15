package com.transsion.member;

import androidx.fragment.app.FragmentManager;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.memberapi.MemberSource;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000-\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\b\u0005*\u0001\u0014\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/transsion/member/MemberActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lgm/a;", "<init>", "()V", "C0", "()Lgm/a;", "", "f0", "()Ljava/lang/String;", "", "l0", "", "isTranslucent", "()Z", "o0", "m0", "k0", "p0", "retryLoadData", "com/transsion/member/MemberActivity$a", "i", "Lcom/transsion/member/MemberActivity$a;", "onBackPress", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberActivity extends BaseNewActivity<gm.a> {

    private final a onBackPress = new a();

    public static final class a extends androidx.activity.u {
        a() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            com.transsion.member.a.f45001a.a("MemberActivity --> onBackPress --> handleOnBackPressed() --> setResult(RESULT_OK)");
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            if (bVar != null ? bVar.m() : false) {
                MemberActivity.this.setResult(-1);
            } else {
                MemberActivity.this.setResult(0);
            }
            MemberActivity.this.finish();
        }
    }

    @Override
    public gm.a getViewBinding() {
        gm.a aVarC = gm.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override
    public String f0() {
        return "";
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
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        androidx.fragment.app.w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        String stringExtra = getIntent().getStringExtra(EventConstants.KEY_SOURCE);
        wVarP.t(R$id.flContent, MemberFragment.INSTANCE.a(stringExtra != null ? MemberSource.INSTANCE.a(stringExtra) : null, getIntent().getStringExtra("scene_id")), "MemberFragment");
        wVarP.j();
    }

    @Override
    public void m0() {
        getOnBackPressedDispatcher().i(this, this.onBackPress);
    }

    @Override
    public boolean o0() {
        return false;
    }

    @Override
    public void p0() {
    }

    @Override
    public void retryLoadData() {
    }
}
