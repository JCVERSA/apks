package androidx.appcompat.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.NonNull;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$color;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$style;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.j0;
import androidx.appcompat.widget.t0;
import androidx.appcompat.widget.u0;
import androidx.collection.x0;
import androidx.core.app.ActivityCompat;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import androidx.p009lifecycle.Lifecycle;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;

class AppCompatDelegateImpl extends androidx.appcompat.app.f implements androidx.appcompat.view.menu.f.a, LayoutInflater.Factory2 {

    private static final x0 f706j0 = new x0();

    private static final boolean f707k0 = false;

    private static final int[] f708l0 = {R.attr.windowBackground};

    private static final boolean f709m0 = !"robolectric".equals(Build.FINGERPRINT);
    private boolean A;
    ViewGroup B;
    private TextView C;
    private View D;
    private boolean E;
    private boolean F;
    boolean G;
    boolean H;
    boolean I;
    boolean J;
    boolean K;
    private boolean L;
    private PanelFeatureState[] M;
    private PanelFeatureState N;
    private boolean O;
    private boolean P;
    private boolean Q;
    boolean R;
    private Configuration S;
    private int T;
    private int U;
    private int V;
    private boolean W;
    private n X;
    private n Y;
    boolean Z;

    int f710a0;

    private final Runnable f711b0;

    private boolean f712c0;

    private Rect f713d0;

    private Rect f714e0;

    private x f715f0;

    private y f716g0;

    private OnBackInvokedDispatcher f717h0;

    private OnBackInvokedCallback f718i0;

    final Object f719j;

    final Context f720k;

    Window f721l;

    private l f722m;

    final androidx.appcompat.app.d f723n;

    androidx.appcompat.app.a f724o;

    MenuInflater f725p;

    private CharSequence f726q;

    private androidx.appcompat.widget.s f727r;

    private f f728s;

    private q f729t;

    androidx.appcompat.view.b f730u;

    ActionBarContextView f731v;

    PopupWindow f732w;

    Runnable f733x;

    ViewPropertyAnimatorCompat f734y;

    private boolean f735z;

    protected static final class PanelFeatureState {

        int f737a;

        int f738b;

        int f739c;

        int f740d;

        int f741e;

        int f742f;

        ViewGroup f743g;

        View f744h;

        View f745i;

        androidx.appcompat.view.menu.f f746j;

        androidx.appcompat.view.menu.d f747k;

        Context f748l;

        boolean f749m;

        boolean f750n;

        boolean f751o;

        public boolean f752p;

        boolean f753q = false;

        boolean f754r;

        Bundle f755s;

        @SuppressLint({"BanParcelableUsage"})
        private static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();

            int f756a;

            boolean f757b;

            Bundle f758c;

            class a implements Parcelable.ClassLoaderCreator {
                a() {
                }

                @Override
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.a(parcel, null);
                }

                @Override
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }

