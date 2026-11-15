package com.google.android.material.search;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class SearchView extends FrameLayout implements CoordinatorLayout.b, ya.b {
    private static final int D = R$style.Widget_Material3_SearchView;
    private boolean A;
    private TransitionState B;
    private Map C;

    final View f28706a;

    final ClippableRoundedCornerLayout f28707b;

    final View f28708c;

    final View f28709d;

    final FrameLayout f28710e;

    final FrameLayout f28711f;

    final MaterialToolbar f28712g;

    final Toolbar f28713h;

    final TextView f28714i;

    final EditText f28715j;

    final ImageButton f28716k;

    final View f28717l;

    final TouchObserverFrameLayout f28718m;

    private final boolean f28719n;

    private final f0 f28720o;

    private final ya.c f28721p;

    private final boolean f28722q;

    private final va.a f28723r;

    private final Set f28724s;

    private SearchBar f28725t;

    private int f28726u;

    private boolean f28727v;

    private boolean f28728w;

    private boolean f28729x;

    private final int f28730y;

    private boolean f28731z;

    public static class Behavior extends CoordinatorLayout.c {
        public Behavior() {
        }

        @Override
        public boolean h(CoordinatorLayout coordinatorLayout, SearchView searchView, View view) {
            if (searchView.isSetupWithSearchBar() || !(view instanceof SearchBar)) {
                return false;
            }
            searchView.setupWithSearchBar((SearchBar) view);
            return false;
        }

        public Behavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        String f28732a;

        int f28733b;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f28732a);
            parcel.writeInt(this.f28733b);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f28732a = parcel.readString();
            this.f28733b = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public enum TransitionState {
        HIDING,
        HIDDEN,
        SHOWING,
        SHOWN
    }

    class a implements TextWatcher {
        a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            SearchView.this.f28716k.setVisibility(charSequence.length() > 0 ? 0 : 8);
        }
    }

    public interface b {
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    private void A() {
        setUpBackgroundViewElevationOverlay(getOverlayElevation());
    }

    private void B() {
        this.f28716k.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f28792a.q(view);
            }
        });
        this.f28715j.addTextChangedListener(new a());
    }

    private void C() {
        this.f28718m.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f28801a.r(view, motionEvent);
            }
        });
    }

    private void D() {
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f28717l.getLayoutParams();
        final int i10 = marginLayoutParams.leftMargin;
        final int i11 = marginLayoutParams.rightMargin;
        ViewCompat.setOnApplyWindowInsetsListener(this.f28717l, new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return SearchView.s(marginLayoutParams, i10, i11, view, windowInsetsCompat);
            }
        });
    }

    private void E(int i10, String str, String str2) {
        if (i10 != -1) {
            androidx.core.widget.l.p(this.f28715j, i10);
        }
        this.f28715j.setText(str);
        this.f28715j.setHint(str2);
    }

    private void F() {
        I();
        D();
        H();
    }

    private void G() {
        this.f28707b.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return SearchView.t(view, motionEvent);
            }
        });
    }

    private void H() {
        setUpStatusBarSpacer(getStatusBarHeight());
        ViewCompat.setOnApplyWindowInsetsListener(this.f28709d, new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f28798a.u(view, windowInsetsCompat);
            }
        });
    }

    private void I() {
        com.google.android.material.internal.f0.f(this.f28712g, new com.google.android.material.internal.f0.d() {
            @Override
            public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, com.google.android.material.internal.f0.e eVar) {
                return this.f28797a.v(view, windowInsetsCompat, eVar);
            }
        });
    }

    private void J(ViewGroup viewGroup, boolean z10) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt != this) {
                if (childAt.findViewById(this.f28707b.getId()) != null) {
                    J((ViewGroup) childAt, z10);
                } else if (z10) {
                    this.C.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    ViewCompat.setImportantForAccessibility(childAt, 4);
                } else {
                    Map map = this.C;
                    if (map != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, ((Integer) this.C.get(childAt)).intValue());
                    }
                }
            }
        }
    }

    private void K(TransitionState transitionState) {
        if (this.f28725t == null || !this.f28722q) {
            return;
        }
        if (transitionState.equals(TransitionState.SHOWN)) {
            this.f28721p.c();
        } else if (transitionState.equals(TransitionState.HIDDEN)) {
            this.f28721p.f();
        }
    }

    private void L() {
        MaterialToolbar materialToolbar = this.f28712g;
        if (materialToolbar == null || m(materialToolbar)) {
            return;
        }
        int defaultNavigationIconResource = getDefaultNavigationIconResource();
        if (this.f28725t == null) {
            this.f28712g.setNavigationIcon(defaultNavigationIconResource);
            return;
        }
        Drawable drawableR = a1.a.r(g.a.b(getContext(), defaultNavigationIconResource).mutate());
        if (this.f28712g.getNavigationIconTint() != null) {
            a1.a.n(drawableR, this.f28712g.getNavigationIconTint().intValue());
        }
        this.f28712g.setNavigationIcon(new com.google.android.material.internal.h(this.f28725t.getNavigationIcon(), drawableR));
        M();
    }

    private void M() {
        ImageButton imageButtonE = ToolbarUtils.e(this.f28712g);
        if (imageButtonE == null) {
            return;
        }
        int i10 = this.f28707b.getVisibility() == 0 ? 1 : 0;
        Drawable drawableQ = a1.a.q(imageButtonE.getDrawable());
        if (drawableQ instanceof androidx.appcompat.graphics.drawable.c) {
            ((androidx.appcompat.graphics.drawable.c) drawableQ).setProgress(i10);
        }
        if (drawableQ instanceof com.google.android.material.internal.h) {
            ((com.google.android.material.internal.h) drawableQ).a(i10);
        }
    }

    @Nullable
    private Window getActivityWindow() {
        Activity activityA = com.google.android.material.internal.c.a(getContext());
        if (activityA == null) {
            return null;
        }
        return activityA.getWindow();
    }

    private float getOverlayElevation() {
        SearchBar searchBar = this.f28725t;
        return searchBar != null ? searchBar.getCompatElevation() : getResources().getDimension(R$dimen.m3_searchview_elevation);
    }

    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private boolean l() {
        return this.B.equals(TransitionState.HIDDEN) || this.B.equals(TransitionState.HIDING);
    }

    private boolean m(Toolbar toolbar) {
        return a1.a.q(toolbar.getNavigationIcon()) instanceof androidx.appcompat.graphics.drawable.c;
    }

    public void n() {
        this.f28715j.clearFocus();
        SearchBar searchBar = this.f28725t;
        if (searchBar != null) {
            searchBar.requestFocus();
        }
        com.google.android.material.internal.f0.o(this.f28715j, this.f28731z);
    }

    public void o() {
        if (this.f28715j.requestFocus()) {
            this.f28715j.sendAccessibilityEvent(8);
        }
        com.google.android.material.internal.f0.v(this.f28715j, this.f28731z);
    }

    public void p(View view) {
        hide();
    }

    public void q(View view) {
        clearText();
        x();
    }

    public boolean r(View view, MotionEvent motionEvent) {
        if (!k()) {
            return false;
        }
        clearFocusAndHideKeyboard();
        return false;
    }

    public static WindowInsetsCompat s(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, View view, WindowInsetsCompat windowInsetsCompat) {
        marginLayoutParams.leftMargin = i10 + windowInsetsCompat.getSystemWindowInsetLeft();
        marginLayoutParams.rightMargin = i11 + windowInsetsCompat.getSystemWindowInsetRight();
        return windowInsetsCompat;
    }

    private void setStatusBarSpacerEnabledInternal(boolean z10) {
        this.f28709d.setVisibility(z10 ? 0 : 8);
    }

    private void setUpBackgroundViewElevationOverlay(float f10) {
        va.a aVar = this.f28723r;
        if (aVar == null || this.f28708c == null) {
            return;
        }
        this.f28708c.setBackgroundColor(aVar.c(this.f28730y, f10));
    }

    private void setUpHeaderLayout(int i10) {
        if (i10 != -1) {
            addHeaderView(LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this.f28710e, false));
        }
    }

    private void setUpStatusBarSpacer(int i10) {
        if (this.f28709d.getLayoutParams().height != i10) {
            this.f28709d.getLayoutParams().height = i10;
            this.f28709d.requestLayout();
        }
    }

    public static boolean t(View view, MotionEvent motionEvent) {
        return true;
    }

    public WindowInsetsCompat u(View view, WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        setUpStatusBarSpacer(systemWindowInsetTop);
        if (!this.A) {
            setStatusBarSpacerEnabledInternal(systemWindowInsetTop > 0);
        }
        return windowInsetsCompat;
    }

    public WindowInsetsCompat v(View view, WindowInsetsCompat windowInsetsCompat, com.google.android.material.internal.f0.e eVar) {
        boolean zP = com.google.android.material.internal.f0.p(this.f28712g);
        this.f28712g.setPadding((zP ? eVar.f28384c : eVar.f28382a) + windowInsetsCompat.getSystemWindowInsetLeft(), eVar.f28383b, (zP ? eVar.f28382a : eVar.f28384c) + windowInsetsCompat.getSystemWindowInsetRight(), eVar.f28385d);
        return windowInsetsCompat;
    }

    public void w(View view) {
        show();
    }

    private void y(TransitionState transitionState, boolean z10) {
        if (this.B.equals(transitionState)) {
            return;
        }
        if (z10) {
            if (transitionState == TransitionState.SHOWN) {
                setModalForAccessibility(true);
            } else if (transitionState == TransitionState.HIDDEN) {
                setModalForAccessibility(false);
            }
        }
        this.B = transitionState;
        Iterator it = new LinkedHashSet(this.f28724s).iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
        K(transitionState);
    }

    private void z(boolean z10, boolean z11) {
        if (z11) {
            this.f28712g.setNavigationIcon((Drawable) null);
            return;
        }
        this.f28712g.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f28790a.p(view);
            }
        });
        if (z10) {
            androidx.appcompat.graphics.drawable.c cVar = new androidx.appcompat.graphics.drawable.c(getContext());
            cVar.c(com.google.android.material.color.b.d(this, R$attr.colorOnSurface));
            this.f28712g.setNavigationIcon(cVar);
        }
    }

    public void addHeaderView(@NonNull View view) {
        this.f28710e.addView(view);
        this.f28710e.setVisibility(0);
    }

    public void addTransitionListener(@NonNull b bVar) {
        this.f28724s.add(bVar);
    }

    @Override
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.f28719n) {
            this.f28718m.addView(view, i10, layoutParams);
        } else {
            super.addView(view, i10, layoutParams);
        }
    }

    @Override
    public void cancelBackProgress() {
        if (l() || this.f28725t == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.f28720o.o();
    }

    public void clearFocusAndHideKeyboard() {
        this.f28715j.post(new Runnable() {
            @Override
            public final void run() {
                this.f28791a.n();
            }
        });
    }

    public void clearText() {
        this.f28715j.setText("");
    }

    ya.h getBackHelper() {
        return this.f28720o.r();
    }

    @Override
    @NonNull
    public CoordinatorLayout.c getBehavior() {
        return new Behavior();
    }

    @NonNull
    public TransitionState getCurrentTransitionState() {
        return this.B;
    }

    protected int getDefaultNavigationIconResource() {
        return R$drawable.ic_arrow_back_black_24;
    }

    @NonNull
    public EditText getEditText() {
        return this.f28715j;
    }

    @Nullable
    public CharSequence getHint() {
        return this.f28715j.getHint();
    }

    @NonNull
    public TextView getSearchPrefix() {
        return this.f28714i;
    }

    @Nullable
    public CharSequence getSearchPrefixText() {
        return this.f28714i.getText();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getSoftInputMode() {
        return this.f28726u;
    }

    @NonNull
    @SuppressLint({"KotlinPropertyAccess"})
    public Editable getText() {
        return this.f28715j.getText();
    }

    @NonNull
    public Toolbar getToolbar() {
        return this.f28712g;
    }

    @Override
    public void handleBackInvoked() {
        if (l()) {
            return;
        }
        androidx.activity.b bVarS = this.f28720o.S();
        if (Build.VERSION.SDK_INT < 34 || this.f28725t == null || bVarS == null) {
            hide();
        } else {
            this.f28720o.p();
        }
    }

    public void hide() {
        if (this.B.equals(TransitionState.HIDDEN) || this.B.equals(TransitionState.HIDING)) {
            return;
        }
        this.f28720o.M();
    }

    public void inflateMenu(int i10) {
        this.f28712g.inflateMenu(i10);
    }

    public boolean isAnimatedNavigationIcon() {
        return this.f28727v;
    }

    public boolean isAutoShowKeyboard() {
        return this.f28729x;
    }

    public boolean isMenuItemsAnimated() {
        return this.f28728w;
    }

    public boolean isSetupWithSearchBar() {
        return this.f28725t != null;
    }

    public boolean isShowing() {
        return this.B.equals(TransitionState.SHOWN) || this.B.equals(TransitionState.SHOWING);
    }

    public boolean isUseWindowInsetsController() {
        return this.f28731z;
    }

    boolean k() {
        return this.f28726u == 48;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        cb.j.e(this);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        updateSoftInputMode();
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.f28732a);
        setVisible(savedState.f28733b == 0);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Editable text = getText();
        savedState.f28732a = text == null ? null : text.toString();
        savedState.f28733b = this.f28707b.getVisibility();
        return savedState;
    }

    public void removeAllHeaderViews() {
        this.f28710e.removeAllViews();
        this.f28710e.setVisibility(8);
    }

    public void removeHeaderView(@NonNull View view) {
        this.f28710e.removeView(view);
        if (this.f28710e.getChildCount() == 0) {
            this.f28710e.setVisibility(8);
        }
    }

    public void removeTransitionListener(@NonNull b bVar) {
        this.f28724s.remove(bVar);
    }

    public void requestFocusAndShowKeyboard() {
        this.f28715j.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f28796a.o();
            }
        }, 100L);
    }

    public void setAnimatedNavigationIcon(boolean z10) {
        this.f28727v = z10;
    }

    public void setAutoShowKeyboard(boolean z10) {
        this.f28729x = z10;
    }

    @Override
    public void setElevation(float f10) {
        super.setElevation(f10);
        setUpBackgroundViewElevationOverlay(f10);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        this.f28715j.setHint(charSequence);
    }

    public void setMenuItemsAnimated(boolean z10) {
        this.f28728w = z10;
    }

    public void setModalForAccessibility(boolean z10) {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        if (z10) {
            this.C = new HashMap(viewGroup.getChildCount());
        }
        J(viewGroup, z10);
        if (z10) {
            return;
        }
        this.C = null;
    }

    public void setOnMenuItemClickListener(@Nullable Toolbar.g gVar) {
        this.f28712g.setOnMenuItemClickListener(gVar);
    }

    public void setSearchPrefixText(@Nullable CharSequence charSequence) {
        this.f28714i.setText(charSequence);
        this.f28714i.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    public void setStatusBarSpacerEnabled(boolean z10) {
        this.A = true;
        setStatusBarSpacerEnabledInternal(z10);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setText(@Nullable CharSequence charSequence) {
        this.f28715j.setText(charSequence);
    }

    public void setToolbarTouchscreenBlocksFocus(boolean z10) {
        this.f28712g.setTouchscreenBlocksFocus(z10);
    }

    void setTransitionState(@NonNull TransitionState transitionState) {
        y(transitionState, true);
    }

    public void setUseWindowInsetsController(boolean z10) {
        this.f28731z = z10;
    }

    public void setVisible(boolean z10) {
        boolean z11 = this.f28707b.getVisibility() == 0;
        this.f28707b.setVisibility(z10 ? 0 : 8);
        M();
        y(z10 ? TransitionState.SHOWN : TransitionState.HIDDEN, z11 != z10);
    }

    public void setupWithSearchBar(@Nullable SearchBar searchBar) {
        this.f28725t = searchBar;
        this.f28720o.X(searchBar);
        if (searchBar != null) {
            searchBar.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f28799a.w(view);
                }
            });
            if (Build.VERSION.SDK_INT >= 34) {
                try {
                    searchBar.setHandwritingDelegatorCallback(new Runnable() {
                        @Override
                        public final void run() {
                            this.f28800a.show();
                        }
                    });
                    this.f28715j.setIsHandwritingDelegate(true);
                } catch (LinkageError unused) {
                }
            }
        }
        L();
        A();
        K(getCurrentTransitionState());
    }

    public void show() {
        if (this.B.equals(TransitionState.SHOWN) || this.B.equals(TransitionState.SHOWING)) {
            return;
        }
        this.f28720o.Z();
    }

    @Override
    public void startBackProgress(@NonNull androidx.activity.b bVar) {
        if (l() || this.f28725t == null) {
            return;
        }
        this.f28720o.a0(bVar);
    }

    @Override
    public void updateBackProgress(@NonNull androidx.activity.b bVar) {
        if (l() || this.f28725t == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.f28720o.f0(bVar);
    }

    public void updateSoftInputMode() {
        Window activityWindow = getActivityWindow();
        if (activityWindow != null) {
            this.f28726u = activityWindow.getAttributes().softInputMode;
        }
    }

    void x() {
        if (this.f28729x) {
            requestFocusAndShowKeyboard();
        }
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialSearchViewStyle);
    }

    public void setHint(int i10) {
        this.f28715j.setHint(i10);
    }

    public void setText(int i10) {
        this.f28715j.setText(i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = D;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f28721p = new ya.c(this);
        this.f28724s = new LinkedHashSet();
        this.f28726u = 16;
        this.B = TransitionState.HIDDEN;
        Context context2 = getContext();
        TypedArray typedArrayI = com.google.android.material.internal.b0.i(context2, attributeSet, R$styleable.SearchView, i10, i11, new int[0]);
        this.f28730y = typedArrayI.getColor(R$styleable.SearchView_backgroundTint, 0);
        int resourceId = typedArrayI.getResourceId(R$styleable.SearchView_headerLayout, -1);
        int resourceId2 = typedArrayI.getResourceId(R$styleable.SearchView_android_textAppearance, -1);
        String string = typedArrayI.getString(R$styleable.SearchView_android_text);
        String string2 = typedArrayI.getString(R$styleable.SearchView_android_hint);
        String string3 = typedArrayI.getString(R$styleable.SearchView_searchPrefixText);
        boolean z10 = typedArrayI.getBoolean(R$styleable.SearchView_useDrawerArrowDrawable, false);
        this.f28727v = typedArrayI.getBoolean(R$styleable.SearchView_animateNavigationIcon, true);
        this.f28728w = typedArrayI.getBoolean(R$styleable.SearchView_animateMenuItems, true);
        boolean z11 = typedArrayI.getBoolean(R$styleable.SearchView_hideNavigationIcon, false);
        this.f28729x = typedArrayI.getBoolean(R$styleable.SearchView_autoShowKeyboard, true);
        this.f28722q = typedArrayI.getBoolean(R$styleable.SearchView_backHandlingEnabled, true);
        typedArrayI.recycle();
        LayoutInflater.from(context2).inflate(R$layout.mtrl_search_view, this);
        this.f28719n = true;
        this.f28706a = findViewById(R$id.open_search_view_scrim);
        this.f28707b = (ClippableRoundedCornerLayout) findViewById(R$id.open_search_view_root);
        this.f28708c = findViewById(R$id.open_search_view_background);
        this.f28709d = findViewById(R$id.open_search_view_status_bar_spacer);
        this.f28710e = (FrameLayout) findViewById(R$id.open_search_view_header_container);
        this.f28711f = (FrameLayout) findViewById(R$id.open_search_view_toolbar_container);
        this.f28712g = (MaterialToolbar) findViewById(R$id.open_search_view_toolbar);
        this.f28713h = (Toolbar) findViewById(R$id.open_search_view_dummy_toolbar);
        this.f28714i = (TextView) findViewById(R$id.open_search_view_search_prefix);
        this.f28715j = (EditText) findViewById(R$id.open_search_view_edit_text);
        this.f28716k = (ImageButton) findViewById(R$id.open_search_view_clear_button);
        this.f28717l = findViewById(R$id.open_search_view_divider);
        this.f28718m = (TouchObserverFrameLayout) findViewById(R$id.open_search_view_content_container);
        this.f28720o = new f0(this);
        this.f28723r = new va.a(context2);
        G();
        A();
        setUpHeaderLayout(resourceId);
        setSearchPrefixText(string3);
        E(resourceId2, string, string2);
        z(z10, z11);
        B();
        C();
        F();
    }
}
