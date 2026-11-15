package com.transsion.rewardscenter.ui;

import android.graphics.Color;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.rewardscenter.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f4.a;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H$¢\u0006\u0004\b\u0012\u0010\u0013J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0011H$¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0004¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\u0005¨\u0006\u0019"}, d2 = {"Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;", "Lf4/a;", "VB", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "<init>", "()V", "", "p0", "", "alpha", "r0", "(F)V", "", TtmlNode.ATTR_TTS_COLOR, "fraction", "k0", "(IF)I", "Landroid/view/View;", "n0", "()Landroid/view/View;", "o0", "m0", "()I", "l0", "initViewData", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class FitStatusBarFragment<VB extends f4.a> extends PageStatusFragment<VB> {

    public static final int f49217a = PageStatusFragment.$stable;

    private final int k0(int color, float fraction) {
        return Color.argb((int) (Color.alpha(color) * fraction), Color.red(color), Color.green(color), Color.blue(color));
    }

    private final void p0() {
        View viewO0 = o0();
        if (viewO0 != null) {
            viewO0.setOnScrollChangeListener(new View.OnScrollChangeListener() {
                @Override
                public final void onScrollChange(View view, int i10, int i11, int i12, int i13) {
                    FitStatusBarFragment.q0(this.f49264a, view, i10, i11, i12, i13);
                }
            });
        }
    }

    public static final void q0(FitStatusBarFragment fitStatusBarFragment, View view, int i10, int i11, int i12, int i13) {
        View viewN0 = fitStatusBarFragment.n0();
        if (viewN0 == null) {
            return;
        }
        int measuredHeight = viewN0.getMeasuredHeight();
        if (measuredHeight < 1) {
            measuredHeight = com.transsion.core.utils.e.a(48.0f);
        }
        fitStatusBarFragment.r0(Math.abs(i11 * 1.0f) / measuredHeight);
    }

    private final void r0(float alpha) {
        View viewN0;
        if (isAdded() && (viewN0 = n0()) != null) {
            viewN0.setBackgroundColor(k0(androidx.core.content.b.getColor(requireContext(), m0()), RangesKt.g(alpha, 1.0f)));
        }
    }

    @Override
    public void initViewData() {
        l0();
        p0();
    }

    protected final void l0() {
        View viewN0 = n0();
        if (viewN0 != null) {
            uf.c.e(viewN0);
        }
        FragmentActivity activity = getActivity();
        BaseNewActivity baseNewActivity = activity instanceof BaseNewActivity ? (BaseNewActivity) activity : null;
        if (baseNewActivity != null) {
            baseNewActivity.t0();
        }
        ImmersionBar.with(this).statusBarDarkFont(false).init();
    }

    protected int m0() {
        return R$color.rewards_center_title;
    }

    protected abstract View n0();

    protected abstract View o0();
}
