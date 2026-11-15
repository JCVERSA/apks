package com.transsion.postdetail.ui.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.w;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.transsion.baselib.report.k;
import com.transsion.baseui.R$color;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment;
import com.transsion.subtitle.dialog.SubtitleMainDialog2;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import cw.e;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 B2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001 B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0016\u0010\u000fJ\u000f\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0017\u0010\u000fJ\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001e\u0010\u000fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b%\u0010!R\u0018\u0010(\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010!R\u0018\u0010*\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b)\u0010!R\u0018\u0010,\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b+\u0010!R\u0018\u0010.\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b-\u0010!R\u0018\u00100\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010/R\u0018\u00102\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b1\u0010/R\u0018\u00104\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b3\u0010!R\u0018\u00107\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u00109\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b8\u00106R\u0018\u0010;\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b:\u00106R\u0018\u0010=\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b<\u00106R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006C"}, d2 = {"Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lwn/b;", "Lcom/transsion/videofloat/manager/c;", "<init>", "()V", "", "d0", "f0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "isAttach", "()Z", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "c0", "()Lwn/b;", "isTranslucent", "isStatusDark", "", "statusColor", "()I", "onBackPressed", "onPause", "h", "isMusicFloatingAttach", "", "a", "Ljava/lang/String;", "path", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "url", "c", "proxyUrl", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "name", "e", "resourceId", "f", "postId", "g", "subjectId", "Ljava/lang/Boolean;", "completed", "i", "isSeries", "j", "pageFrom", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/Integer;", "videoHeight", "l", "videoWidth", "m", "parentPosition", "n", RequestParameters.POSITION, "Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;", "o", "Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;", "fragment", TtmlNode.TAG_P, "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocalVideoDetailActivity extends BaseActivity<wn.b> implements com.transsion.videofloat.manager.c {

    public String path;

    public String url;

    public String proxyUrl;

    public String name;

    public String resourceId;

    public String postId;

    public String subjectId;

    public String pageFrom;

    private LocalVideoDetailFragment fragment;

    public Boolean completed = Boolean.TRUE;

    public Boolean isSeries = Boolean.FALSE;

    public Integer videoHeight = 0;

    public Integer videoWidth = 0;

    public Integer parentPosition = -1;

    public Integer position = -1;

    private final void d0() {
        Uri data = getIntent().getData();
        Intent intent = getIntent();
        String type = intent != null ? intent.getType() : null;
        if ((type == null || !StringsKt.W(type, "video/", false, 2, null)) && (type == null || !StringsKt.W(type, "audio/", false, 2, null))) {
            return;
        }
        if (StringsKt.W(String.valueOf(data), "http", false, 2, null)) {
            this.url = String.valueOf(data);
        } else {
            this.path = String.valueOf(data);
        }
    }

    public static final void e0() {
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.w(0.0f);
        }
    }

    private final void f0() {
        LocalVideoDetailFragment localVideoDetailFragment = this.fragment;
        if (localVideoDetailFragment != null) {
            localVideoDetailFragment.m3();
        }
        this.fragment = LocalVideoDetailFragment.INSTANCE.a(this.path, this.url, this.name, this.resourceId, this.postId, this.subjectId, this.proxyUrl, this.completed, this.isSeries, this.pageFrom, this.videoHeight, this.videoWidth, this.parentPosition, this.position);
        w wVarP = getSupportFragmentManager().p();
        int i10 = R$id.container;
        LocalVideoDetailFragment localVideoDetailFragment2 = this.fragment;
        Intrinsics.e(localVideoDetailFragment2);
        wVarP.s(i10, localVideoDetailFragment2).j();
    }

    @Override
    public wn.b getViewBinding() {
        wn.b bVarC = wn.b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public void h() {
        LocalVideoDetailFragment localVideoDetailFragment = this.fragment;
        if (localVideoDetailFragment != null) {
            localVideoDetailFragment.m3();
        }
    }

    @Override
    public boolean isAttach() {
        return false;
    }

    @Override
    public boolean isMusicFloatingAttach() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return false;
    }

    @Override
    public boolean isTranslucent() {
        return false;
    }

    @Override
    public void onBackPressed() {
        ep.b bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0]);
        if (bVar != null) {
            bVar.e();
        }
        super.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "LocalVideoDetail", "LocalVideoDetailActivity onCreate", false, 4, null);
        wf.a.C0922a.f(c0922a, "VideoFloat", "LocalVideoDetailActivity onCreate, " + (savedInstanceState == null), false, 4, null);
        ep.b bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0]);
        if (bVar != null) {
            bVar.h();
        }
        ep.b bVar2 = (ep.b) TheRouter.d(ep.b.class, new Object[0]);
        if (bVar2 != null) {
            bVar2.c();
        }
        d0();
        k.f42210a.w(1, this);
        if (savedInstanceState == null) {
            f0();
        }
        ((wn.b) getMViewBinding()).getRoot().post(new Runnable() {
            @Override
            public final void run() {
                LocalVideoDetailActivity.e0();
            }
        });
    }

    @Override
    protected void onNewIntent(Intent intent) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        boolean zC = Intrinsics.c(this.subjectId, intent.getStringExtra("extra_subject_id"));
        String stringExtra = intent.getStringExtra("extra_page_from");
        setIntent(intent);
        TheRouter.l(this);
        d0();
        if (Intrinsics.c(stringExtra, "media_notification")) {
            LocalVideoDetailFragment localVideoDetailFragment = this.fragment;
            if (localVideoDetailFragment != null) {
                localVideoDetailFragment.e3();
                return;
            }
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoDetail", "LocalVideoDetailActivity onNewIntent,isCurrentSubject = " + zC, false, 4, null);
        if (zC) {
            LocalVideoDetailFragment localVideoDetailFragment2 = this.fragment;
            if (localVideoDetailFragment2 != null) {
                localVideoDetailFragment2.W1(this.subjectId, this.resourceId);
                return;
            }
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Fragment fragmentK0 = getSupportFragmentManager().k0("fragment_subtitle_main_dialog");
            if (fragmentK0 != null && (fragmentK0 instanceof SubtitleMainDialog2)) {
                ((SubtitleMainDialog2) fragmentK0).dismissAllowingStateLoss();
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        f0();
    }

    @Override
    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            LocalVideoDetailFragment localVideoDetailFragment = this.fragment;
            if (localVideoDetailFragment != null) {
                localVideoDetailFragment.m3();
            }
            e.f58665a.b().j(this);
        }
    }

    @Override
    public int statusColor() {
        return R$color.base_color_black;
    }
}
