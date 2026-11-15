package e1;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.window.SplashScreenView;
import androidx.core.splashscreen.R$attr;
import androidx.core.splashscreen.R$dimen;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final C0714a f59230b = new C0714a(null);

    private final c f59231a;

    public static final class C0714a {
        public C0714a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(Activity activity) {
            Intrinsics.h(activity, "<this>");
            a aVar = new a(activity, null);
            aVar.b();
            return aVar;
        }

        private C0714a() {
        }
    }

    private static class c {

        private final Activity f59236a;

        private int f59237b;

        private Integer f59238c;

        private Integer f59239d;

        private Drawable f59240e;

        private boolean f59241f;

        private d f59242g;

        public c(Activity activity) {
            Intrinsics.h(activity, "activity");
            this.f59236a = activity;
            this.f59242g = new d() {
            };
        }

        public final Activity a() {
            return this.f59236a;
        }

        public void b() {
            TypedValue typedValue = new TypedValue();
            Resources.Theme currentTheme = this.f59236a.getTheme();
            if (currentTheme.resolveAttribute(R$attr.windowSplashScreenBackground, typedValue, true)) {
                this.f59238c = Integer.valueOf(typedValue.resourceId);
                this.f59239d = Integer.valueOf(typedValue.data);
            }
            if (currentTheme.resolveAttribute(R$attr.windowSplashScreenAnimatedIcon, typedValue, true)) {
                this.f59240e = currentTheme.getDrawable(typedValue.resourceId);
            }
            if (currentTheme.resolveAttribute(R$attr.splashScreenIconSize, typedValue, true)) {
                this.f59241f = typedValue.resourceId == R$dimen.splashscreen_icon_size_with_background;
            }
            Intrinsics.g(currentTheme, "currentTheme");
            c(currentTheme, typedValue);
        }

        protected final void c(Resources.Theme currentTheme, TypedValue typedValue) {
            Intrinsics.h(currentTheme, "currentTheme");
            Intrinsics.h(typedValue, "typedValue");
            if (currentTheme.resolveAttribute(R$attr.postSplashScreenTheme, typedValue, true)) {
                int i10 = typedValue.resourceId;
                this.f59237b = i10;
                if (i10 != 0) {
                    this.f59236a.setTheme(i10);
                }
            }
        }
    }

    public interface d {
    }

    public a(Activity activity, DefaultConstructorMarker defaultConstructorMarker) {
        this(activity);
    }

    public final void b() {
        this.f59231a.b();
    }

    private a(Activity activity) {
        this.f59231a = Build.VERSION.SDK_INT >= 31 ? new b(activity) : new c(activity);
    }

    private static final class b extends c {

        private boolean f59232h;

        private final ViewGroup.OnHierarchyChangeListener f59233i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Activity activity) {
            super(activity);
            Intrinsics.h(activity, "activity");
            this.f59232h = true;
            this.f59233i = new ViewGroupOnHierarchyChangeListenerC0715a(activity);
        }

        @Override
        public void b() {
            Resources.Theme theme = a().getTheme();
            Intrinsics.g(theme, "activity.theme");
            c(theme, new TypedValue());
            ((ViewGroup) a().getWindow().getDecorView()).setOnHierarchyChangeListener(this.f59233i);
        }

        public final boolean d(SplashScreenView child) {
            Intrinsics.h(child, "child");
            WindowInsets windowInsetsBuild = e1.c.a().build();
            Intrinsics.g(windowInsetsBuild, "Builder().build()");
            Rect rect = new Rect(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
            return (windowInsetsBuild == child.getRootView().computeSystemWindowInsets(windowInsetsBuild, rect) && rect.isEmpty()) ? false : true;
        }

        public final void e(boolean z10) {
            this.f59232h = z10;
        }

        public static final class ViewGroupOnHierarchyChangeListenerC0715a implements ViewGroup.OnHierarchyChangeListener {

            final Activity f59235b;

            ViewGroupOnHierarchyChangeListenerC0715a(Activity activity) {
                this.f59235b = activity;
            }

            @Override
            public void onChildViewAdded(View view, View view2) {
                if (f.a(view2)) {
                    b bVar = b.this;
                    bVar.e(bVar.d(g.a(view2)));
                    ((ViewGroup) this.f59235b.getWindow().getDecorView()).setOnHierarchyChangeListener(null);
                }
            }

            @Override
            public void onChildViewRemoved(View view, View view2) {
            }
        }
    }
}
