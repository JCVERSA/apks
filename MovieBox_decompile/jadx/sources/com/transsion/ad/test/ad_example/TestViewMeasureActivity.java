package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import android.view.View;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0014¢\u0006\u0004\b\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestViewMeasureActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "Lcom/transsion/ad/strategy/t$a;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "", "isVisible", "onVisibilityChanged", "(Z)V", "Landroid/view/View;", "getVisibilityView", "()Landroid/view/View;", "Lsh/y;", "a", "Lsh/y;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestViewMeasureActivity extends TestBaseActivity implements com.transsion.ad.strategy.t.a {

    private sh.y binding;

    public static final void Q(TestViewMeasureActivity testViewMeasureActivity, View view) {
        sh.y yVar = testViewMeasureActivity.binding;
        if (yVar == null) {
            Intrinsics.y("binding");
            yVar = null;
        }
        yVar.f72192c.setVisibility(8);
    }

    public static final void R(TestViewMeasureActivity testViewMeasureActivity, View view) {
        sh.y yVar = testViewMeasureActivity.binding;
        if (yVar == null) {
            Intrinsics.y("binding");
            yVar = null;
        }
        yVar.f72192c.setVisibility(0);
    }

    @Override
    public String getLogTag() {
        return "view_measure";
    }

    @Override
    public double getVisibilityThreshold() {
        return com.transsion.ad.strategy.t.a.C0570a.a(this);
    }

    @Override
    public View getVisibilityView() {
        sh.y yVar = this.binding;
        if (yVar == null) {
            Intrinsics.y("binding");
            yVar = null;
        }
        View viewBottom = yVar.f72191b;
        Intrinsics.g(viewBottom, "viewBottom");
        return viewBottom;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sh.y yVarC = sh.y.c(getLayoutInflater());
        this.binding = yVarC;
        sh.y yVar = null;
        if (yVarC == null) {
            Intrinsics.y("binding");
            yVarC = null;
        }
        setContentView(yVarC.getRoot());
        com.transsion.ad.strategy.t.f41188a.j(this);
        sh.y yVar2 = this.binding;
        if (yVar2 == null) {
            Intrinsics.y("binding");
            yVar2 = null;
        }
        yVar2.f72192c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestViewMeasureActivity.Q(this.f41278a, view);
            }
        });
        sh.y yVar3 = this.binding;
        if (yVar3 == null) {
            Intrinsics.y("binding");
        } else {
            yVar = yVar3;
        }
        yVar.f72191b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestViewMeasureActivity.R(this.f41279a, view);
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        com.transsion.ad.strategy.t.f41188a.v(this);
    }

    @Override
    public void onVisibilityChanged(boolean isVisible) {
        xh.b.a.c(this, 0, getClassTag() + " --> onVisibilityChanged() --> isVisible = " + isVisible, null, false, 13, null);
    }
}
