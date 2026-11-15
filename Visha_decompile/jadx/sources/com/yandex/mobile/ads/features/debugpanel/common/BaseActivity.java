package com.yandex.mobile.ads.features.debugpanel.common;

import android.app.Activity;
import android.os.Bundle;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.yandex.mobile.ads.impl.ih2;
import com.yandex.mobile.ads.impl.jh2;
import com.yandex.mobile.ads.impl.ru;
import defpackage.nk1;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0001\u0006B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;", "Lcom/yandex/mobile/ads/impl/ih2;", "T", "Landroid/app/Activity;", MethodDecl.initName, "()V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public abstract class BaseActivity<T extends ih2> extends Activity {
    private final nk1 a = ru.a();
    private final Object b;
    private T c;

    public static final class a {
        private final Object a;
        private final ih2 b;

        public a() {
            this(0);
        }

        public final Object a() {
            return this.a;
        }

        public final ih2 b() {
            return this.b;
        }

        public a(Object obj, ih2 ih2Var) {
            this.a = obj;
            this.b = ih2Var;
        }

        public a(int i) {
            this(null, null);
        }
    }

    public BaseActivity() {
        Object lastNonConfigurationInstance = getLastNonConfigurationInstance();
        a aVar = lastNonConfigurationInstance instanceof a ? (a) lastNonConfigurationInstance : null;
        this.b = aVar != null ? aVar.a() : null;
    }

    public final nk1 getA() {
        return this.a;
    }

    public final T b() {
        T t = this.c;
        if (t != null) {
            return t;
        }
        T t2 = (T) c().a();
        this.c = t2;
        return t2;
    }

    public abstract jh2<T> c();

    @Override
    public void onCreate(Bundle bundle) {
        Object lastNonConfigurationInstance = getLastNonConfigurationInstance();
        T t = null;
        a aVar = lastNonConfigurationInstance instanceof a ? (a) lastNonConfigurationInstance : null;
        if (aVar != null) {
            ih2 ih2VarB = aVar.b();
            if (ih2VarB != null) {
                t = (T) ih2VarB;
            }
            this.c = t;
        }
        super.onCreate(bundle);
    }

    @Override
    public void onDestroy() {
        T t;
        super.onDestroy();
        d.f(this.a, null, 1, null);
        if (isChangingConfigurations() || (t = this.c) == null) {
            return;
        }
        t.a();
    }

    @Override
    public final Object onRetainNonConfigurationInstance() {
        return new a(null, b());
    }
}
