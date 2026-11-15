package com.transsion.shorttv.base.activity;

import android.R;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f4.a;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;
import ur.j;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0011\u0010\u0006J\u0019\u0010\u0012\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u000fJ\u000f\u0010\u0013\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0013\u0010\u0006J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001b\u0010\u0016J\u000f\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001c\u0010\u0016J\u000f\u0010\u001d\u001a\u00020\tH\u0014¢\u0006\u0004\b\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\tH\u0014¢\u0006\u0004\b\u001e\u0010\u0006J\u000f\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\u0014H\u0016¢\u0006\u0004\b \u0010\u0016J\u000f\u0010!\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\u0006J\u0019\u0010$\u001a\u00020\u00142\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b$\u0010%R\u001d\u0010+\u001a\u0004\u0018\u00010&8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00101\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010.¨\u00062"}, d2 = {"Lcom/transsion/shorttv/base/activity/BaseActivity;", "Lf4/a;", "T", "Lcom/transsion/shorttv/base/activity/BaseMusicFloatActivity;", "Lhr/e;", "<init>", "()V", "Landroid/content/Context;", "newBase", "", "attachBaseContext", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "setView", TmcConstants.NAVIGATION_ON_START, "initView", "setStatusBar", "", "setImmersionStatusBar", "()Z", "isChangeStatusBar", "", "statusColor", "()I", "isStatusDark", "isTranslucent", "onStop", "onDestroy", "onResume", "isAttach", "onPause", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "Lqi/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "getLogViewConfig", "()Lqi/b;", "logViewConfig", "", "e", "F", "downY", "f", "moveY", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseActivity<T extends f4.a> extends BaseMusicFloatActivity<T> implements hr.e {

    private final Lazy logViewConfig = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return BaseActivity.U(this.f50745a);
        }
    });

    private float downY;

    private float moveY;

    public static final qi.b U(BaseActivity baseActivity) {
        return baseActivity.newLogViewConfig();
    }

    public static final WindowInsetsCompat V(View v10, WindowInsetsCompat insets) {
        Intrinsics.h(v10, "v");
        Intrinsics.h(insets, "insets");
        z0.c insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.g(insets2, "getInsets(...)");
        v10.setPadding(v10.getPaddingLeft(), v10.getPaddingTop(), v10.getPaddingRight(), insets2.f76468d);
        return WindowInsetsCompat.CONSUMED;
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        if (newBase == null) {
            super.attachBaseContext(newBase);
        } else {
            com.transsion.shorttv.base.locale.d.b bVar = com.transsion.shorttv.base.locale.d.f50790f;
            super.attachBaseContext(bVar.i(newBase, bVar.e().h()));
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        j jVarP;
        Integer numValueOf = event != null ? Integer.valueOf(event.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.downY = event.getRawY();
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            float rawY = event.getRawY();
            this.moveY = rawY;
            if (Math.abs(rawY - this.downY) > 50.0f && (jVarP = P()) != null) {
                jVarP.b();
            }
        }
        return super.dispatchTouchEvent(event);
    }

    @Override
    public qi.b getLogViewConfig() {
        return (qi.b) this.logViewConfig.getValue();
    }

    public void initView(Bundle savedInstanceState) {
    }

    public boolean isAttach() {
        return true;
    }

    public boolean isChangeStatusBar() {
        return false;
    }

    public boolean isStatusDark() {
        return true;
    }

    public boolean isTranslucent() {
        return false;
    }

    public qi.b newLogViewConfig() {
        return hr.e.a.a(this);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        getWindow().clearFlags(ASTNode.NOJIT);
        getWindow().addFlags(Integer.MIN_VALUE);
        getWindow().setNavigationBarColor(ViewCompat.MEASURED_STATE_MASK);
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT >= 35) {
            WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
            View viewFindViewById = getWindow().getDecorView().findViewById(R.id.content);
            ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new OnApplyWindowInsetsListener() {
                @Override
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return BaseActivity.V(view, windowInsetsCompat);
                }
            });
            viewFindViewById.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        setStatusBar();
        initView(savedInstanceState);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onPause() {
        super.onPause();
        hr.e.a.b(this);
    }

    @Override
    public void onResume() {
        j jVarP;
        super.onResume();
        hr.e.a.c(this);
        if (!isAttach() || (jVarP = P()) == null) {
            return;
        }
        jVarP.a(new WeakReference(this));
    }

    @Override
    protected void onStart() {
        super.onStart();
    }

    @Override
    protected void onStop() {
        j jVarP;
        super.onStop();
        if (!isAttach() || (jVarP = P()) == null) {
            return;
        }
        jVarP.e(new WeakReference(this));
    }

    public boolean setImmersionStatusBar() {
        return true;
    }

    public void setStatusBar() {
        if (setImmersionStatusBar()) {
            ImmersionBar immersionBarWith = ImmersionBar.with(this);
            if (isChangeStatusBar()) {
                immersionBarWith.statusBarColor(statusColor());
            }
            if (isTranslucent()) {
                immersionBarWith.statusBarAlpha(0.0f);
            } else {
                immersionBarWith.statusBarAlpha(1.0f);
            }
            if (isStatusDark()) {
                immersionBarWith.statusBarDarkFont(true);
            } else {
                immersionBarWith.statusBarDarkFont(false);
            }
            immersionBarWith.init();
        }
    }

    @Override
    protected void setView() {
        setContentView(R$layout.short_tv_base_layout_with_no_network);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.llRootView);
        if (frameLayout != null) {
            frameLayout.addView(getMViewBinding().getRoot());
        }
    }

    public int statusColor() {
        return R$color.image_skeleton;
    }
}
