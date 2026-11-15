package androidx.activity;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroidx/activity/OnBackPressedDispatcher;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
final class ComponentActivity$onBackPressedDispatcher$2 extends Lambda implements Function0<OnBackPressedDispatcher> {
    final ComponentActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComponentActivity$onBackPressedDispatcher$2(ComponentActivity componentActivity) {
        super(0);
        this.this$0 = componentActivity;
    }

    public static final void c(ComponentActivity componentActivity) {
        try {
            super/*android.app.Activity*/.onBackPressed();
        } catch (IllegalStateException e10) {
            if (!Intrinsics.c(e10.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e10;
            }
        } catch (NullPointerException e11) {
            if (!Intrinsics.c(e11.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                throw e11;
            }
        }
    }

    public static final void d(ComponentActivity componentActivity, OnBackPressedDispatcher onBackPressedDispatcher) {
        componentActivity.w(onBackPressedDispatcher);
    }

    @Override
    public final OnBackPressedDispatcher invoke() {
        final ComponentActivity componentActivity = this.this$0;
        final OnBackPressedDispatcher onBackPressedDispatcher = new OnBackPressedDispatcher(new Runnable() {
            @Override
            public final void run() {
                ComponentActivity$onBackPressedDispatcher$2.c(componentActivity);
            }
        });
        final ComponentActivity componentActivity2 = this.this$0;
        if (Build.VERSION.SDK_INT >= 33) {
            if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                componentActivity2.w(onBackPressedDispatcher);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public final void run() {
                        ComponentActivity$onBackPressedDispatcher$2.d(componentActivity2, onBackPressedDispatcher);
                    }
                });
            }
        }
        return onBackPressedDispatcher;
    }
}
