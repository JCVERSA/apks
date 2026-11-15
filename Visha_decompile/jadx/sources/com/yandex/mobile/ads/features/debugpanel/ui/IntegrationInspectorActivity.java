package com.yandex.mobile.ads.features.debugpanel.ui;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.features.debugpanel.common.BaseActivity;
import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import com.yandex.mobile.ads.impl.dx;
import com.yandex.mobile.ads.impl.dy;
import com.yandex.mobile.ads.impl.ey;
import com.yandex.mobile.ads.impl.fp0;
import com.yandex.mobile.ads.impl.fy;
import com.yandex.mobile.ads.impl.gy;
import com.yandex.mobile.ads.impl.hh2;
import com.yandex.mobile.ads.impl.hy;
import com.yandex.mobile.ads.impl.jh2;
import com.yandex.mobile.ads.impl.lx;
import com.yandex.mobile.ads.impl.qw;
import com.yandex.mobile.ads.impl.vh2;
import defpackage.c74;
import defpackage.el0;
import defpackage.gx9;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;", "Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;", "Lcom/yandex/mobile/ads/impl/fp0;", MethodDecl.initName, "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class IntegrationInspectorActivity extends BaseActivity<fp0> {
    private final yi5 d = kotlin.b.a(new a());
    private final yi5 e = kotlin.b.a(new e());
    private final yi5 f = kotlin.b.a(new d());

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            Context applicationContext = IntegrationInspectorActivity.this.getApplicationContext();
            y45.i(applicationContext, "getApplicationContext(...)");
            return new dx(applicationContext);
        }
    }

    @nt1(c = "com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity$setupUiHandlers$1$1", f = "IntegrationInspectorActivity.kt", l = {43}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        int b;

        public static final class a<T> implements oz3 {
            final IntegrationInspectorActivity a;

            public a(IntegrationInspectorActivity integrationInspectorActivity) {
                this.a = integrationInspectorActivity;
            }

            @Override
            public final Object emit(Object obj, wh1 wh1Var) {
                IntegrationInspectorActivity.b(this.a).a((ey) obj);
                return zfb.a;
            }
        }

        public b(wh1<? super b> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return IntegrationInspectorActivity.this.new b(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return IntegrationInspectorActivity.this.new b((wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                nz3 nz3VarC = IntegrationInspectorActivity.d(IntegrationInspectorActivity.this).c();
                a aVar = new a(IntegrationInspectorActivity.this);
                this.b = 1;
                if (nz3VarC.collect(aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return zfb.a;
        }
    }

    @nt1(c = "com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity$setupUiHandlers$1$2", f = "IntegrationInspectorActivity.kt", l = {48}, m = "invokeSuspend")
    public static final class c extends SuspendLambda implements s74 {
        int b;

        public static final class a<T> implements oz3 {
            final IntegrationInspectorActivity a;

            public a(IntegrationInspectorActivity integrationInspectorActivity) {
                this.a = integrationInspectorActivity;
            }

            @Override
            public final Object emit(Object obj, wh1 wh1Var) {
                IntegrationInspectorActivity.c(this.a).a((gy) obj);
                return zfb.a;
            }
        }

        public c(wh1<? super c> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return IntegrationInspectorActivity.this.new c(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return IntegrationInspectorActivity.this.new c((wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                gx9 gx9VarD = IntegrationInspectorActivity.d(IntegrationInspectorActivity.this).d();
                a aVar = new a(IntegrationInspectorActivity.this);
                this.b = 1;
                if (gx9VarD.collect(aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    public static final class d extends Lambda implements c74 {
        public d() {
            super(0);
        }

        @Override
        public final Object invoke() {
            return new fy(IntegrationInspectorActivity.this);
        }
    }

    public static final class e extends Lambda implements c74 {
        public e() {
            super(0);
        }

        @Override
        public final Object invoke() {
            IntegrationInspectorActivity integrationInspectorActivity = IntegrationInspectorActivity.this;
            com.yandex.mobile.ads.features.debugpanel.ui.a aVar = new com.yandex.mobile.ads.features.debugpanel.ui.a(IntegrationInspectorActivity.d(IntegrationInspectorActivity.this));
            lx lxVarA = IntegrationInspectorActivity.a(IntegrationInspectorActivity.this).a();
            return new hy(integrationInspectorActivity, aVar, lxVarA, new LinearLayoutManager(integrationInspectorActivity, 1, false), new qw(aVar, lxVarA, new hh2(aVar, lxVarA), new vh2()));
        }
    }

    public static final dx a(IntegrationInspectorActivity integrationInspectorActivity) {
        return (dx) integrationInspectorActivity.d.getValue();
    }

    public static final fy b(IntegrationInspectorActivity integrationInspectorActivity) {
        return (fy) integrationInspectorActivity.f.getValue();
    }

    public static final hy c(IntegrationInspectorActivity integrationInspectorActivity) {
        return (hy) integrationInspectorActivity.e.getValue();
    }

    private final void e() {
        nk1 a2 = getA();
        el0.d(a2, null, null, new b(null), 3, null);
        el0.d(a2, null, null, new c(null), 3, null);
    }

    @Override
    public final void onBackPressed() {
        b().a(dy.d.a);
    }

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_debug);
        d();
        b().a(dy.a.a);
        e();
    }

    @Override
    public final void onDestroy() {
        ((dx) this.d.getValue()).a().a();
        super.onDestroy();
    }

    public static final fp0 d(IntegrationInspectorActivity integrationInspectorActivity) {
        return integrationInspectorActivity.b();
    }

    public static final void a(IntegrationInspectorActivity integrationInspectorActivity, View view) {
        y45.j(integrationInspectorActivity, "this$0");
        integrationInspectorActivity.b().a(dy.g.a);
    }

    private final void d() {
        ((ImageButton) findViewById(R.id.toolbar_share_button)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                IntegrationInspectorActivity.a(this.b, view);
            }
        });
    }

    @Override
    public final jh2<fp0> c() {
        return ((dx) this.d.getValue()).b();
    }
}
