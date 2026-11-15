package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.p009lifecycle.Lifecycle;
import java.lang.reflect.Field;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class ImmLeaksCleaner implements androidx.p009lifecycle.r {

    public static final b f532b = new b(null);

    private static final Lazy f533c = LazyKt.b(new Function0<a>() {
        @Override
        public final ImmLeaksCleaner.a invoke() {
            try {
                Field servedViewField = InputMethodManager.class.getDeclaredField("mServedView");
                servedViewField.setAccessible(true);
                Field nextServedViewField = InputMethodManager.class.getDeclaredField("mNextServedView");
                nextServedViewField.setAccessible(true);
                Field hField = InputMethodManager.class.getDeclaredField("mH");
                hField.setAccessible(true);
                Intrinsics.g(hField, "hField");
                Intrinsics.g(servedViewField, "servedViewField");
                Intrinsics.g(nextServedViewField, "nextServedViewField");
                return new ImmLeaksCleaner.d(hField, servedViewField, nextServedViewField);
            } catch (NoSuchFieldException unused) {
                return ImmLeaksCleaner.c.f535a;
            }
        }
    });

    private final Activity f534a;

    public static abstract class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public abstract boolean a(InputMethodManager inputMethodManager);

        public abstract Object b(InputMethodManager inputMethodManager);

        public abstract View c(InputMethodManager inputMethodManager);

        private a() {
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            return (a) ImmLeaksCleaner.f533c.getValue();
        }

        private b() {
        }
    }

    public static final class c extends a {

        public static final c f535a = new c();

        private c() {
            super(null);
        }

        @Override
        public boolean a(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            return false;
        }

        @Override
        public Object b(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            return null;
        }

        @Override
        public View c(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            return null;
        }
    }

    public static final class d extends a {

        private final Field f536a;

        private final Field f537b;

        private final Field f538c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Field hField, Field servedViewField, Field nextServedViewField) {
            super(null);
            Intrinsics.h(hField, "hField");
            Intrinsics.h(servedViewField, "servedViewField");
            Intrinsics.h(nextServedViewField, "nextServedViewField");
            this.f536a = hField;
            this.f537b = servedViewField;
            this.f538c = nextServedViewField;
        }

        @Override
        public boolean a(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            try {
                this.f538c.set(inputMethodManager, null);
                return true;
            } catch (IllegalAccessException unused) {
                return false;
            }
        }

        @Override
        public Object b(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            try {
                return this.f536a.get(inputMethodManager);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override
        public View c(InputMethodManager inputMethodManager) {
            Intrinsics.h(inputMethodManager, "<this>");
            try {
                return (View) this.f537b.get(inputMethodManager);
            } catch (ClassCastException | IllegalAccessException unused) {
                return null;
            }
        }
    }

    public ImmLeaksCleaner(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.f534a = activity;
    }

    @Override
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (event != Lifecycle.Event.ON_DESTROY) {
            return;
        }
        Object systemService = this.f534a.getSystemService("input_method");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        a aVarA = f532b.a();
        Object objB = aVarA.b(inputMethodManager);
        if (objB == null) {
            return;
        }
        synchronized (objB) {
            View viewC = aVarA.c(inputMethodManager);
            if (viewC == null) {
                return;
            }
            if (viewC.isAttachedToWindow()) {
                return;
            }
            boolean zA = aVarA.a(inputMethodManager);
            if (zA) {
                inputMethodManager.isActive();
            }
        }
    }
}
