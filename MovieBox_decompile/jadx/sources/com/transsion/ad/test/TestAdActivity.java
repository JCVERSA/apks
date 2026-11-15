package com.transsion.ad.test;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.strategy.e;
import com.transsion.ad.test.TestAdActivity;
import com.transsion.ad.test.ad_config.TestAdOtherConfigActivity;
import com.transsion.ad.test.ad_config.TestAdPlansActivity;
import com.transsion.ad.test.ad_config.TestAdPsOfferActivity;
import com.transsion.ad.test.ad_config.TestAdSceneActivity;
import com.transsion.ad.test.ad_example.TestAdAExampleActivity;
import com.transsion.core.utils.ToastUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import rh.f;
import sh.m;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/transsion/ad/test/TestAdActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "f0", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lsh/m;", "a", "Lsh/m;", "binding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdActivity extends TestBaseActivity {

    public static final Companion INSTANCE = new Companion(null);

    private m binding;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(AppCompatActivity activity) {
            Intrinsics.h(activity, "activity");
            activity.startActivity(new Intent(activity, (Class<?>) TestAdActivity.class));
        }

        private Companion() {
        }
    }

    public static final void X(TestAdActivity testAdActivity, View view) {
        f fVar = f.f71235a;
        fVar.f(!fVar.b());
        testAdActivity.f0();
    }

    public static final void Y(View view) {
        e eVar = e.f41179a;
        eVar.c().putString("non_ad_scene_version", "");
        eVar.c().putString("non_ad_plan_version", "");
        ToastUtil.f("已重置版本号缓存，请重启应用测试效果。");
    }

    public static final void Z(Button button, View view) {
        f fVar = f.f71235a;
        Boolean boolC = fVar.c();
        fVar.g(boolC != null ? Boolean.valueOf(!boolC.booleanValue()) : null);
        button.setText("未命中的广告计划 输出日志 = " + fVar.c());
    }

    public static final void a0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdSceneActivity.class));
    }

    public static final void b0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdPlansActivity.class));
    }

    public static final void c0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdPsOfferActivity.class));
    }

    public static final void d0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdOtherConfigActivity.class));
    }

    public static final void e0(TestAdActivity testAdActivity, View view) {
        testAdActivity.startActivity(new Intent(testAdActivity, (Class<?>) TestAdAExampleActivity.class));
    }

    private final void f0() {
        m mVar = this.binding;
        if (mVar == null) {
            Intrinsics.y("binding");
            mVar = null;
        }
        mVar.f72147d.setText(f.f71235a.b() ? "isGlobalAdOff = true" : "isGlobalAdOff = false");
    }

    @Override
    public String getLogTag() {
        return "ad_";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        m mVarC = m.c(getLayoutInflater());
        this.binding = mVarC;
        m mVar = null;
        if (mVarC == null) {
            Intrinsics.y("binding");
            mVarC = null;
        }
        setContentView(mVarC.getRoot());
        m mVar2 = this.binding;
        if (mVar2 == null) {
            Intrinsics.y("binding");
            mVar2 = null;
        }
        Button button = mVar2.f72147d;
        f0();
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdActivity.X(this.f15819a, view);
            }
        });
        m mVar3 = this.binding;
        if (mVar3 == null) {
            Intrinsics.y("binding");
            mVar3 = null;
        }
        mVar3.f72151h.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdActivity.Y(view);
            }
        });
        m mVar4 = this.binding;
        if (mVar4 == null) {
            Intrinsics.y("binding");
            mVar4 = null;
        }
        final Button button2 = mVar4.f72148e;
        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdActivity.Z(button2, view);
            }
        });
        button2.setText("未命中的广告计划 输出日志 = " + f.f71235a.c());
        m mVar5 = this.binding;
        if (mVar5 == null) {
            Intrinsics.y("binding");
            mVar5 = null;
        }
        mVar5.f72152i.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdActivity.a0(this.f15821a, view);
            }
        });
        m mVar6 = this.binding;
        if (mVar6 == null) {
            Intrinsics.y("binding");
            mVar6 = null;
        }
        mVar6.f72146c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdActivity.b0(this.f15822a, view);
            }
        });
        m mVar7 = this.binding;
        if (mVar7 == null) {
            Intrinsics.y("binding");
            mVar7 = null;
        }
        mVar7.f72150g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdActivity.c0(this.f15823a, view);
            }
        });
        m mVar8 = this.binding;
        if (mVar8 == null) {
            Intrinsics.y("binding");
            mVar8 = null;
        }
        mVar8.f72149f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdActivity.d0(this.f15824a, view);
            }
        });
        m mVar9 = this.binding;
        if (mVar9 == null) {
            Intrinsics.y("binding");
        } else {
            mVar = mVar9;
        }
        mVar.f72145b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdActivity.e0(this.f15825a, view);
            }
        });
    }
}
