package androidx.p003activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.core.app.NotificationCompat;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleEventObserver;
import androidx.p004lifecycle.LifecycleOwner;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import java.lang.reflect.Field;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0004\u000f\u000e\u0010\u0011B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\r¨\u0006\u0012"}, d2 = {"Landroidx/activity/ImmLeaksCleaner;", "Landroidx/lifecycle/LifecycleEventObserver;", "Landroid/app/Activity;", "activity", MethodDecl.initName, "(Landroid/app/Activity;)V", "Landroidx/lifecycle/LifecycleOwner;", "source", "Landroidx/lifecycle/Lifecycle$Event;", NotificationCompat.CATEGORY_EVENT, "Lzfb;", "onStateChanged", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V", "Landroid/app/Activity;", "Companion", "Cleaner", "FailedInitialization", "ValidCleaner", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ImmLeaksCleaner implements LifecycleEventObserver {

    public static final Companion INSTANCE = new Companion(null);
    private static final yi5 cleaner$delegate = b.a(new c74() {
        @Override
        public final ImmLeaksCleaner.Cleaner invoke() {
            try {
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                declaredField3.setAccessible(true);
                y45.i(declaredField3, "hField");
                y45.i(declaredField, "servedViewField");
                y45.i(declaredField2, "nextServedViewField");
                return new ImmLeaksCleaner.ValidCleaner(declaredField3, declaredField, declaredField2);
            } catch (NoSuchFieldException unused) {
                return ImmLeaksCleaner.FailedInitialization.INSTANCE;
            }
        }
    });
    private final Activity activity;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0004¢\u0006\u0002\u0010\u0002J\f\u0010\u000b\u001a\u00020\f*\u00020\u0004H&R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u0001*\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b*\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0082\u0001\u0002\r\u000e¨\u0006\u000f"}, d2 = {"Landroidx/activity/ImmLeaksCleaner$Cleaner;", "", "()V", "lock", "Landroid/view/inputmethod/InputMethodManager;", "getLock", "(Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/Object;", "servedView", "Landroid/view/View;", "getServedView", "(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;", "clearNextServedView", "", "Landroidx/activity/ImmLeaksCleaner$FailedInitialization;", "Landroidx/activity/ImmLeaksCleaner$ValidCleaner;", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static abstract class Cleaner {
        public Cleaner(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public abstract boolean clearNextServedView(InputMethodManager inputMethodManager);

        public abstract Object getLock(InputMethodManager inputMethodManager);

        public abstract View getServedView(InputMethodManager inputMethodManager);

        private Cleaner() {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/activity/ImmLeaksCleaner$Companion;", "", MethodDecl.initName, "()V", "Landroidx/activity/ImmLeaksCleaner$Cleaner;", "cleaner$delegate", "Lyi5;", "getCleaner", "()Landroidx/activity/ImmLeaksCleaner$Cleaner;", "cleaner", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"SoonBlockedPrivateApi"})
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Cleaner getCleaner() {
            return (Cleaner) ImmLeaksCleaner.cleaner$delegate.getValue();
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\f\u001a\u00020\r*\u00020\u0005H\u0016R\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u0004\u0018\u00010\t*\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Landroidx/activity/ImmLeaksCleaner$FailedInitialization;", "Landroidx/activity/ImmLeaksCleaner$Cleaner;", "()V", "lock", "", "Landroid/view/inputmethod/InputMethodManager;", "getLock", "(Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/Object;", "servedView", "Landroid/view/View;", "getServedView", "(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;", "clearNextServedView", "", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class FailedInitialization extends Cleaner {
        public static final FailedInitialization INSTANCE = new FailedInitialization();

        private FailedInitialization() {
            super(null);
        }

        @Override
        public boolean clearNextServedView(InputMethodManager inputMethodManager) {
            y45.j(inputMethodManager, "<this>");
            return false;
        }

        @Override
        public Object getLock(InputMethodManager inputMethodManager) {
            y45.j(inputMethodManager, "<this>");
            return null;
        }

        @Override
        public View getServedView(InputMethodManager inputMethodManager) {
            y45.j(inputMethodManager, "<this>");
            return null;
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\f\u0010\u0010\u001a\u00020\u0011*\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b*\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u0004\u0018\u00010\r*\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Landroidx/activity/ImmLeaksCleaner$ValidCleaner;", "Landroidx/activity/ImmLeaksCleaner$Cleaner;", "hField", "Ljava/lang/reflect/Field;", "servedViewField", "nextServedViewField", "(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V", "lock", "", "Landroid/view/inputmethod/InputMethodManager;", "getLock", "(Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/Object;", "servedView", "Landroid/view/View;", "getServedView", "(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;", "clearNextServedView", "", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ValidCleaner extends Cleaner {
        private final Field hField;
        private final Field nextServedViewField;
        private final Field servedViewField;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ValidCleaner(Field field, Field field2, Field field3) {
            super(null);
            y45.j(field, "hField");
            y45.j(field2, "servedViewField");
            y45.j(field3, "nextServedViewField");
            this.hField = field;
            this.servedViewField = field2;
            this.nextServedViewField = field3;
        }

        @Override
        public boolean clearNextServedView(InputMethodManager inputMethodManager) {
            y45.j(inputMethodManager, "<this>");
            try {
                this.nextServedViewField.set(inputMethodManager, null);
                return true;
            } catch (IllegalAccessException unused) {
                return false;
            }
        }

        @Override
        public Object getLock(InputMethodManager inputMethodManager) {
            y45.j(inputMethodManager, "<this>");
            try {
                return this.hField.get(inputMethodManager);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override
        public View getServedView(InputMethodManager inputMethodManager) {
            y45.j(inputMethodManager, "<this>");
            try {
                return (View) this.servedViewField.get(inputMethodManager);
            } catch (ClassCastException | IllegalAccessException unused) {
                return null;
            }
        }
    }

    public ImmLeaksCleaner(Activity activity) {
        y45.j(activity, "activity");
        this.activity = activity;
    }

    @Override
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        y45.j(source, "source");
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        if (event != Lifecycle.Event.ON_DESTROY) {
            return;
        }
        Object systemService = this.activity.getSystemService("input_method");
        y45.h(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        Cleaner cleaner = INSTANCE.getCleaner();
        Object lock = cleaner.getLock(inputMethodManager);
        if (lock == null) {
            return;
        }
        synchronized (lock) {
            View servedView = cleaner.getServedView(inputMethodManager);
            if (servedView == null) {
                return;
            }
            if (servedView.isAttachedToWindow()) {
                return;
            }
            boolean zClearNextServedView = cleaner.clearNextServedView(inputMethodManager);
            if (zClearNextServedView) {
                inputMethodManager.isActive();
            }
        }
    }
}
