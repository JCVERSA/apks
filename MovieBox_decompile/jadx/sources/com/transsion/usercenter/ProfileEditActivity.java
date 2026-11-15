package com.transsion.usercenter;

import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u0000 &2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0019\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010!\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001cR\u0016\u0010#\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u001cR\u0016\u0010%\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\u001c¨\u0006'"}, d2 = {"Lcom/transsion/usercenter/ProfileEditActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/k;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "d0", "()Lxu/k;", "", "isTranslucent", "()Z", "Ljo/a;", "a", "Lkotlin/Lazy;", "getPublishApi", "()Ljo/a;", "publishApi", "Lcom/transsion/usercenter/k;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getModel", "()Lcom/transsion/usercenter/k;", "model", "", "c", "Ljava/lang/String;", "avatarPath", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "avatarUrl", "e", "avatarUploadKey", "f", "nickName", "g", "birth", "h", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProfileEditActivity extends BaseActivity<xu.k> {

    private final Lazy publishApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ProfileEditActivity.f0();
        }
    });

    private final Lazy model = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return ProfileEditActivity.e0();
        }
    });

    private String avatarPath = "";

    private String avatarUrl = "";

    private String avatarUploadKey = "";

    private String nickName = "";

    private String birth = "2020-06-15";

    public static final k e0() {
        return new k();
    }

    public static final jo.a f0() {
        return (jo.a) TheRouter.d(jo.a.class, new Object[0]);
    }

    @Override
    public xu.k getViewBinding() {
        xu.k kVarC = xu.k.c(getLayoutInflater());
        Intrinsics.g(kVarC, "inflate(...)");
        return kVarC;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ConstraintLayout root = ((xu.k) getMViewBinding()).getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.e(root);
    }
}