                @Override
                public SavedState[] newArray(int i10) {
                    return new SavedState[i10];
                }
            }

            SavedState() {
            }

            static SavedState a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f756a = parcel.readInt();
                boolean z10 = parcel.readInt() == 1;
                savedState.f757b = z10;
                if (z10) {
                    savedState.f758c = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override
            public int describeContents() {
                return 0;
            }

            @Override
            public void writeToParcel(Parcel parcel, int i10) {
                parcel.writeInt(this.f756a);
                parcel.writeInt(this.f757b ? 1 : 0);
                if (this.f757b) {
                    parcel.writeBundle(this.f758c);
                }
            }
        }

        PanelFeatureState(int i10) {
            this.f737a = i10;
        }

        androidx.appcompat.view.menu.m a(androidx.appcompat.view.menu.l.a aVar) {
            if (this.f746j == null) {
                return null;
            }
            if (this.f747k == null) {
                androidx.appcompat.view.menu.d dVar = new androidx.appcompat.view.menu.d(this.f748l, R$layout.abc_list_menu_item_layout);
                this.f747k = dVar;
                dVar.d(aVar);
                this.f746j.b(this.f747k);
            }
            return this.f747k.l(this.f743g);
        }

        public boolean b() {
            if (this.f744h == null) {
                return false;
            }
            return this.f745i != null || this.f747k.a().getCount() > 0;
        }

        void c(androidx.appcompat.view.menu.f fVar) {
            androidx.appcompat.view.menu.d dVar;
            androidx.appcompat.view.menu.f fVar2 = this.f746j;
            if (fVar == fVar2) {
                return;
            }
            if (fVar2 != null) {
                fVar2.R(this.f747k);
            }
            this.f746j = fVar;
            if (fVar == null || (dVar = this.f747k) == null) {
                return;
            }
            fVar.b(dVar);
        }

        void d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(R$attr.actionBarPopupTheme, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                themeNewTheme.applyStyle(i10, true);
            }
            themeNewTheme.resolveAttribute(R$attr.panelMenuListTheme, typedValue, true);
            int i11 = typedValue.resourceId;
            if (i11 != 0) {
                themeNewTheme.applyStyle(i11, true);
            } else {
                themeNewTheme.applyStyle(R$style.Theme_AppCompat_CompactMenu, true);
            }
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            this.f748l = dVar;
            TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(R$styleable.AppCompatTheme);
            this.f738b = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTheme_panelBackground, 0);
            this.f742f = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int iH1 = AppCompatDelegateImpl.this.h1(windowInsetsCompat, null);
            if (systemWindowInsetTop != iH1) {
                windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), iH1, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            }
            return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
        }
    }

    class c extends ViewPropertyAnimatorListenerAdapter {
        c() {
        }

        @Override
        public void onAnimationEnd(View view) {
            AppCompatDelegateImpl.this.f731v.setAlpha(1.0f);
            AppCompatDelegateImpl.this.f734y.setListener(null);
            AppCompatDelegateImpl.this.f734y = null;
        }

        @Override
        public void onAnimationStart(View view) {
            AppCompatDelegateImpl.this.f731v.setVisibility(0);
            if (AppCompatDelegateImpl.this.f731v.getParent() instanceof View) {
                ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f731v.getParent());
            }
        }
    }

    private class d implements androidx.appcompat.app.b {
        d() {
        }
    }

    interface e {
        boolean a(int i10);

        View onCreatePanelView(int i10);
    }

    private final class f implements androidx.appcompat.view.menu.l.a {
        f() {
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
            AppCompatDelegateImpl.this.d0(fVar);
        }

        @Override
        public boolean c(androidx.appcompat.view.menu.f fVar) {
            Window.Callback callbackY0 = AppCompatDelegateImpl.this.y0();
            if (callbackY0 == null) {
                return true;
            }
            callbackY0.onMenuOpened(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            return true;
        }
    }

    class g implements androidx.appcompat.view.b.a {

        private androidx.appcompat.view.b.a f764a;

        class a extends ViewPropertyAnimatorListenerAdapter {
            a() {
            }

            @Override
            public void onAnimationEnd(View view) {
                AppCompatDelegateImpl.this.f731v.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.f732w;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.f731v.getParent() instanceof View) {
                    ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f731v.getParent());
                }
                AppCompatDelegateImpl.this.f731v.killMode();
                AppCompatDelegateImpl.this.f734y.setListener(null);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.f734y = null;
                ViewCompat.requestApplyInsets(appCompatDelegateImpl2.B);
            }
        }

        public g(androidx.appcompat.view.b.a aVar) {
            this.f764a = aVar;
        }

        @Override
        public void a(androidx.appcompat.view.b bVar) {
            this.f764a.a(bVar);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.f732w != null) {
                appCompatDelegateImpl.f721l.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.f733x);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.f731v != null) {
                appCompatDelegateImpl2.m0();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.f734y = ViewCompat.animate(appCompatDelegateImpl3.f731v).alpha(0.0f);
                AppCompatDelegateImpl.this.f734y.setListener(new a());
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            androidx.appcompat.app.d dVar = appCompatDelegateImpl4.f723n;
            if (dVar != null) {
                dVar.onSupportActionModeFinished(appCompatDelegateImpl4.f730u);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.f730u = null;
            ViewCompat.requestApplyInsets(appCompatDelegateImpl5.B);
            AppCompatDelegateImpl.this.f1();
        }

        @Override
        public boolean b(androidx.appcompat.view.b bVar, Menu menu) {
            return this.f764a.b(bVar, menu);
        }

        @Override
        public boolean c(androidx.appcompat.view.b bVar, MenuItem menuItem) {
            return this.f764a.c(bVar, menuItem);
        }

        @Override
        public boolean d(androidx.appcompat.view.b bVar, Menu menu) {
            ViewCompat.requestApplyInsets(AppCompatDelegateImpl.this.B);
            return this.f764a.d(bVar, menu);
        }
    }

    static class h {
        static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }

        static String b(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    static class i {
        static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }

        static androidx.core.os.i b(Configuration configuration) {
            return androidx.core.os.i.c(configuration.getLocales().toLanguageTags());
        }

        public static void c(androidx.core.os.i iVar) {
            LocaleList.setDefault(LocaleList.forLanguageTags(iVar.h()));
        }

        static void d(Configuration configuration, androidx.core.os.i iVar) {
            configuration.setLocales(LocaleList.forLanguageTags(iVar.h()));
        }
    }

    static class j {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                configuration3.colorMode |= configuration2.colorMode & 3;
            }
            if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                configuration3.colorMode |= configuration2.colorMode & 12;
            }
        }
    }

    static class k {
        static OnBackInvokedDispatcher a(Activity activity) {
            return activity.getOnBackInvokedDispatcher();
        }

        static OnBackInvokedCallback b(Object obj, final AppCompatDelegateImpl appCompatDelegateImpl) {
            Objects.requireNonNull(appCompatDelegateImpl);
            OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() {
                public final void onBackInvoked() {
                    appCompatDelegateImpl.G0();
                }
            };
            androidx.appcompat.app.q.a(obj).registerOnBackInvokedCallback(1000000, onBackInvokedCallback);
            return onBackInvokedCallback;
        }

        static void c(Object obj, Object obj2) {
            androidx.appcompat.app.q.a(obj).unregisterOnBackInvokedCallback(androidx.appcompat.app.p.a(obj2));
        }
    }

    class l extends androidx.appcompat.view.i {

        private e f767b;

        private boolean f768c;

        private boolean f769d;

        private boolean f770e;

        l(Window.Callback callback) {
            super(callback);
        }

        public boolean b(Window.Callback callback, KeyEvent keyEvent) {
            try {
                this.f769d = true;
                return callback.dispatchKeyEvent(keyEvent);
            } finally {
                this.f769d = false;
            }
        }

        public void c(Window.Callback callback) {
            try {
                this.f768c = true;
                callback.onContentChanged();
            } finally {
                this.f768c = false;
            }
        }

        public void d(Window.Callback callback, int i10, Menu menu) {
            try {
                this.f770e = true;
                callback.onPanelClosed(i10, menu);
            } finally {
                this.f770e = false;
            }
        }

        @Override
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (this.f769d) {
                return a().dispatchKeyEvent(keyEvent);
            }
            return AppCompatDelegateImpl.this.k0(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.J0(keyEvent.getKeyCode(), keyEvent);
        }

        void e(e eVar) {
            this.f767b = eVar;
        }

        final ActionMode f(ActionMode.Callback callback) {
            androidx.appcompat.view.f.a aVar = new androidx.appcompat.view.f.a(AppCompatDelegateImpl.this.f720k, callback);
            androidx.appcompat.view.b bVarT = AppCompatDelegateImpl.this.T(aVar);
            if (bVarT != null) {
                return aVar.e(bVarT);
            }
            return null;
        }

        @Override
        public void onContentChanged() {
            if (this.f768c) {
                a().onContentChanged();
            }
        }

        @Override
        public boolean onCreatePanelMenu(int i10, Menu menu) {
            if (i10 != 0 || (menu instanceof androidx.appcompat.view.menu.f)) {
                return super.onCreatePanelMenu(i10, menu);
            }
            return false;
        }

        @Override
        public View onCreatePanelView(int i10) {
            View viewOnCreatePanelView;
            e eVar = this.f767b;
            return (eVar == null || (viewOnCreatePanelView = eVar.onCreatePanelView(i10)) == null) ? super.onCreatePanelView(i10) : viewOnCreatePanelView;
        }

        @Override
        public boolean onMenuOpened(int i10, Menu menu) {
            super.onMenuOpened(i10, menu);
            AppCompatDelegateImpl.this.M0(i10);
            return true;
        }

        @Override
        public void onPanelClosed(int i10, Menu menu) {
            if (this.f770e) {
                a().onPanelClosed(i10, menu);
            } else {
                super.onPanelClosed(i10, menu);
                AppCompatDelegateImpl.this.N0(i10);
            }
        }

        @Override
        public boolean onPreparePanel(int i10, View view, Menu menu) {
            androidx.appcompat.view.menu.f fVar = menu instanceof androidx.appcompat.view.menu.f ? (androidx.appcompat.view.menu.f) menu : null;
            if (i10 == 0 && fVar == null) {
                return false;
            }
            if (fVar != null) {
                fVar.f0(true);
            }
            e eVar = this.f767b;
            boolean zOnPreparePanel = eVar != null && eVar.a(i10);
            if (!zOnPreparePanel) {
                zOnPreparePanel = super.onPreparePanel(i10, view, menu);
            }
            if (fVar != null) {
                fVar.f0(false);
            }
            return zOnPreparePanel;
        }

        @Override
        public void onProvideKeyboardShortcuts(List list, Menu menu, int i10) {
            androidx.appcompat.view.menu.f fVar;
            PanelFeatureState panelFeatureStateW0 = AppCompatDelegateImpl.this.w0(0, true);
            if (panelFeatureStateW0 == null || (fVar = panelFeatureStateW0.f746j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i10);
            } else {
                super.onProvideKeyboardShortcuts(list, fVar, i10);
            }
        }

        @Override
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        @Override
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i10) {
            return (AppCompatDelegateImpl.this.E0() && i10 == 0) ? f(callback) : super.onWindowStartingActionMode(callback, i10);
        }
    }

    private class m extends n {

        private final PowerManager f772c;

        m(Context context) {
            super();
            this.f772c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override
        public int c() {
            return h.a(this.f772c) ? 2 : 1;
        }

        @Override
        public void d() {
            AppCompatDelegateImpl.this.f();
        }
    }

    abstract class n {

        private BroadcastReceiver f774a;

        class a extends BroadcastReceiver {
            a() {
            }

            @Override
            public void onReceive(Context context, Intent intent) {
                n.this.d();
            }
        }

        n() {
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.f774a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f720k.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f774a = null;
            }
        }

        abstract IntentFilter b();

        abstract int c();

        abstract void d();

        void e() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB == null || intentFilterB.countActions() == 0) {
                return;
            }
            if (this.f774a == null) {
                this.f774a = new a();
            }
            AppCompatDelegateImpl.this.f720k.registerReceiver(this.f774a, intentFilterB);
        }
    }

    private class o extends n {

        private final c0 f777c;

        o(c0 c0Var) {
            super();
            this.f777c = c0Var;
        }

        @Override
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override
        public int c() {
            return this.f777c.d() ? 2 : 1;
        }

        @Override
        public void d() {
            AppCompatDelegateImpl.this.f();
        }
    }

    private class p extends ContentFrameLayout {
        public p(Context context) {
            super(context);
        }

        private boolean a(int i10, int i11) {
            return i10 < -5 || i11 < -5 || i10 > getWidth() + 5 || i11 > getHeight() + 5;
        }

        @Override
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.k0(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.f0(0);
            return true;
        }

        @Override
        public void setBackgroundResource(int i10) {
            setBackgroundDrawable(g.a.b(getContext(), i10));
        }
    }

    private final class q implements androidx.appcompat.view.menu.l.a {
        q() {
        }

        @Override
        public void b(androidx.appcompat.view.menu.f fVar, boolean z10) {
            androidx.appcompat.view.menu.f fVarF = fVar.F();
            boolean z11 = fVarF != fVar;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z11) {
                fVar = fVarF;
            }
            PanelFeatureState panelFeatureStateP0 = appCompatDelegateImpl.p0(fVar);
            if (panelFeatureStateP0 != null) {
                if (!z11) {
                    AppCompatDelegateImpl.this.g0(panelFeatureStateP0, z10);
                } else {
                    AppCompatDelegateImpl.this.c0(panelFeatureStateP0.f737a, panelFeatureStateP0, fVarF);
                    AppCompatDelegateImpl.this.g0(panelFeatureStateP0, true);
                }
            }
        }

        @Override
        public boolean c(androidx.appcompat.view.menu.f fVar) {
            Window.Callback callbackY0;
            if (fVar != fVar.F()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.G || (callbackY0 = appCompatDelegateImpl.y0()) == null || AppCompatDelegateImpl.this.R) {
                return true;
            }
            callbackY0.onMenuOpened(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
            return true;
        }
    }

    AppCompatDelegateImpl(Activity activity, androidx.appcompat.app.d dVar) {
        this(activity, null, dVar, activity);
    }

    private boolean A0(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.f745i;
        if (view != null) {
            panelFeatureState.f744h = view;
            return true;
        }
        if (panelFeatureState.f746j == null) {
            return false;
        }
        if (this.f729t == null) {
            this.f729t = new q();
        }
        View view2 = (View) panelFeatureState.a(this.f729t);
        panelFeatureState.f744h = view2;
        return view2 != null;
    }

    private boolean B0(PanelFeatureState panelFeatureState) {
        panelFeatureState.d(r0());
        panelFeatureState.f743g = new p(panelFeatureState.f748l);
        panelFeatureState.f739c = 81;
        return true;
    }

    private boolean C0(PanelFeatureState panelFeatureState) {
        Resources.Theme themeNewTheme;
        Context context = this.f720k;
        int i10 = panelFeatureState.f737a;
        if ((i10 == 0 || i10 == 108) && this.f727r != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(R$attr.actionBarTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(R$attr.actionBarWidgetTheme, typedValue, true);
                themeNewTheme = null;
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
                dVar.getTheme().setTo(themeNewTheme);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.f fVar = new androidx.appcompat.view.menu.f(context);
        fVar.W(this);
        panelFeatureState.c(fVar);
        return true;
    }

    private void D0(int i10) {
        this.f710a0 = (1 << i10) | this.f710a0;
        if (this.Z) {
            return;
        }
        ViewCompat.postOnAnimation(this.f721l.getDecorView(), this.f711b0);
        this.Z = true;
    }

    private boolean I0(int i10, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        PanelFeatureState panelFeatureStateW0 = w0(i10, true);
        if (panelFeatureStateW0.f751o) {
            return false;
        }
        return S0(panelFeatureStateW0, keyEvent);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    private boolean L0(int i10, KeyEvent keyEvent) {
        boolean zS0;
        androidx.appcompat.widget.s sVar;
        if (this.f730u != null) {
            return false;
        }
        boolean zHideOverflowMenu = true;
        PanelFeatureState panelFeatureStateW0 = w0(i10, true);
        if (i10 != 0 || (sVar = this.f727r) == null || !sVar.canShowOverflowMenu() || ViewConfiguration.get(this.f720k).hasPermanentMenuKey()) {
            boolean z10 = panelFeatureStateW0.f751o;
            if (z10 || panelFeatureStateW0.f750n) {
                g0(panelFeatureStateW0, true);
                zHideOverflowMenu = z10;
            } else if (panelFeatureStateW0.f749m) {
                if (panelFeatureStateW0.f754r) {
                    panelFeatureStateW0.f749m = false;
                    zS0 = S0(panelFeatureStateW0, keyEvent);
                } else {
                    zS0 = true;
                }
                if (zS0) {
                    P0(panelFeatureStateW0, keyEvent);
                } else {
                    zHideOverflowMenu = false;
                }
            } else {
                zHideOverflowMenu = false;
            }
        } else if (this.f727r.isOverflowMenuShowing()) {
            zHideOverflowMenu = this.f727r.hideOverflowMenu();
        } else if (this.R || !S0(panelFeatureStateW0, keyEvent)) {
            zHideOverflowMenu = false;
        } else {
            zHideOverflowMenu = this.f727r.showOverflowMenu();
        }
        if (zHideOverflowMenu) {
            AudioManager audioManager = (AudioManager) this.f720k.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return zHideOverflowMenu;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:69:? A[RETURN, SYNTHETIC] */
    private void P0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i10;
        ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.f751o || this.R) {
            return;
        }
        if (panelFeatureState.f737a == 0 && (this.f720k.getResources().getConfiguration().screenLayout & 15) == 4) {
            return;
        }
        Window.Callback callbackY0 = y0();
        if (callbackY0 != null && !callbackY0.onMenuOpened(panelFeatureState.f737a, panelFeatureState.f746j)) {
            g0(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f720k.getSystemService("window");
        if (windowManager != null && S0(panelFeatureState, keyEvent)) {
            ViewGroup viewGroup = panelFeatureState.f743g;
            if (viewGroup != null && !panelFeatureState.f753q) {
                View view = panelFeatureState.f745i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i10 = -1;
                }
                panelFeatureState.f750n = false;
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i10, -2, panelFeatureState.f740d, panelFeatureState.f741e, 1002, 8519680, -3);
                layoutParams2.gravity = panelFeatureState.f739c;
                layoutParams2.windowAnimations = panelFeatureState.f742f;
                windowManager.addView(panelFeatureState.f743g, layoutParams2);
                panelFeatureState.f751o = true;
                if (panelFeatureState.f737a == 0) {
                    f1();
                }
            }
            if (viewGroup == null) {
                if (!B0(panelFeatureState) || panelFeatureState.f743g == null) {
                    return;
                }
            } else if (panelFeatureState.f753q && viewGroup.getChildCount() > 0) {
                panelFeatureState.f743g.removeAllViews();
            }
            if (!A0(panelFeatureState) || !panelFeatureState.b()) {
                panelFeatureState.f753q = true;
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = panelFeatureState.f744h.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            panelFeatureState.f743g.setBackgroundResource(panelFeatureState.f738b);
            ViewParent parent = panelFeatureState.f744h.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(panelFeatureState.f744h);
            }
            panelFeatureState.f743g.addView(panelFeatureState.f744h, layoutParams3);
            if (!panelFeatureState.f744h.hasFocus()) {
                panelFeatureState.f744h.requestFocus();
            }
            i10 = -2;
            panelFeatureState.f750n = false;
            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i10, -2, panelFeatureState.f740d, panelFeatureState.f741e, 1002, 8519680, -3);
            layoutParams4.gravity = panelFeatureState.f739c;
            layoutParams4.windowAnimations = panelFeatureState.f742f;
            windowManager.addView(panelFeatureState.f743g, layoutParams4);
            panelFeatureState.f751o = true;
            if (panelFeatureState.f737a == 0) {
                f1();
            }
        }
    }

    private boolean R0(PanelFeatureState panelFeatureState, int i10, KeyEvent keyEvent, int i11) {
        androidx.appcompat.view.menu.f fVar;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.f749m || S0(panelFeatureState, keyEvent)) && (fVar = panelFeatureState.f746j) != null) {
            zPerformShortcut = fVar.performShortcut(i10, keyEvent, i11);
        }
        if (zPerformShortcut && (i11 & 1) == 0 && this.f727r == null) {
            g0(panelFeatureState, true);
        }
        return zPerformShortcut;
    }

    private boolean S0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        androidx.appcompat.widget.s sVar;
        androidx.appcompat.widget.s sVar2;
        androidx.appcompat.widget.s sVar3;
        if (this.R) {
            return false;
        }
        if (panelFeatureState.f749m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.N;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            g0(panelFeatureState2, false);
        }
        Window.Callback callbackY0 = y0();
        if (callbackY0 != null) {
            panelFeatureState.f745i = callbackY0.onCreatePanelView(panelFeatureState.f737a);
        }
        int i10 = panelFeatureState.f737a;
        boolean z10 = i10 == 0 || i10 == 108;
        if (z10 && (sVar3 = this.f727r) != null) {
            sVar3.setMenuPrepared();
        }
        if (panelFeatureState.f745i == null && (!z10 || !(Q0() instanceof ToolbarActionBar))) {
            androidx.appcompat.view.menu.f fVar = panelFeatureState.f746j;
            if (fVar == null || panelFeatureState.f754r) {
                if (fVar == null && (!C0(panelFeatureState) || panelFeatureState.f746j == null)) {
                    return false;
                }
                if (z10 && this.f727r != null) {
                    if (this.f728s == null) {
                        this.f728s = new f();
                    }
                    this.f727r.setMenu(panelFeatureState.f746j, this.f728s);
                }
                panelFeatureState.f746j.i0();
                if (!callbackY0.onCreatePanelMenu(panelFeatureState.f737a, panelFeatureState.f746j)) {
                    panelFeatureState.c(null);
                    if (z10 && (sVar = this.f727r) != null) {
                        sVar.setMenu(null, this.f728s);
                    }
                    return false;
                }
                panelFeatureState.f754r = false;
            }
            panelFeatureState.f746j.i0();
            Bundle bundle = panelFeatureState.f755s;
            if (bundle != null) {
                panelFeatureState.f746j.S(bundle);
                panelFeatureState.f755s = null;
            }
            if (!callbackY0.onPreparePanel(0, panelFeatureState.f745i, panelFeatureState.f746j)) {
                if (z10 && (sVar2 = this.f727r) != null) {
                    sVar2.setMenu(null, this.f728s);
                }
                panelFeatureState.f746j.h0();
                return false;
            }
            boolean z11 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.f752p = z11;
            panelFeatureState.f746j.setQwertyMode(z11);
            panelFeatureState.f746j.h0();
        }
        panelFeatureState.f749m = true;
        panelFeatureState.f750n = false;
        this.N = panelFeatureState;
        return true;
    }

    private void T0(boolean z10) {
        androidx.appcompat.widget.s sVar = this.f727r;
        if (sVar == null || !sVar.canShowOverflowMenu() || (ViewConfiguration.get(this.f720k).hasPermanentMenuKey() && !this.f727r.isOverflowMenuShowPending())) {
            PanelFeatureState panelFeatureStateW0 = w0(0, true);
            panelFeatureStateW0.f753q = true;
            g0(panelFeatureStateW0, false);
            P0(panelFeatureStateW0, null);
            return;
        }
        Window.Callback callbackY0 = y0();
        if (this.f727r.isOverflowMenuShowing() && z10) {
            this.f727r.hideOverflowMenu();
            if (this.R) {
                return;
            }
            callbackY0.onPanelClosed(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, w0(0, true).f746j);
            return;
        }
        if (callbackY0 == null || this.R) {
            return;
        }
        if (this.Z && (this.f710a0 & 1) != 0) {
            this.f721l.getDecorView().removeCallbacks(this.f711b0);
            this.f711b0.run();
        }
        PanelFeatureState panelFeatureStateW1 = w0(0, true);
        androidx.appcompat.view.menu.f fVar = panelFeatureStateW1.f746j;
        if (fVar == null || panelFeatureStateW1.f754r || !callbackY0.onPreparePanel(0, panelFeatureStateW1.f745i, fVar)) {
            return;
        }
        callbackY0.onMenuOpened(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, panelFeatureStateW1.f746j);
        this.f727r.showOverflowMenu();
    }

    private int U0(int i10) {
        if (i10 == 8) {
            return TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY;
        }
        if (i10 == 9) {
            return 109;
        }
        return i10;
    }

    private boolean W(boolean z10) {
        return X(z10, true);
    }

    private boolean X(boolean z10, boolean z11) {
        if (this.R) {
            return false;
        }
        int iB0 = b0();
        int iF0 = F0(this.f720k, iB0);
        androidx.core.os.i iVarA0 = Build.VERSION.SDK_INT < 33 ? a0(this.f720k) : null;
        if (!z11 && iVarA0 != null) {
            iVarA0 = v0(this.f720k.getResources().getConfiguration());
        }
        boolean zE1 = e1(iF0, iVarA0, z10);
        if (iB0 == 0) {
            u0(this.f720k).e();
        } else {
            n nVar = this.X;
            if (nVar != null) {
                nVar.a();
            }
        }
        if (iB0 == 3) {
            t0(this.f720k).e();
        } else {
            n nVar2 = this.Y;
            if (nVar2 != null) {
                nVar2.a();
            }
        }
        return zE1;
    }

    private void Y() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.B.findViewById(R.id.content);
        View decorView = this.f721l.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.f720k.obtainStyledAttributes(R$styleable.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(R$styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    private boolean Y0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f721l.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ((View) viewParent).isAttachedToWindow()) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private void Z(Window window) {
        if (this.f721l != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof l) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        l lVar = new l(callback);
        this.f722m = lVar;
        window.setCallback(lVar);
        j0 j0VarU = j0.u(this.f720k, null, f708l0);
        Drawable drawableH = j0VarU.h(0);
        if (drawableH != null) {
            window.setBackgroundDrawable(drawableH);
        }
        j0VarU.x();
        this.f721l = window;
        if (Build.VERSION.SDK_INT < 33 || this.f717h0 != null) {
            return;
        }
        P(null);
    }

    private int b0() {
        int i10 = this.T;
        return i10 != -100 ? i10 : androidx.appcompat.app.f.p();
    }

    private void b1() {
        if (this.A) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private AppCompatActivity c1() {
        for (Context baseContext = this.f720k; baseContext != null; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
            if (baseContext instanceof AppCompatActivity) {
                return (AppCompatActivity) baseContext;
            }
            if (!(baseContext instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d1(Configuration configuration) {
        Activity activity = (Activity) this.f719j;
        if (activity instanceof androidx.p009lifecycle.u) {
            if (((androidx.p009lifecycle.u) activity).getLifecycle().b().isAtLeast(Lifecycle.State.CREATED)) {
                activity.onConfigurationChanged(configuration);
            }
        } else {
            if (!this.Q || this.R) {
                return;
            }
            activity.onConfigurationChanged(configuration);
        }
    }

    private void e0() {
        n nVar = this.X;
        if (nVar != null) {
            nVar.a();
        }
        n nVar2 = this.Y;
        if (nVar2 != null) {
            nVar2.a();
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008c  */
    private boolean e1(int i10, androidx.core.os.i iVar, boolean z10) {
        boolean z11;
        Configuration configurationH0 = h0(this.f720k, i10, iVar, null, false);
        int iS0 = s0(this.f720k);
        Configuration configuration = this.S;
        if (configuration == null) {
            configuration = this.f720k.getResources().getConfiguration();
        }
        int i11 = configuration.uiMode & 48;
        int i12 = configurationH0.uiMode & 48;
        androidx.core.os.i iVarV0 = v0(configuration);
        androidx.core.os.i iVarV1 = iVar == null ? null : v0(configurationH0);
        int i13 = i11 != i12 ? 512 : 0;
        if (iVarV1 != null && !iVarV0.equals(iVarV1)) {
            i13 |= 8196;
        }
        boolean z12 = true;
        if (((~iS0) & i13) != 0 && z10 && this.P && (f709m0 || this.Q)) {
            Object obj = this.f719j;
            if (!(obj instanceof Activity) || ((Activity) obj).isChild()) {
                z11 = false;
            } else {
                if (Build.VERSION.SDK_INT >= 31 && (i13 & 8192) != 0) {
                    ((Activity) this.f719j).getWindow().getDecorView().setLayoutDirection(configurationH0.getLayoutDirection());
                }
                ActivityCompat.f((Activity) this.f719j);
                z11 = true;
            }
        } else {
            z11 = false;
        }
        if (z11 || i13 == 0) {
            z12 = z11;
        } else {
            g1(i12, iVarV1, (i13 & iS0) == i13, null);
        }
        if (z12) {
            Object obj2 = this.f719j;
            if (obj2 instanceof AppCompatActivity) {
                if ((i13 & 512) != 0) {
                    ((AppCompatActivity) obj2).onNightModeChanged(i10);
                }
                if ((i13 & 4) != 0) {
                    ((AppCompatActivity) this.f719j).onLocalesChanged(iVar);
                }
            }
        }
        if (iVarV1 != null) {
            W0(v0(this.f720k.getResources().getConfiguration()));
        }
        return z12;
    }

    private void g1(int i10, androidx.core.os.i iVar, boolean z10, Configuration configuration) {
        Resources resources = this.f720k.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i10 | (resources.getConfiguration().uiMode & (-49));
        if (iVar != null) {
            V0(configuration2, iVar);
        }
        resources.updateConfiguration(configuration2, null);
        if (Build.VERSION.SDK_INT < 26) {
            a0.a(resources);
        }
        int i11 = this.U;
        if (i11 != 0) {
            this.f720k.setTheme(i11);
            this.f720k.getTheme().applyStyle(this.U, true);
        }
        if (z10 && (this.f719j instanceof Activity)) {
            d1(configuration2);
        }
    }

    private Configuration h0(Context context, int i10, androidx.core.os.i iVar, Configuration configuration, boolean z10) {
        int i11;
        if (i10 == 1) {
            i11 = 16;
        } else if (i10 != 2) {
            i11 = z10 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i11 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i11 | (configuration2.uiMode & (-49));
        if (iVar != null) {
            V0(configuration2, iVar);
        }
        return configuration2;
    }

    private ViewGroup i0() {
        ViewGroup viewGroup;
        TypedArray typedArrayObtainStyledAttributes = this.f720k.obtainStyledAttributes(R$styleable.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowNoTitle, false)) {
            K(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBar, false)) {
            K(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            K(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            K(10);
        }
        this.J = typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        o0();
        this.f721l.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f720k);
        if (this.K) {
            viewGroup = this.I ? (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.J) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R$layout.abc_dialog_title_material, (ViewGroup) null);
            this.H = false;
            this.G = false;
        } else if (this.G) {
            TypedValue typedValue = new TypedValue();
            this.f720k.getTheme().resolveAttribute(R$attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new androidx.appcompat.view.d(this.f720k, typedValue.resourceId) : this.f720k).inflate(R$layout.abc_screen_toolbar, (ViewGroup) null);
            androidx.appcompat.widget.s sVar = (androidx.appcompat.widget.s) viewGroup.findViewById(R$id.decor_content_parent);
            this.f727r = sVar;
            sVar.setWindowCallback(y0());
            if (this.H) {
                this.f727r.initFeature(109);
            }
            if (this.E) {
                this.f727r.initFeature(2);
            }
            if (this.F) {
                this.f727r.initFeature(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.G + ", windowActionBarOverlay: " + this.H + ", android:windowIsFloating: " + this.J + ", windowActionModeOverlay: " + this.I + ", windowNoTitle: " + this.K + " }");
        }
        ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new a());
        if (this.f727r == null) {
            this.C = (TextView) viewGroup.findViewById(R$id.title);
        }
        u0.c(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R$id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f721l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f721l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new b());
        return viewGroup;
    }

    private void i1(View view) {
        view.setBackgroundColor((ViewCompat.getWindowSystemUiVisibility(view) & 8192) != 0 ? androidx.core.content.b.getColor(this.f720k, R$color.abc_decor_view_status_guard_light) : androidx.core.content.b.getColor(this.f720k, R$color.abc_decor_view_status_guard));
    }

    private void n0() {
        if (this.A) {
            return;
        }
        this.B = i0();
        CharSequence charSequenceX0 = x0();
        if (!TextUtils.isEmpty(charSequenceX0)) {
            androidx.appcompat.widget.s sVar = this.f727r;
            if (sVar != null) {
                sVar.setWindowTitle(charSequenceX0);
            } else if (Q0() != null) {
                Q0().u(charSequenceX0);
            } else {
                TextView textView = this.C;
                if (textView != null) {
                    textView.setText(charSequenceX0);
                }
            }
        }
        Y();
        O0(this.B);
        this.A = true;
        PanelFeatureState panelFeatureStateW0 = w0(0, false);
        if (this.R) {
            return;
        }
        if (panelFeatureStateW0 == null || panelFeatureStateW0.f746j == null) {
            D0(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY);
        }
    }

    private void o0() {
        if (this.f721l == null) {
            Object obj = this.f719j;
            if (obj instanceof Activity) {
                Z(((Activity) obj).getWindow());
            }
        }
        if (this.f721l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private static Configuration q0(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f10 = configuration.fontScale;
            float f11 = configuration2.fontScale;
            if (f10 != f11) {
                configuration3.fontScale = f11;
            }
            int i10 = configuration.mcc;
            int i11 = configuration2.mcc;
            if (i10 != i11) {
                configuration3.mcc = i11;
            }
            int i12 = configuration.mnc;
            int i13 = configuration2.mnc;
            if (i12 != i13) {
                configuration3.mnc = i13;
            }
            int i14 = Build.VERSION.SDK_INT;
            if (i14 >= 24) {
                i.a(configuration, configuration2, configuration3);
            } else if (!androidx.core.util.d.a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i15 = configuration.touchscreen;
            int i16 = configuration2.touchscreen;
            if (i15 != i16) {
                configuration3.touchscreen = i16;
            }
            int i17 = configuration.keyboard;
            int i18 = configuration2.keyboard;
            if (i17 != i18) {
                configuration3.keyboard = i18;
            }
            int i19 = configuration.keyboardHidden;
            int i20 = configuration2.keyboardHidden;
            if (i19 != i20) {
                configuration3.keyboardHidden = i20;
            }
            int i21 = configuration.navigation;
            int i22 = configuration2.navigation;
            if (i21 != i22) {
                configuration3.navigation = i22;
            }
            int i23 = configuration.navigationHidden;
            int i24 = configuration2.navigationHidden;
            if (i23 != i24) {
                configuration3.navigationHidden = i24;
            }
            int i25 = configuration.orientation;
            int i26 = configuration2.orientation;
            if (i25 != i26) {
                configuration3.orientation = i26;
            }
            int i27 = configuration.screenLayout & 15;
            int i28 = configuration2.screenLayout;
            if (i27 != (i28 & 15)) {
                configuration3.screenLayout |= i28 & 15;
            }
            int i29 = configuration.screenLayout & PsExtractor.AUDIO_STREAM;
            int i30 = configuration2.screenLayout;
            if (i29 != (i30 & PsExtractor.AUDIO_STREAM)) {
                configuration3.screenLayout |= i30 & PsExtractor.AUDIO_STREAM;
            }
            int i31 = configuration.screenLayout & 48;
            int i32 = configuration2.screenLayout;
            if (i31 != (i32 & 48)) {
                configuration3.screenLayout |= i32 & 48;
            }
            int i33 = configuration.screenLayout & 768;
            int i34 = configuration2.screenLayout;
            if (i33 != (i34 & 768)) {
                configuration3.screenLayout |= i34 & 768;
            }
            if (i14 >= 26) {
                j.a(configuration, configuration2, configuration3);
            }
            int i35 = configuration.uiMode & 15;
            int i36 = configuration2.uiMode;
            if (i35 != (i36 & 15)) {
                configuration3.uiMode |= i36 & 15;
            }
            int i37 = configuration.uiMode & 48;
            int i38 = configuration2.uiMode;
            if (i37 != (i38 & 48)) {
                configuration3.uiMode |= i38 & 48;
            }
            int i39 = configuration.screenWidthDp;
            int i40 = configuration2.screenWidthDp;
            if (i39 != i40) {
                configuration3.screenWidthDp = i40;
            }
            int i41 = configuration.screenHeightDp;
            int i42 = configuration2.screenHeightDp;
            if (i41 != i42) {
                configuration3.screenHeightDp = i42;
            }
            int i43 = configuration.smallestScreenWidthDp;
            int i44 = configuration2.smallestScreenWidthDp;
            if (i43 != i44) {
                configuration3.smallestScreenWidthDp = i44;
            }
            int i45 = configuration.densityDpi;
            int i46 = configuration2.densityDpi;
            if (i45 != i46) {
                configuration3.densityDpi = i46;
            }
        }
        return configuration3;
    }

    private int s0(Context context) {
        int i10;
        if (!this.W && (this.f719j instanceof Activity)) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return 0;
            }
            try {
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 29) {
                    i10 = 269221888;
                } else {
                    i10 = i11 >= 24 ? 786432 : 0;
                }
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, this.f719j.getClass()), i10);
                if (activityInfo != null) {
                    this.V = activityInfo.configChanges;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                this.V = 0;
            }
        }
        this.W = true;
        return this.V;
    }

    private n t0(Context context) {
        if (this.Y == null) {
            this.Y = new m(context);
        }
        return this.Y;
    }

    private n u0(Context context) {
        if (this.X == null) {
            this.X = new o(c0.a(context));
        }
        return this.X;
    }

    private void z0() {
        n0();
        if (this.G && this.f724o == null) {
            Object obj = this.f719j;
            if (obj instanceof Activity) {
                this.f724o = new d0((Activity) this.f719j, this.H);
            } else if (obj instanceof Dialog) {
                this.f724o = new d0((Dialog) this.f719j);
            }
            androidx.appcompat.app.a aVar = this.f724o;
            if (aVar != null) {
                aVar.s(this.f712c0);
            }
        }
    }

    @Override
    public void A(Configuration configuration) {
        androidx.appcompat.app.a aVarV;
        if (this.G && this.A && (aVarV = v()) != null) {
            aVarV.n(configuration);
        }
        androidx.appcompat.widget.f.b().g(this.f720k);
        this.S = new Configuration(this.f720k.getResources().getConfiguration());
        X(false, false);
    }

    @Override
    public void B(Bundle bundle) {
        String strC;
        this.P = true;
        W(false);
        o0();
        Object obj = this.f719j;
        if (obj instanceof Activity) {
            try {
                strC = androidx.core.app.n.c((Activity) obj);
            } catch (IllegalArgumentException unused) {
                strC = null;
            }
            if (strC != null) {
                androidx.appcompat.app.a aVarQ0 = Q0();
                if (aVarQ0 == null) {
                    this.f712c0 = true;
                } else {
                    aVarQ0.s(true);
                }
            }
            androidx.appcompat.app.f.d(this);
        }
        this.S = new Configuration(this.f720k.getResources().getConfiguration());
        this.Q = true;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0045  */
    @Override
    public void C() {
        if (this.f719j instanceof Activity) {
            androidx.appcompat.app.f.I(this);
        }
        if (this.Z) {
            this.f721l.getDecorView().removeCallbacks(this.f711b0);
        }
        this.R = true;
        if (this.T != -100) {
            Object obj = this.f719j;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                f706j0.put(this.f719j.getClass().getName(), Integer.valueOf(this.T));
            } else {
                f706j0.remove(this.f719j.getClass().getName());
            }
        } else {
            f706j0.remove(this.f719j.getClass().getName());
        }
        androidx.appcompat.app.a aVar = this.f724o;
        if (aVar != null) {
            aVar.o();
        }
        e0();
    }

    @Override
    public void D(Bundle bundle) {
        n0();
    }

    @Override
    public void E() {
        androidx.appcompat.app.a aVarV = v();
        if (aVarV != null) {
            aVarV.t(true);
        }
    }

    public boolean E0() {
        return this.f735z;
    }

    @Override
    public void F(Bundle bundle) {
    }

    int F0(Context context, int i10) {
        if (i10 == -100) {
            return -1;
        }
        if (i10 != -1) {
            if (i10 == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                return u0(context).c();
            }
            if (i10 != 1 && i10 != 2) {
                if (i10 == 3) {
                    return t0(context).c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i10;
    }

    @Override
    public void G() {
        X(true, false);
    }

    boolean G0() {
        boolean z10 = this.O;
        this.O = false;
        PanelFeatureState panelFeatureStateW0 = w0(0, false);
        if (panelFeatureStateW0 != null && panelFeatureStateW0.f751o) {
            if (!z10) {
                g0(panelFeatureStateW0, true);
            }
            return true;
        }
        androidx.appcompat.view.b bVar = this.f730u;
        if (bVar != null) {
            bVar.c();
            return true;
        }
        androidx.appcompat.app.a aVarV = v();
        return aVarV != null && aVarV.h();
    }

    @Override
    public void H() {
        androidx.appcompat.app.a aVarV = v();
        if (aVarV != null) {
            aVarV.t(false);
        }
    }

    boolean H0(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            this.O = (keyEvent.getFlags() & 128) != 0;
        } else if (i10 == 82) {
            I0(0, keyEvent);
            return true;
        }
        return false;
    }

    boolean J0(int i10, KeyEvent keyEvent) {
        androidx.appcompat.app.a aVarV = v();
        if (aVarV != null && aVarV.p(i10, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.N;
        if (panelFeatureState != null && R0(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            PanelFeatureState panelFeatureState2 = this.N;
            if (panelFeatureState2 != null) {
                panelFeatureState2.f750n = true;
            }
            return true;
        }
        if (this.N == null) {
            PanelFeatureState panelFeatureStateW0 = w0(0, true);
            S0(panelFeatureStateW0, keyEvent);
            boolean zR0 = R0(panelFeatureStateW0, keyEvent.getKeyCode(), keyEvent, 1);
            panelFeatureStateW0.f749m = false;
            if (zR0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean K(int i10) {
        int iU0 = U0(i10);
        if (this.K && iU0 == 108) {
            return false;
        }
        if (this.G && iU0 == 1) {
            this.G = false;
        }
        if (iU0 == 1) {
            b1();
            this.K = true;
            return true;
        }
        if (iU0 == 2) {
            b1();
            this.E = true;
            return true;
        }
        if (iU0 == 5) {
            b1();
            this.F = true;
            return true;
        }
        if (iU0 == 10) {
            b1();
            this.I = true;
            return true;
        }
        if (iU0 == 108) {
            b1();
            this.G = true;
            return true;
        }
        if (iU0 != 109) {
            return this.f721l.requestFeature(iU0);
        }
        b1();
        this.H = true;
        return true;
    }

    boolean K0(int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            if (i10 == 82) {
                L0(0, keyEvent);
                return true;
            }
        } else if (G0()) {
            return true;
        }
        return false;
    }

    @Override
    public void L(int i10) {
        n0();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f720k).inflate(i10, viewGroup);
        this.f722m.c(this.f721l.getCallback());
    }

    @Override
    public void M(View view) {
        n0();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f722m.c(this.f721l.getCallback());
    }

    void M0(int i10) {
        androidx.appcompat.app.a aVarV;
        if (i10 != 108 || (aVarV = v()) == null) {
            return;
        }
        aVarV.i(true);
    }

    @Override
    public void N(View view, ViewGroup.LayoutParams layoutParams) {
        n0();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f722m.c(this.f721l.getCallback());
    }

    void N0(int i10) {
        if (i10 == 108) {
            androidx.appcompat.app.a aVarV = v();
            if (aVarV != null) {
                aVarV.i(false);
                return;
            }
            return;
        }
        if (i10 == 0) {
            PanelFeatureState panelFeatureStateW0 = w0(i10, true);
            if (panelFeatureStateW0.f751o) {
                g0(panelFeatureStateW0, false);
            }
        }
    }

    void O0(ViewGroup viewGroup) {
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    @Override
    public void P(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        OnBackInvokedCallback onBackInvokedCallback;
        super.P(onBackInvokedDispatcher);
        OnBackInvokedDispatcher onBackInvokedDispatcher2 = this.f717h0;
        if (onBackInvokedDispatcher2 != null && (onBackInvokedCallback = this.f718i0) != null) {
            k.c(onBackInvokedDispatcher2, onBackInvokedCallback);
            this.f718i0 = null;
        }
        if (onBackInvokedDispatcher == null) {
            Object obj = this.f719j;
            if (!(obj instanceof Activity) || ((Activity) obj).getWindow() == null) {
                this.f717h0 = onBackInvokedDispatcher;
            } else {
                this.f717h0 = k.a((Activity) this.f719j);
            }
        } else {
            this.f717h0 = onBackInvokedDispatcher;
        }
        f1();
    }

    @Override
    public void Q(Toolbar toolbar) {
        if (this.f719j instanceof Activity) {
            androidx.appcompat.app.a aVarV = v();
            if (aVarV instanceof d0) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.f725p = null;
            if (aVarV != null) {
                aVarV.o();
            }
            this.f724o = null;
            if (toolbar != null) {
                ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, x0(), this.f722m);
                this.f724o = toolbarActionBar;
                this.f722m.e(toolbarActionBar.f783c);
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                this.f722m.e(null);
            }
            x();
        }
    }

    final androidx.appcompat.app.a Q0() {
        return this.f724o;
    }

    @Override
    public void R(int i10) {
        this.U = i10;
    }

    @Override
    public final void S(CharSequence charSequence) {
        this.f726q = charSequence;
        androidx.appcompat.widget.s sVar = this.f727r;
        if (sVar != null) {
            sVar.setWindowTitle(charSequence);
            return;
        }
        if (Q0() != null) {
            Q0().u(charSequence);
            return;
        }
        TextView textView = this.C;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override
    public androidx.appcompat.view.b T(androidx.appcompat.view.b.a aVar) {
        androidx.appcompat.app.d dVar;
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        androidx.appcompat.view.b bVar = this.f730u;
        if (bVar != null) {
            bVar.c();
        }
        g gVar = new g(aVar);
        androidx.appcompat.app.a aVarV = v();
        if (aVarV != null) {
            androidx.appcompat.view.b bVarV = aVarV.v(gVar);
            this.f730u = bVarV;
            if (bVarV != null && (dVar = this.f723n) != null) {
                dVar.onSupportActionModeStarted(bVarV);
            }
        }
        if (this.f730u == null) {
            this.f730u = a1(gVar);
        }
        f1();
        return this.f730u;
    }

    void V0(Configuration configuration, androidx.core.os.i iVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            i.d(configuration, iVar);
        } else {
            configuration.setLocale(iVar.d(0));
            configuration.setLayoutDirection(iVar.d(0));
        }
    }

    void W0(androidx.core.os.i iVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            i.c(iVar);
        } else {
            Locale.setDefault(iVar.d(0));
        }
    }

    final boolean X0() {
        ViewGroup viewGroup;
        return this.A && (viewGroup = this.B) != null && viewGroup.isLaidOut();
    }

    boolean Z0() {
        if (this.f717h0 == null) {
            return false;
        }
        PanelFeatureState panelFeatureStateW0 = w0(0, false);
        return (panelFeatureStateW0 != null && panelFeatureStateW0.f751o) || this.f730u != null;
    }

    @Override
    public boolean a(androidx.appcompat.view.menu.f fVar, MenuItem menuItem) {
        PanelFeatureState panelFeatureStateP0;
        Window.Callback callbackY0 = y0();
        if (callbackY0 == null || this.R || (panelFeatureStateP0 = p0(fVar.F())) == null) {
            return false;
        }
        return callbackY0.onMenuItemSelected(panelFeatureStateP0.f737a, menuItem);
    }

    androidx.core.os.i a0(Context context) {
        androidx.core.os.i iVarU;
        androidx.core.os.i iVarE;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33 || (iVarU = androidx.appcompat.app.f.u()) == null) {
            return null;
        }
        androidx.core.os.i iVarV0 = v0(context.getApplicationContext().getResources().getConfiguration());
        if (i10 >= 24) {
            iVarE = z.b(iVarU, iVarV0);
        } else {
            iVarE = iVarU.f() ? androidx.core.os.i.e() : androidx.core.os.i.c(h.b(iVarU.d(0)));
        }
        return iVarE.f() ? iVarV0 : iVarE;
    }

    androidx.appcompat.view.b a1(androidx.appcompat.view.b.a aVar) {
        androidx.appcompat.view.b bVarOnWindowStartingSupportActionMode;
        Context dVar;
        androidx.appcompat.app.d dVar2;
        m0();
        androidx.appcompat.view.b bVar = this.f730u;
        if (bVar != null) {
            bVar.c();
        }
        if (!(aVar instanceof g)) {
            aVar = new g(aVar);
        }
        androidx.appcompat.app.d dVar3 = this.f723n;
        if (dVar3 == null || this.R) {
            bVarOnWindowStartingSupportActionMode = null;
        } else {
            try {
                bVarOnWindowStartingSupportActionMode = dVar3.onWindowStartingSupportActionMode(aVar);
            } catch (AbstractMethodError unused) {
                bVarOnWindowStartingSupportActionMode = null;
            }
        }
        if (bVarOnWindowStartingSupportActionMode != null) {
            this.f730u = bVarOnWindowStartingSupportActionMode;
        } else {
            if (this.f731v == null) {
                if (this.J) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f720k.getTheme();
                    theme.resolveAttribute(R$attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.f720k.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        dVar = new androidx.appcompat.view.d(this.f720k, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                    } else {
                        dVar = this.f720k;
                    }
                    this.f731v = new ActionBarContextView(dVar);
                    PopupWindow popupWindow = new PopupWindow(dVar, (AttributeSet) null, R$attr.actionModePopupWindowStyle);
                    this.f732w = popupWindow;
                    androidx.core.widget.k.b(popupWindow, 2);
                    this.f732w.setContentView(this.f731v);
                    this.f732w.setWidth(-1);
                    dVar.getTheme().resolveAttribute(R$attr.actionBarSize, typedValue, true);
                    this.f731v.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, dVar.getResources().getDisplayMetrics()));
                    this.f732w.setHeight(-2);
                    this.f733x = new Runnable() {

                        class a extends ViewPropertyAnimatorListenerAdapter {
                            a() {
                            }

                            @Override
                            public void onAnimationEnd(View view) {
                                AppCompatDelegateImpl.this.f731v.setAlpha(1.0f);
                                AppCompatDelegateImpl.this.f734y.setListener(null);
                                AppCompatDelegateImpl.this.f734y = null;
                            }

                            @Override
                            public void onAnimationStart(View view) {
                                AppCompatDelegateImpl.this.f731v.setVisibility(0);
                            }
                        }

                        @Override
                        public void run() {
                            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                            appCompatDelegateImpl.f732w.showAtLocation(appCompatDelegateImpl.f731v, 55, 0, 0);
                            AppCompatDelegateImpl.this.m0();
                            if (!AppCompatDelegateImpl.this.X0()) {
                                AppCompatDelegateImpl.this.f731v.setAlpha(1.0f);
                                AppCompatDelegateImpl.this.f731v.setVisibility(0);
                            } else {
                                AppCompatDelegateImpl.this.f731v.setAlpha(0.0f);
                                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                                appCompatDelegateImpl2.f734y = ViewCompat.animate(appCompatDelegateImpl2.f731v).alpha(1.0f);
                                AppCompatDelegateImpl.this.f734y.setListener(new a());
                            }
                        }
                    };
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.B.findViewById(R$id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(r0()));
                        this.f731v = (ActionBarContextView) viewStubCompat.inflate();
                    }
                }
            }
            if (this.f731v != null) {
                m0();
                this.f731v.killMode();
                androidx.appcompat.view.e eVar = new androidx.appcompat.view.e(this.f731v.getContext(), this.f731v, aVar, this.f732w == null);
                if (aVar.b(eVar, eVar.e())) {
                    eVar.k();
                    this.f731v.initForMode(eVar);
                    this.f730u = eVar;
                    if (X0()) {
                        this.f731v.setAlpha(0.0f);
                        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(this.f731v).alpha(1.0f);
                        this.f734y = viewPropertyAnimatorCompatAlpha;
                        viewPropertyAnimatorCompatAlpha.setListener(new c());
                    } else {
                        this.f731v.setAlpha(1.0f);
                        this.f731v.setVisibility(0);
                        if (this.f731v.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) this.f731v.getParent());
                        }
                    }
                    if (this.f732w != null) {
                        this.f721l.getDecorView().post(this.f733x);
                    }
                } else {
                    this.f730u = null;
                }
            }
        }
        androidx.appcompat.view.b bVar2 = this.f730u;
        if (bVar2 != null && (dVar2 = this.f723n) != null) {
            dVar2.onSupportActionModeStarted(bVar2);
        }
        f1();
        return this.f730u;
    }

    @Override
    public void b(androidx.appcompat.view.menu.f fVar) {
        T0(true);
    }

    void c0(int i10, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i10 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.M;
                if (i10 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i10];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.f746j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.f751o) && !this.R) {
            this.f722m.d(this.f721l.getCallback(), i10, menu);
        }
    }

    void d0(androidx.appcompat.view.menu.f fVar) {
        if (this.L) {
            return;
        }
        this.L = true;
        this.f727r.dismissPopups();
        Window.Callback callbackY0 = y0();
        if (callbackY0 != null && !this.R) {
            callbackY0.onPanelClosed(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, fVar);
        }
        this.L = false;
    }

    @Override
    public void e(View view, ViewGroup.LayoutParams layoutParams) {
        n0();
        ((ViewGroup) this.B.findViewById(R.id.content)).addView(view, layoutParams);
        this.f722m.c(this.f721l.getCallback());
    }

    @Override
    public boolean f() {
        return W(true);
    }

    void f0(int i10) {
        g0(w0(i10, true), true);
    }

    void f1() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean zZ0 = Z0();
            if (zZ0 && this.f718i0 == null) {
                this.f718i0 = k.b(this.f717h0, this);
            } else {
                if (zZ0 || (onBackInvokedCallback = this.f718i0) == null) {
                    return;
                }
                k.c(this.f717h0, onBackInvokedCallback);
                this.f718i0 = null;
            }
        }
    }

    void g0(PanelFeatureState panelFeatureState, boolean z10) {
        ViewGroup viewGroup;
        androidx.appcompat.widget.s sVar;
        if (z10 && panelFeatureState.f737a == 0 && (sVar = this.f727r) != null && sVar.isOverflowMenuShowing()) {
            d0(panelFeatureState.f746j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f720k.getSystemService("window");
        if (windowManager != null && panelFeatureState.f751o && (viewGroup = panelFeatureState.f743g) != null) {
            windowManager.removeView(viewGroup);
            if (z10) {
                c0(panelFeatureState.f737a, panelFeatureState, null);
            }
        }
        panelFeatureState.f749m = false;
        panelFeatureState.f750n = false;
        panelFeatureState.f751o = false;
        panelFeatureState.f744h = null;
        panelFeatureState.f753q = true;
        if (this.N == panelFeatureState) {
            this.N = null;
        }
        if (panelFeatureState.f737a == 0) {
            f1();
        }
    }

    final int h1(WindowInsetsCompat windowInsetsCompat, Rect rect) {
        int systemWindowInsetTop;
        boolean z10;
        boolean z11;
        if (windowInsetsCompat != null) {
            systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        } else {
            systemWindowInsetTop = rect != null ? rect.top : 0;
        }
        ActionBarContextView actionBarContextView = this.f731v;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z10 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f731v.getLayoutParams();
            boolean z12 = true;
            if (this.f731v.isShown()) {
                if (this.f713d0 == null) {
                    this.f713d0 = new Rect();
                    this.f714e0 = new Rect();
                }
                Rect rect2 = this.f713d0;
                Rect rect3 = this.f714e0;
                if (windowInsetsCompat == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                }
                u0.a(this.B, rect2, rect3);
                int i10 = rect2.top;
                int i11 = rect2.left;
                int i12 = rect2.right;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.B);
                int systemWindowInsetLeft = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetLeft();
                int systemWindowInsetRight = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetRight();
                if (marginLayoutParams.topMargin == i10 && marginLayoutParams.leftMargin == i11 && marginLayoutParams.rightMargin == i12) {
                    z11 = false;
                } else {
                    marginLayoutParams.topMargin = i10;
                    marginLayoutParams.leftMargin = i11;
                    marginLayoutParams.rightMargin = i12;
                    z11 = true;
                }
                if (i10 <= 0 || this.D != null) {
                    View view = this.D;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i13 = marginLayoutParams2.height;
                        int i14 = marginLayoutParams.topMargin;
                        if (i13 != i14 || marginLayoutParams2.leftMargin != systemWindowInsetLeft || marginLayoutParams2.rightMargin != systemWindowInsetRight) {
                            marginLayoutParams2.height = i14;
                            marginLayoutParams2.leftMargin = systemWindowInsetLeft;
                            marginLayoutParams2.rightMargin = systemWindowInsetRight;
                            this.D.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f720k);
                    this.D = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = systemWindowInsetLeft;
                    layoutParams.rightMargin = systemWindowInsetRight;
                    this.B.addView(this.D, -1, layoutParams);
                }
                View view3 = this.D;
                z12 = view3 != null;
                if (z12 && view3.getVisibility() != 0) {
                    i1(this.D);
                }
                if (!this.I && z12) {
                    systemWindowInsetTop = 0;
                }
                z10 = z12;
                z12 = z11;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z10 = false;
            } else {
                z10 = false;
                z12 = false;
            }
            if (z12) {
                this.f731v.setLayoutParams(marginLayoutParams);
            }
        }
        View view4 = this.D;
        if (view4 != null) {
            view4.setVisibility(z10 ? 0 : 8);
        }
        return systemWindowInsetTop;
    }

    @Override
    public Context i(Context context) {
        this.P = true;
        int iF0 = F0(context, b0());
        if (androidx.appcompat.app.f.y(context)) {
            androidx.appcompat.app.f.V(context);
        }
        androidx.core.os.i iVarA0 = a0(context);
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(h0(context, iF0, iVarA0, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof androidx.appcompat.view.d) {
            try {
                ((androidx.appcompat.view.d) context).a(h0(context, iF0, iVarA0, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f709m0) {
            return super.i(context);
        }
        Configuration configuration = new Configuration();
        configuration.uiMode = -1;
        configuration.fontScale = 0.0f;
        Configuration configuration2 = context.createConfigurationContext(configuration).getResources().getConfiguration();
        Configuration configuration3 = context.getResources().getConfiguration();
        configuration2.uiMode = configuration3.uiMode;
        Configuration configurationH0 = h0(context, iF0, iVarA0, !configuration2.equals(configuration3) ? q0(configuration2, configuration3) : null, true);
        androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, R$style.Theme_AppCompat_Empty);
        dVar.a(configurationH0);
        try {
            if (context.getTheme() != null) {
                y0.h.f.a(dVar.getTheme());
            }
        } catch (NullPointerException unused3) {
        }
        return super.i(dVar);
    }

    void j0() {
        androidx.appcompat.view.menu.f fVar;
        androidx.appcompat.widget.s sVar = this.f727r;
        if (sVar != null) {
            sVar.dismissPopups();
        }
        if (this.f732w != null) {
            this.f721l.getDecorView().removeCallbacks(this.f733x);
            if (this.f732w.isShowing()) {
                try {
                    this.f732w.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.f732w = null;
        }
        m0();
        PanelFeatureState panelFeatureStateW0 = w0(0, false);
        if (panelFeatureStateW0 == null || (fVar = panelFeatureStateW0.f746j) == null) {
            return;
        }
        fVar.close();
    }

    boolean k0(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f719j;
        if (((obj instanceof KeyEventDispatcher.Component) || (obj instanceof w)) && (decorView = this.f721l.getDecorView()) != null && KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f722m.b(this.f721l.getCallback(), keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? H0(keyCode, keyEvent) : K0(keyCode, keyEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public View l(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z10;
        if (this.f715f0 == null) {
            TypedArray typedArrayObtainStyledAttributes = this.f720k.obtainStyledAttributes(R$styleable.AppCompatTheme);
            String string = typedArrayObtainStyledAttributes.getString(R$styleable.AppCompatTheme_viewInflaterClass);
            typedArrayObtainStyledAttributes.recycle();
            if (string == null) {
                this.f715f0 = new x();
            } else {
                try {
                    this.f715f0 = (x) this.f720k.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable unused) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Failed to instantiate custom view inflater ");
                    sb2.append(string);
                    sb2.append(". Falling back to default.");
                    this.f715f0 = new x();
                }
            }
        }
        boolean z11 = f707k0;
        boolean zY0 = false;
        if (z11) {
            if (this.f716g0 == null) {
                this.f716g0 = new y();
            }
            if (this.f716g0.a(attributeSet)) {
                z10 = true;
            } else {
                if (!(attributeSet instanceof XmlPullParser)) {
                    zY0 = Y0((ViewParent) view);
                } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zY0 = true;
                }
                z10 = zY0;
            }
        } else {
            z10 = zY0;
        }
        return this.f715f0.r(view, str, context, attributeSet, z10, z11, true, t0.c());
    }

    void l0(int i10) {
        PanelFeatureState panelFeatureStateW0;
        PanelFeatureState panelFeatureStateW1 = w0(i10, true);
        if (panelFeatureStateW1.f746j != null) {
            Bundle bundle = new Bundle();
            panelFeatureStateW1.f746j.U(bundle);
            if (bundle.size() > 0) {
                panelFeatureStateW1.f755s = bundle;
            }
            panelFeatureStateW1.f746j.i0();
            panelFeatureStateW1.f746j.clear();
        }
        panelFeatureStateW1.f754r = true;
        panelFeatureStateW1.f753q = true;
        if ((i10 != 108 && i10 != 0) || this.f727r == null || (panelFeatureStateW0 = w0(0, false)) == null) {
            return;
        }
        panelFeatureStateW0.f749m = false;
        S0(panelFeatureStateW0, null);
    }

    @Override
    public View m(int i10) {
        n0();
        return this.f721l.findViewById(i10);
    }

    void m0() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f734y;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
    }

    @Override
    public Context o() {
        return this.f720k;
    }

    @Override
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return l(view, str, context, attributeSet);
    }

    PanelFeatureState p0(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.M;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i10 = 0; i10 < length; i10++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i10];
            if (panelFeatureState != null && panelFeatureState.f746j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override
    public final androidx.appcompat.app.b q() {
        return new d();
    }

    @Override
    public int r() {
        return this.T;
    }

    final Context r0() {
        androidx.appcompat.app.a aVarV = v();
        Context contextK = aVarV != null ? aVarV.k() : null;
        return contextK == null ? this.f720k : contextK;
    }

    @Override
    public MenuInflater t() {
        if (this.f725p == null) {
            z0();
            androidx.appcompat.app.a aVar = this.f724o;
            this.f725p = new androidx.appcompat.view.g(aVar != null ? aVar.k() : this.f720k);
        }
        return this.f725p;
    }

    @Override
    public androidx.appcompat.app.a v() {
        z0();
        return this.f724o;
    }

    androidx.core.os.i v0(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? i.b(configuration) : androidx.core.os.i.c(h.b(configuration.locale));
    }

    @Override
    public void w() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f720k);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(layoutInflaterFrom, this);
        } else {
            boolean z10 = layoutInflaterFrom.getFactory2() instanceof AppCompatDelegateImpl;
        }
    }

    protected PanelFeatureState w0(int i10, boolean z10) {
        PanelFeatureState[] panelFeatureStateArr = this.M;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i10) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i10 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.M = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i10];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i10);
        panelFeatureStateArr[i10] = panelFeatureState2;
        return panelFeatureState2;
    }

    @Override
    public void x() {
        if (Q0() == null || v().m()) {
            return;
        }
        D0(0);
    }

    final CharSequence x0() {
        Object obj = this.f719j;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f726q;
    }

    final Window.Callback y0() {
        return this.f721l.getCallback();
    }

    AppCompatDelegateImpl(Dialog dialog, androidx.appcompat.app.d dVar) {
        this(dialog.getContext(), dialog.getWindow(), dVar, dialog);
    }

    @Override
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    private AppCompatDelegateImpl(Context context, Window window, androidx.appcompat.app.d dVar, Object obj) {
        AppCompatActivity appCompatActivityC1;
        this.f734y = null;
        this.f735z = true;
        this.T = -100;
        this.f711b0 = new Runnable() {
            @Override
            public void run() {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl.f710a0 & 1) != 0) {
                    appCompatDelegateImpl.l0(0);
                }
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl2.f710a0 & 4096) != 0) {
                    appCompatDelegateImpl2.l0(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY);
                }
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.Z = false;
                appCompatDelegateImpl3.f710a0 = 0;
            }
        };
        this.f720k = context;
        this.f723n = dVar;
        this.f719j = obj;
        if (this.T == -100 && (obj instanceof Dialog) && (appCompatActivityC1 = c1()) != null) {
            this.T = appCompatActivityC1.getDelegate().r();
        }
        if (this.T == -100) {
            x0 x0Var = f706j0;
            Integer num = (Integer) x0Var.get(obj.getClass().getName());
            if (num != null) {
                this.T = num.intValue();
                x0Var.remove(obj.getClass().getName());
            }
        }
        if (window != null) {
            Z(window);
        }
        androidx.appcompat.widget.f.h();
    }

    class b implements ContentFrameLayout.a {
        b() {
        }

        @Override
        public void onDetachedFromWindow() {
            AppCompatDelegateImpl.this.j0();
        }

        @Override
        public void a() {
        }
    }
}
