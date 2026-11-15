package com.transsion.publish.ui;

import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.R$id;
import com.transsion.publish.R$string;
import com.transsion.publish.api.GroupBean;
import com.transsion.publish.view.CustomPublishHeader;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J#\u0010\f\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u0019\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J1\u0010\"\u001a\u00020\u00062\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u0005J\u0015\u0010,\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0017¢\u0006\u0004\b,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00104\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006;"}, d2 = {"Lcom/transsion/publish/ui/FilmReviewActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Llo/b;", "Lro/a;", "<init>", "()V", "", "initView", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "Lcom/transsion/publish/api/GroupBean;", "groupBean", "i0", "(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/publish/api/GroupBean;)V", "initData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "e0", "()Llo/b;", "onBackPressed", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "", "p0", "", "p1", "p2", "p3", "onTextChanged", "(Ljava/lang/CharSequence;III)V", "", "getPageName", "()Ljava/lang/String;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "onResume", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "j0", "(Z)V", "Lcom/transsion/publish/ui/FilmReviewFragment;", "a", "Lcom/transsion/publish/ui/FilmReviewFragment;", "fragment", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "sourceType", "c", "Lcom/transsion/moviedetailapi/bean/Subject;", "getSubject", "()Lcom/transsion/moviedetailapi/bean/Subject;", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FilmReviewActivity extends BaseActivity<lo.b> implements ro.a {

    private FilmReviewFragment fragment;

    private int sourceType;

    private Subject subject;

    public static final void f0(FilmReviewActivity filmReviewActivity, View view) {
        FilmReviewFragment filmReviewFragment = filmReviewActivity.fragment;
        if (filmReviewFragment != null) {
            filmReviewFragment.closeAffirm();
        }
    }

    public static final void g0(FilmReviewActivity filmReviewActivity, View view) {
        FilmReviewFragment filmReviewFragment = filmReviewActivity.fragment;
        if (filmReviewFragment != null) {
            filmReviewFragment.checkPost();
        }
    }

    public static final void h0() {
        ep.b bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0]);
        if (bVar != null) {
            bVar.c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void i0(Subject subject, GroupBean groupBean) {
        if (subject != null) {
            CustomPublishHeader customPublishHeader = ((lo.b) getMViewBinding()).f65999c;
            String title = subject.getTitle();
            Cover cover = subject.getCover();
            customPublishHeader.setHeader(title, cover != null ? cover.getUrl() : null);
        }
        if (groupBean != null) {
            ((lo.b) getMViewBinding()).f65999c.setHeader(groupBean.getName(), groupBean.getAvatar());
        }
    }

    private final void initData() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        GroupBean groupBean;
        ((lo.b) getMViewBinding()).f65999c.setOnBackClick(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                FilmReviewActivity.f0(this.f48478a, view);
            }
        });
        ((lo.b) getMViewBinding()).f65999c.setOnEditClick(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                FilmReviewActivity.g0(this.f48481a, view);
            }
        });
        this.sourceType = getIntent().getIntExtra("sourceType", 1);
        int intExtra = getIntent().getIntExtra("sourceMode", 0);
        if (getIntent().hasExtra("subject")) {
            Serializable serializableExtra = getIntent().getSerializableExtra("subject");
            Intrinsics.f(serializableExtra, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject");
            this.subject = (Subject) serializableExtra;
        }
        if (getIntent().hasExtra("group")) {
            Serializable serializableExtra2 = getIntent().getSerializableExtra("group");
            Intrinsics.f(serializableExtra2, "null cannot be cast to non-null type com.transsion.publish.api.GroupBean");
            groupBean = (GroupBean) serializableExtra2;
        } else {
            groupBean = null;
        }
        if (this.sourceType == 2) {
            i0(this.subject, groupBean);
        } else {
            ((lo.b) getMViewBinding()).f65999c.setTitle(getString(R$string.film_review_title));
        }
        this.fragment = FilmReviewFragment.INSTANCE.a(this.sourceType, this.subject, intExtra, groupBean);
        androidx.fragment.app.w wVarP = getSupportFragmentManager().p();
        int i10 = R$id.fl_content;
        FilmReviewFragment filmReviewFragment = this.fragment;
        Intrinsics.e(filmReviewFragment);
        wVarP.s(i10, filmReviewFragment).j();
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    @Override
    public void afterTextChanged(Editable editable) {
        ro.a.C0873a.a(this, editable);
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        ro.a.C0873a.b(this, charSequence, i10, i11, i12);
    }

    @Override
    public lo.b getViewBinding() {
        lo.b bVarC = lo.b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public String getPageName() {
        return this.sourceType == 2 ? "create_post" : "create_review";
    }

    @Override
    public boolean isChangeStatusBar() {
        return true;
    }

    @Override
    public boolean isStatusDark() {
        return !ij.y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j0(boolean enable) {
        CustomPublishHeader customPublishHeader = ((lo.b) getMViewBinding()).f65999c;
        if (customPublishHeader != null) {
            customPublishHeader.setPostEnable(enable);
        }
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void onBackPressed() {
        FilmReviewFragment filmReviewFragment = this.fragment;
        if (filmReviewFragment != null) {
            filmReviewFragment.closeAffirm();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initData();
        ((lo.b) getMViewBinding()).f65998b.postDelayed(new Runnable() {
            @Override
            public final void run() {
                FilmReviewActivity.h0();
            }
        }, 100L);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        ep.b bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0]);
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onTextChanged(CharSequence p10, int p11, int p12, int p13) {
    }
}
