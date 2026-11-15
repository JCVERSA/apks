package com.transsion.usercenter.edit;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.kids.KidsProfile;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.R$string;
import com.transsion.usercenter.R$id;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.y;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ)\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/j;", "<init>", "()V", "", "initView", "initData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "onBackPressed", "d0", "()Lxu/j;", "Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;", "a", "Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;", "profileEditFragment", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProfileEditCenterActivity extends BaseActivity<xu.j> {

    public static final Companion INSTANCE = new Companion(null);

    private ProfileEditCenterFragment profileEditFragment;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, UserInfo userInfo) {
            Intrinsics.h(context, "context");
            Intent intent = new Intent(context, (Class<?>) ProfileEditCenterActivity.class);
            if (userInfo != null) {
                intent.putExtra("user", userInfo);
            }
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
        }

        public final void b(Context context, KidsProfile kidsProfile) {
            Intrinsics.h(context, "context");
            Intrinsics.h(kidsProfile, "kidsProfile");
            Intent intent = new Intent(context, (Class<?>) ProfileEditCenterActivity.class);
            intent.putExtra("kidsProfile", kidsProfile);
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
        }

        private Companion() {
        }
    }

    public static final void e0(ProfileEditCenterActivity profileEditCenterActivity, View view) {
        ProfileEditCenterFragment profileEditCenterFragment = profileEditCenterActivity.profileEditFragment;
        if (profileEditCenterFragment == null) {
            Intrinsics.y("profileEditFragment");
            profileEditCenterFragment = null;
        }
        profileEditCenterFragment.checkBack();
    }

    public static final void f0(ProfileEditCenterActivity profileEditCenterActivity, View view) {
        ProfileEditCenterFragment profileEditCenterFragment = profileEditCenterActivity.profileEditFragment;
        if (profileEditCenterFragment == null) {
            Intrinsics.y("profileEditFragment");
            profileEditCenterFragment = null;
        }
        profileEditCenterFragment.confirmSubmit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        Serializable serializableExtra = getIntent().getSerializableExtra("user");
        ProfileEditCenterFragment profileEditCenterFragment = null;
        UserInfo userInfo = (serializableExtra == null || !(serializableExtra instanceof UserInfo)) ? null : (UserInfo) serializableExtra;
        KidsProfile kidsProfile = (KidsProfile) getIntent().getParcelableExtra("kidsProfile");
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction(...)");
        ProfileEditCenterFragment profileEditCenterFragmentA = ProfileEditCenterFragment.INSTANCE.a(userInfo, kidsProfile);
        this.profileEditFragment = profileEditCenterFragmentA;
        if (profileEditCenterFragmentA == null) {
            Intrinsics.y("profileEditFragment");
        }
        int i10 = R$id.fl_content;
        ProfileEditCenterFragment profileEditCenterFragment2 = this.profileEditFragment;
        if (profileEditCenterFragment2 == null) {
            Intrinsics.y("profileEditFragment");
        } else {
            profileEditCenterFragment = profileEditCenterFragment2;
        }
        wVarP.b(i10, profileEditCenterFragment);
        wVarP.j();
        TitleLayout titleLayout = ((xu.j) getMViewBinding()).f75611d;
        titleLayout.setLeftOnclick(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ProfileEditCenterActivity.e0(this.f54605a, view);
            }
        });
        String string = getString(R$string.profile_empty_done);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setRightView(string, androidx.core.content.b.getColor(titleLayout.getContext(), R$color.main), new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ProfileEditCenterActivity.f0(this.f54606a, view);
            }
        });
        String string2 = getString(com.transsion.usercenter.R$string.profile_edit_profile);
        Intrinsics.g(string2, "getString(...)");
        titleLayout.setTitleText(string2);
        ProgressBar loadView = ((xu.j) getMViewBinding()).f75610c;
        Intrinsics.g(loadView, "loadView");
        uf.c.g(loadView);
    }

    private final void initView() {
    }

    @Override
    public xu.j getViewBinding() {
        xu.j jVarC = xu.j.c(getLayoutInflater());
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return !y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override
    public void onBackPressed() {
        ProfileEditCenterFragment profileEditCenterFragment = this.profileEditFragment;
        if (profileEditCenterFragment == null) {
            Intrinsics.y("profileEditFragment");
            profileEditCenterFragment = null;
        }
        profileEditCenterFragment.checkEditSubmit(true);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initData();
    }
}
