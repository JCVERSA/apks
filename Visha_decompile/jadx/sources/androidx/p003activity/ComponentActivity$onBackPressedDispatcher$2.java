package androidx.p003activity;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import defpackage.c74;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroidx/activity/OnBackPressedDispatcher;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
public final class ComponentActivity$onBackPressedDispatcher$2 extends Lambda implements c74 {
    final ComponentActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComponentActivity$onBackPressedDispatcher$2(ComponentActivity componentActivity) {
        super(0);
        this.this$0 = componentActivity;
    }

    public static final void invoke$lambda$0(ComponentActivity componentActivity) {
        y45.j(componentActivity, "this$0");
        try {
            super/*android.app.Activity*/.onBackPressed();
        } catch (IllegalStateException e) {
            if (!y45.e(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e;
            }
        } catch (NullPointerException e2) {
            if (!y45.e(e2.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                throw e2;
            }
        }
    }

    public static final void invoke$lambda$2$lambda$1(ComponentActivity componentActivity, OnBackPressedDispatcher onBackPressedDispatcher) {
        y45.j(componentActivity, "this$0");
        y45.j(onBackPressedDispatcher, "$dispatcher");
        componentActivity.addObserverForBackInvoker(onBackPressedDispatcher);
    }

    @Override
    public final OnBackPressedDispatcher invoke() {
        final ComponentActivity componentActivity = this.this$0;
        final OnBackPressedDispatcher onBackPressedDispatcher = new OnBackPressedDispatcher(new Runnable() {
            @Override
            public final void run() {
                ComponentActivity$onBackPressedDispatcher$2.invoke$lambda$0(componentActivity);
            }
        });
        final ComponentActivity componentActivity2 = this.this$0;
        if (Build.VERSION.SDK_INT >= 33) {
            if (y45.e(Looper.myLooper(), Looper.getMainLooper())) {
                componentActivity2.addObserverForBackInvoker(onBackPressedDispatcher);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public final void run() {
                        ComponentActivity$onBackPressedDispatcher$2.invoke$lambda$2$lambda$1(componentActivity2, onBackPressedDispatcher);
                    }
                });
            }
        }
        return onBackPressedDispatcher;
    }
}
