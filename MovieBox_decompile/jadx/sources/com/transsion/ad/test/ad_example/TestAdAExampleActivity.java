package com.transsion.ad.test.ad_example;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdAExampleActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "", "a0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lsh/h;", "a", "Lsh/h;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdAExampleActivity extends AppCompatActivity {

    private sh.h binding;

    private final void a0() {
        sh.h hVar = this.binding;
        sh.h hVar2 = null;
        if (hVar == null) {
            Intrinsics.y("binding");
            hVar = null;
        }
        hVar.f72133l.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.b0(this.f41257a, view);
            }
        });
        sh.h hVar3 = this.binding;
        if (hVar3 == null) {
            Intrinsics.y("binding");
            hVar3 = null;
        }
        hVar3.f72131j.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.c0(this.f41260a, view);
            }
        });
        sh.h hVar4 = this.binding;
        if (hVar4 == null) {
            Intrinsics.y("binding");
            hVar4 = null;
        }
        hVar4.f72132k.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.e0(this.f41261a, view);
            }
        });
        sh.h hVar5 = this.binding;
        if (hVar5 == null) {
            Intrinsics.y("binding");
            hVar5 = null;
        }
        hVar5.f72126e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.f0(this.f41262a, view);
            }
        });
        sh.h hVar6 = this.binding;
        if (hVar6 == null) {
            Intrinsics.y("binding");
            hVar6 = null;
        }
        hVar6.f72125d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.g0(this.f41263a, view);
            }
        });
        sh.h hVar7 = this.binding;
        if (hVar7 == null) {
            Intrinsics.y("binding");
            hVar7 = null;
        }
        hVar7.f72127f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.h0(this.f41264a, view);
            }
        });
        sh.h hVar8 = this.binding;
        if (hVar8 == null) {
            Intrinsics.y("binding");
            hVar8 = null;
        }
        hVar8.f72128g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.i0(this.f41265a, view);
            }
        });
        sh.h hVar9 = this.binding;
        if (hVar9 == null) {
            Intrinsics.y("binding");
            hVar9 = null;
        }
        hVar9.f72129h.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.j0(this.f41266a, view);
            }
        });
        sh.h hVar10 = this.binding;
        if (hVar10 == null) {
            Intrinsics.y("binding");
            hVar10 = null;
        }
        hVar10.f72130i.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.k0(this.f41267a, view);
            }
        });
        sh.h hVar11 = this.binding;
        if (hVar11 == null) {
            Intrinsics.y("binding");
            hVar11 = null;
        }
        hVar11.f72123b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.l0(this.f41258a, view);
            }
        });
        sh.h hVar12 = this.binding;
        if (hVar12 == null) {
            Intrinsics.y("binding");
        } else {
            hVar2 = hVar12;
        }
        hVar2.f72124c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdAExampleActivity.d0(this.f41259a, view);
            }
        });
    }

    public static final void b0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestViewMeasureActivity.class));
    }

    public static final void c0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestAdSplashActivity.class));
    }

    public static final void d0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestAdIrregularViewActivity.class));
    }

    public static final void e0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestAdVideoActivity.class));
    }

    public static final void f0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestAdInterstitialActivity.class));
    }

    public static final void g0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestAdBannerActivity.class));
    }

    public static final void h0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestAdNativeActivity.class));
    }

    public static final void i0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestAdNativeMultipleActivity.class));
    }

    public static final void j0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestAdNativeListActivity.class));
    }

    public static final void k0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestAdNativeSspActivity.class));
    }

    public static final void l0(TestAdAExampleActivity testAdAExampleActivity, View view) {
        testAdAExampleActivity.startActivity(new Intent(testAdAExampleActivity, (Class<?>) TestAdIconActivity.class));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sh.h hVarC = sh.h.c(getLayoutInflater());
        this.binding = hVarC;
        if (hVarC == null) {
            Intrinsics.y("binding");
            hVarC = null;
        }
        setContentView(hVarC.getRoot());
        a0();
    }
}
