package com.yandex.mobile.ads.common;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.Window;
import android.widget.RelativeLayout;
import androidx.p003activity.ComponentActivity;
import com.yandex.mobile.ads.impl.b1;
import com.yandex.mobile.ads.impl.c1;
import com.yandex.mobile.ads.impl.d1;
import com.yandex.mobile.ads.impl.e1;
import com.yandex.mobile.ads.impl.m1;
import com.yandex.mobile.ads.impl.o1;
import com.yandex.mobile.ads.impl.sp0;
import com.yandex.mobile.ads.impl.t8;
import com.yandex.mobile.ads.impl.uh2;
import com.yandex.mobile.ads.impl.v1;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/yandex/mobile/ads/common/AdActivity;", "Landroidx/activity/ComponentActivity;", MethodDecl.initName, "()V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class AdActivity extends ComponentActivity {
    private b1 a;

    @Override
    public final void onBackPressed() {
        b1 b1Var = this.a;
        if (b1Var == null || b1Var.c()) {
            super.onBackPressed();
        }
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        y45.j(configuration, "config");
        super.onConfigurationChanged(configuration);
        b1 b1Var = this.a;
        if (b1Var != null) {
            b1Var.a(configuration);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003c  */
    @Override
    public final void onCreate(Bundle bundle) {
        Long lValueOf;
        t8 t8VarD;
        m1 m1VarA;
        super.onCreate(bundle);
        y45.j(this, "activity");
        e1 e1Var = new e1(this);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        Intent intent = getIntent();
        zfb zfbVar = null;
        if (intent == null) {
            m1VarA = null;
        } else {
            Window window = getWindow();
            int i = d1.d;
            d1 d1VarA = d1.a.a();
            try {
                if (intent.hasExtra("data_identifier")) {
                    long longExtra = intent.getLongExtra("data_identifier", -1L);
                    lValueOf = Long.valueOf(longExtra);
                    if (longExtra == -1) {
                        lValueOf = null;
                    }
                } else {
                    lValueOf = null;
                }
            } catch (Exception unused) {
                sp0.b(new Object[0]);
            }
            c1 c1VarA = lValueOf != null ? d1VarA.a(lValueOf.longValue()) : null;
            if (c1VarA != null) {
                try {
                    t8VarD = c1VarA.d();
                } catch (Exception unused2) {
                    sp0.b(new Object[0]);
                    t8VarD = null;
                }
            } else {
                t8VarD = null;
            }
            v1 v1Var = new v1(this, t8VarD);
            o1 o1VarA = o1.b.a();
            y45.g(window);
            m1VarA = o1VarA.a(this, relativeLayout, v1Var, e1Var, intent, window, c1VarA);
        }
        b1 b1Var = m1VarA != null ? new b1(this, relativeLayout, m1VarA, e1Var, new uh2()) : null;
        this.a = b1Var;
        if (b1Var != null) {
            b1Var.b();
            zfbVar = zfb.a;
        }
        if (zfbVar == null) {
            finish();
        }
    }

    @Override
    public final void onDestroy() {
        b1 b1Var = this.a;
        if (b1Var != null) {
            b1Var.a();
        }
        super.onDestroy();
    }

    @Override
    public final void onPause() {
        b1 b1Var = this.a;
        if (b1Var != null) {
            b1Var.d();
        }
        super.onPause();
    }

    @Override
    public final void onResume() {
        super.onResume();
        b1 b1Var = this.a;
        if (b1Var != null) {
            b1Var.e();
        }
    }
}
