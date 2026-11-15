package com.transsion.widgetslib.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Filterable;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.transsion.widgetslib.R;
import defpackage.dw4;
import defpackage.olb;
import java.lang.ref.WeakReference;
import java.util.List;

public class SearchBar extends FrameLayout implements dw4 {
    public View.OnClickListener A;
    public r B;
    public r C;
    public Drawable D;
    public String E;
    public boolean F;
    public CharSequence G;
    public ViewTreeObserver.OnGlobalLayoutListener H;
    public int I;
    public View J;
    public View K;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public OSIconTextView o;
    public OSIconTextView p;
    public TextView q;
    public AutoCompleteTextView r;
    public OSIconTextView s;
    public OSIconTextView t;
    public OSIconTextView u;
    public LinearLayout v;
    public TextWatcher w;
    public View.OnClickListener x;
    public View.OnClickListener y;
    public View.OnClickListener z;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            if (!SearchBar.this.l) {
                SearchBar.this.startSearch();
            } else if (SearchBar.this.z != null) {
                SearchBar.this.z.onClick(view);
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            if (SearchBar.this.r != null) {
                SearchBar.this.r.requestFocus();
            }
        }
    }

    public class c implements AdapterView.OnItemClickListener {
        public c() {
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            SearchBar.i(SearchBar.this);
        }
    }

    public class d implements TextView.OnEditorActionListener {
        public d() {
        }

        @Override
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchBar.this.H();
            return true;
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            if (!TextUtils.isEmpty(SearchBar.this.r.getText()) || SearchBar.this.r.length() > 0) {
                SearchBar.this.r.setText((CharSequence) null);
            }
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override
        public void onClick(View view) {
            if (SearchBar.this.y != null) {
                SearchBar.this.y.onClick(view);
            }
        }
    }

    public class g implements View.OnClickListener {
        public g() {
        }

        @Override
        public void onClick(View view) {
            if (SearchBar.this.A != null) {
                SearchBar.this.A.onClick(view);
            }
        }
    }

    public class h implements ViewTreeObserver.OnGlobalLayoutListener {
        public h() {
        }

        @Override
        public void onGlobalLayout() {
            if (!SearchBar.this.getIsBackMode() || SearchBar.this.I == SearchBar.this.J.getMeasuredWidth()) {
                return;
            }
            SearchBar.this.syncDimens();
        }
    }

    public class i implements ViewTreeObserver.OnPreDrawListener {
        public i() {
        }

        @Override
        public boolean onPreDraw() {
            SearchBar.this.getViewTreeObserver().removeOnPreDrawListener(this);
            SearchBar.this.o.offsetLeftAndRight(-SearchBar.this.getBackViewStaticWidth());
            SearchBar.this.o.setVisibility(8);
            SearchBar searchBar = SearchBar.this;
            searchBar.f = searchBar.q.getMeasuredWidth();
            int i = SearchBar.this.b;
            SearchBar searchBar2 = SearchBar.this;
            searchBar2.h = searchBar2.getBackViewStaticWidth() - i;
            SearchBar searchBar3 = SearchBar.this;
            searchBar3.g = searchBar3.f - SearchBar.this.h;
            if (SearchBar.this.getIsBackMode() && SearchBar.this.m) {
                SearchBar.this.q.setVisibility(8);
                SearchBar.this.o.setVisibility(0);
                SearchBar.this.r.setVisibility(0);
                SearchBar.this.G();
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SearchBar.this.r.getLayoutParams();
                layoutParams.width = SearchBar.this.g;
                SearchBar.this.r.setLayoutParams(layoutParams);
                float f = olb.l0() ? -SearchBar.this.h : SearchBar.this.h;
                SearchBar.this.r.setTranslationX(f);
                SearchBar.this.p.setTranslationX(f);
            }
            SearchBar.this.D();
            return true;
        }
    }

    public class j implements View.OnClickListener {
        public j() {
        }

        @Override
        public void onClick(View view) {
            SearchBar.this.endSearch();
        }
    }

    public static class k extends AnimatorListenerAdapter {
        public WeakReference b;
        public WeakReference c;
        public WeakReference d;

        public k(View view, View view2, View view3) {
            this.b = new WeakReference(view);
            this.c = new WeakReference(view2);
            this.d = new WeakReference(view3);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            WeakReference weakReference = this.b;
            if (weakReference != null && weakReference.get() != null) {
                ((View) this.b.get()).setClickable(true);
            }
            WeakReference weakReference2 = this.c;
            if (weakReference2 != null && weakReference2.get() != null) {
                ((View) this.c.get()).setVisibility(8);
            }
            WeakReference weakReference3 = this.d;
            if (weakReference3 != null && weakReference3.get() != null) {
                ((View) this.d.get()).setVisibility(0);
            }
            WeakReference weakReference4 = this.b;
            if (weakReference4 == null || weakReference4.get() == null) {
                return;
            }
            ((View) this.b.get()).setAlpha(1.0f);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            WeakReference weakReference = this.b;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            ((View) this.b.get()).setAlpha(0.0f);
            ((View) this.b.get()).setVisibility(0);
        }
    }

    public static class l extends AnimatorListenerAdapter {
        public WeakReference b;
        public WeakReference c;
        public WeakReference d;

        public l(View view, View view2, View view3) {
            this.b = new WeakReference(view);
            this.c = new WeakReference(view2);
            this.d = new WeakReference(view3);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            WeakReference weakReference = this.b;
            if (weakReference != null && weakReference.get() != null) {
                ((View) this.b.get()).setVisibility(0);
            }
            WeakReference weakReference2 = this.c;
            if (weakReference2 != null && weakReference2.get() != null) {
                ((View) this.c.get()).setVisibility(0);
            }
            WeakReference weakReference3 = this.d;
            if (weakReference3 == null || weakReference3.get() == null) {
                return;
            }
            ((View) this.d.get()).setVisibility(8);
            ((View) this.d.get()).setEnabled(true);
        }
    }

    public static class m extends InputFilter.LengthFilter {
        public WeakReference a;
        public int b;
        public Toast c;
        public String d;

        public m(Context context, int i, String str) {
            super(i);
            if (context != null) {
                this.a = new WeakReference(context);
                this.b = i;
                this.d = str;
            }
        }

        @Override
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            CharSequence charSequenceFilter = super.filter(charSequence, i, i2, spanned, i3, i4);
            if (spanned == null) {
                return charSequenceFilter;
            }
            int length = spanned.length();
            Context context = (Context) this.a.get();
            if (context == null || length < this.b || length == 0 || charSequenceFilter == null || TextUtils.isEmpty(this.d)) {
                return charSequenceFilter;
            }
            if (this.c == null) {
                this.c = Toast.makeText(context, this.d, 1);
            }
            this.c.show();
            return charSequenceFilter;
        }
    }

    public interface n {
    }

    public interface o {
    }

    public static final class p {
        public static final Interpolator a = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
        public static final Interpolator b = new PathInterpolator(0.2f, 0.0f, 0.1f, 1.0f);
    }

    public class q implements TextWatcher {
        public q() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchBar.this.D();
            SearchBar.this.F();
        }
    }

    public class r {
        public View a;

        public r(View view) {
            this.a = view;
        }

        public int getWidth() {
            return this.a.getLayoutParams().width;
        }

        public void setWidth(int i) {
            this.a.getLayoutParams().width = i;
            this.a.requestLayout();
        }
    }

    public SearchBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.w = new q();
        this.x = new j();
        this.F = false;
        this.G = "";
        this.H = new h();
        LayoutInflater.from(context).inflate(R.layout.os_search_bar_layout, this);
        this.e = context.getResources().getDimensionPixelSize(R.dimen.os_search_bar_delete_margin);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSSearchBar);
        this.j = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSSearchBar_isBackMode, true);
        this.D = typedArrayObtainStyledAttributes.getDrawable(R.styleable.OSSearchBar_osSearchBarIconInEdittext);
        this.m = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSSearchBar_isSearStatusOnInitial, false);
        this.c = context.getResources().getDimensionPixelOffset(R.dimen.os_search_bar_text_padding_end_with_del_icon);
        this.d = context.getResources().getDimensionPixelOffset(R.dimen.os_search_bar_text_padding_end);
        typedArrayObtainStyledAttributes.recycle();
        this.i = context.getResources().getDimensionPixelOffset(R.dimen.os_dimen_icon_common_size) + context.getResources().getDimensionPixelOffset(R.dimen.os_dimen_search_back_view_padding_end) + context.getResources().getDimensionPixelOffset(R.dimen.os_icon_margin);
        J();
        I();
        L();
        E();
        F();
        this.B = new r(this.r);
        this.C = new r(this.q);
    }

    public static n i(SearchBar searchBar) {
        searchBar.getClass();
        return null;
    }

    private void setSearchViewLeftMargin(int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.r.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.p.getLayoutParams();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.os_space200);
        layoutParams.setMarginStart(i2);
        layoutParams2.setMarginStart(i2 + dimensionPixelSize);
        this.p.setLayoutParams(layoutParams2);
        this.r.setLayoutParams(layoutParams);
    }

    public final float A() {
        float fApplyDimension = TypedValue.applyDimension(1, 8.0f, getContext().getResources().getDisplayMetrics());
        View viewFindViewById = findViewById(R.id.relative_root);
        if (viewFindViewById != null && viewFindViewById.getHeight() > 0) {
            int height = viewFindViewById.getHeight();
            Resources resources = getContext().getResources();
            int i2 = R.dimen.os_auto_complete_textview_margin;
            float dimension = ((height - resources.getDimension(i2)) - getContext().getResources().getDimension(i2)) - fApplyDimension;
            if (dimension > 0.0f) {
                return dimension;
            }
        }
        float dimension2 = getContext().getResources().getDimension(R.dimen.os_action_bar_height);
        Resources resources2 = getContext().getResources();
        int i3 = R.dimen.os_auto_complete_textview_margin;
        return Math.max(((dimension2 - resources2.getDimension(i3)) - getContext().getResources().getDimension(i3)) - fApplyDimension, 0.0f);
    }

    public final void B(TextView textView, float f2) {
        TextPaint paint;
        if (textView == null || (paint = textView.getPaint()) == null) {
            return;
        }
        Rect rect = new Rect();
        String string = this.G.toString();
        paint.getTextBounds(string, 0, string.length(), rect);
        if (rect.height() > f2) {
            textView.setTextSize(1, 16.0f);
        }
    }

    public final void C() {
        if (this.u.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.u.getLayoutParams();
            if (this.s.getVisibility() == 0) {
                layoutParams.setMarginStart(getResources().getDimensionPixelSize(R.dimen.os_space125));
            } else {
                layoutParams.setMarginStart(0);
            }
            this.u.setLayoutParams(layoutParams);
        }
    }

    public final void D() {
        if (TextUtils.isEmpty(this.r.getText()) || this.r.getText().toString().length() <= 0 || this.r.getVisibility() != 0 || this.q.getVisibility() == 0 || !isSearchBarEnabled()) {
            if (this.s.getVisibility() != 8) {
                this.s.setVisibility(8);
                if (this.D != null) {
                    this.u.setVisibility(0);
                }
            }
        } else if (this.s.getVisibility() != 0) {
            this.s.setVisibility(0);
            if (this.D != null) {
                this.u.setVisibility(8);
            }
        }
        C();
    }

    public final void E() {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.osSearchBarMargin});
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, getContext().getResources().getDimensionPixelSize(R.dimen.os_search_bar_margin_hios));
        typedArrayObtainStyledAttributes.recycle();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.v.getLayoutParams();
        if (getIsBackMode()) {
            layoutParams.setMarginEnd(getContext().getResources().getDimensionPixelSize(R.dimen.os_search_bar_margin_xos));
        } else {
            layoutParams.setMarginEnd(this.b);
        }
        this.v.setLayoutParams(layoutParams);
    }

    public final void F() {
        C();
        this.v.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = this.v.getMeasuredWidth();
        if (measuredWidth <= 0) {
            measuredWidth = this.d;
        }
        AutoCompleteTextView autoCompleteTextView = this.r;
        autoCompleteTextView.setPaddingRelative(autoCompleteTextView.getPaddingStart(), this.r.getPaddingTop(), measuredWidth, this.r.getPaddingBottom());
        TextView textView = this.q;
        textView.setPaddingRelative(textView.getPaddingStart(), this.q.getPaddingTop(), measuredWidth, this.q.getPaddingBottom());
    }

    public final void G() {
        if (this.t.getVisibility() == 8) {
            this.g = (this.f - this.h) - getContext().getResources().getDimensionPixelSize(R.dimen.os_search_bar_back_mode_margin);
        }
    }

    public final void H() {
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
    }

    public final void I() {
        this.q.setOnClickListener(new a());
        this.p.setOnClickListener(new b());
        this.o.setOnClickListener(this.x);
        this.r.setOnItemClickListener(new c());
        this.r.setOnEditorActionListener(new d());
        this.s.setOnClickListener(new e());
        this.t.setOnClickListener(new f());
        this.u.setOnClickListener(new g());
    }

    public final void J() {
        this.q = (TextView) findViewById(R.id.text_click);
        this.J = findViewById(R.id.relative_root);
        this.K = findViewById(R.id.linear_root);
        this.r = (AutoCompleteTextView) findViewById(R.id.text_search);
        this.o = (OSIconTextView) findViewById(R.id.img_btn_back);
        this.p = (OSIconTextView) findViewById(R.id.img_search_icon);
        this.s = (OSIconTextView) findViewById(R.id.img_delete_all);
        this.t = (OSIconTextView) findViewById(R.id.img_custom);
        this.v = (LinearLayout) findViewById(R.id.ll_del_custom_container);
        this.u = (OSIconTextView) findViewById(R.id.img_custom_in_edittext);
        if (!TextUtils.isEmpty(this.E)) {
            this.u.setVisibility(0);
            this.u.setText(this.E);
        }
        if (!getIsBackMode()) {
            this.q.setVisibility(8);
            this.r.setVisibility(0);
            M();
        }
        this.p.setTextColor(olb.m(getContext(), R.attr.os_icon_disable, R.color.os_icon_disable_hios));
        this.o.setTextColor(getContext().getColorStateList(R.color.os_icon_color));
    }

    public final void K() {
        if (this.q == null || this.r == null || TextUtils.isEmpty(this.G)) {
            return;
        }
        float fA = A();
        B(this.q, fA);
        B(this.r, fA);
    }

    public final void L() {
        getViewTreeObserver().addOnPreDrawListener(new i());
    }

    public final void M() {
        AutoCompleteTextView autoCompleteTextView = this.r;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.requestFocus();
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService(InputMethodManager.class);
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(this.r, 0);
            }
        }
    }

    public final void N(boolean z) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.r.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.q.getLayoutParams();
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.v.getLayoutParams();
        layoutParams.setMarginEnd(z ? 0 : this.b);
        layoutParams2.setMarginEnd(z ? 0 : this.b);
        layoutParams3.setMarginEnd(z ? 0 : this.b);
        this.r.setLayoutParams(layoutParams);
        this.q.setLayoutParams(layoutParams2);
        this.v.setLayoutParams(layoutParams3);
    }

    public void addTextWatcher(TextWatcher textWatcher) {
        if (textWatcher == null) {
            return;
        }
        this.r.addTextChangedListener(textWatcher);
    }

    public void endSearch() {
        this.k = false;
        D();
        F();
        this.r.setText((CharSequence) null);
        this.o.setClickable(false);
        endSearchForTransition().start();
    }

    public AnimatorSet endSearchForTransition() {
        return endSearchForTransition(1.0f, 0.0f);
    }

    public View getBackView() {
        return this.o;
    }

    public int getBackViewStaticWidth() {
        return this.i;
    }

    public TextView getClickTextView() {
        TextView textView = this.q;
        if (textView != null) {
            return textView;
        }
        return null;
    }

    public View getDeleteAllIconView() {
        return this.s;
    }

    public View getDeleteButton() {
        return this.s;
    }

    @Override
    public EditText getEditText() {
        return this.r;
    }

    public View getImgCustomInEdittext() {
        return this.u;
    }

    public View getImgCustomView() {
        return this.t;
    }

    public boolean getIsBackMode() {
        return this.j;
    }

    public View getLinearRootView() {
        return this.K;
    }

    public boolean getRightIconVisibility() {
        return this.t.getVisibility() == 0;
    }

    @Override
    @NonNull
    public View getSearchBarView() {
        return this;
    }

    public View getSearchIconView() {
        return this.p;
    }

    public AutoCompleteTextView getSearchTextView() {
        AutoCompleteTextView autoCompleteTextView = this.r;
        if (autoCompleteTextView != null) {
            return autoCompleteTextView;
        }
        return null;
    }

    public float getTransitionScale(float f2) {
        float measuredWidth = ((getMeasuredWidth() * f2) - (this.b * 2)) - (getBackViewStaticWidth() - this.b);
        if (olb.a[0].equalsIgnoreCase(olb.getOsType()) && this.t.getVisibility() == 8) {
            measuredWidth -= getContext().getResources().getDimensionPixelSize(R.dimen.os_search_bar_back_mode_margin);
        }
        return (measuredWidth * 1.0f) / this.g;
    }

    @Override
    public int getType() {
        return 0;
    }

    public boolean isOnSearch() {
        return this.k;
    }

    public boolean isSearchBarEnabled() {
        return this.r.isEnabled();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.r.addTextChangedListener(this.w);
        getViewTreeObserver().addOnGlobalLayoutListener(this.H);
        F();
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        K();
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.H);
        this.r.removeTextChangedListener(this.w);
    }

    public void removeTextChangedListener(TextWatcher textWatcher) {
        this.r.removeTextChangedListener(textWatcher);
    }

    public void removeTextWatcher(TextWatcher textWatcher) {
        this.r.removeTextChangedListener(textWatcher);
    }

    public void requireSearchAnimManagerTrans(boolean z) {
        this.F = z;
    }

    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        this.r.setAdapter(t);
    }

    public void setBackClickListener(View.OnClickListener onClickListener) {
        this.x = onClickListener;
        this.o.setOnClickListener(onClickListener);
    }

    public void setCustomIconInEdittextClickListener(View.OnClickListener onClickListener) {
        this.A = onClickListener;
    }

    public void setCustomSearchIcon(String str) {
        OSIconTextView oSIconTextView = this.p;
        if (oSIconTextView != null) {
            oSIconTextView.setText(str);
        }
    }

    public void setDeleteButtonVisibility(int i2) {
        this.s.setVisibility(i2);
    }

    public void setHint(CharSequence charSequence) {
        this.G = charSequence;
        this.q.setText(charSequence);
        this.r.setHint(charSequence);
        K();
    }

    public void setInputMax(int i2, int i3) {
        setInputMax(i2, getResources().getString(i3));
    }

    public void setIsIDLE(boolean z) {
        this.l = z;
    }

    public void setOnItemClickListener(n nVar) {
    }

    public void setOnStateChangeListener(o oVar) {
    }

    public void setRightIcon(String str) {
        setRightIcon(str, null);
    }

    public void setRightIconVisibility(boolean z) {
        this.t.setVisibility(z ? 0 : 8);
        N(z);
        setSearchViewLeftMargin(z ? getContext().getResources().getDimensionPixelSize(R.dimen.os_space250) : getContext().getResources().getDimensionPixelSize(R.dimen.os_search_bar_margin_hios));
    }

    public void setRootWidth(int i2) {
        this.f = i2;
    }

    public void setSearchBarClickListener(View.OnClickListener onClickListener) {
        this.z = onClickListener;
    }

    public void setSearchBarEnabled(boolean z) {
        AutoCompleteTextView autoCompleteTextView = this.r;
        if (autoCompleteTextView == null || this.p == null || this.q == null) {
            return;
        }
        autoCompleteTextView.setEnabled(z);
        this.q.setEnabled(z);
        if (z) {
            this.r.requestFocus();
            this.r.setAlpha(1.0f);
            this.p.setAlpha(1.0f);
            this.q.setAlpha(1.0f);
        } else {
            this.r.setAlpha(0.65f);
            this.p.setAlpha(0.65f);
            this.q.setAlpha(0.65f);
        }
        D();
        F();
    }

    public void setSearchBarIconInEdittext(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.E = str;
            this.u.setVisibility(0);
            this.u.setText(str);
        } else if (this.u.getVisibility() == 0) {
            this.u.setVisibility(8);
        }
        F();
    }

    public void setSearchSource(Context context, List<String> list) {
        this.r.setAdapter(new ArrayAdapter(context, R.layout.os_search_source_item_layout, R.id.search_item_text, list));
    }

    public void setText(CharSequence charSequence, boolean z) {
        this.n = true;
        this.r.setText(charSequence);
        F();
        D();
        this.n = false;
        if (z) {
            startSearch();
        }
    }

    public void setTextHeightElegant(boolean z) {
        TextView textView = this.q;
        if (textView != null) {
            textView.setElegantTextHeight(z);
        }
        AutoCompleteTextView autoCompleteTextView = this.r;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setElegantTextHeight(z);
        }
    }

    @Deprecated
    public void setTextWatcher(TextWatcher textWatcher) {
        if (textWatcher == null) {
            return;
        }
        this.r.removeTextChangedListener(this.w);
        this.w = textWatcher;
        this.r.addTextChangedListener(textWatcher);
    }

    public void startSearch() {
        this.k = true;
        this.q.setVisibility(8);
        this.r.setVisibility(0);
        this.r.setHint(this.G);
        x().start();
        M();
        D();
        F();
    }

    public AnimatorSet startSearchForTransition(float f2, float f3) {
        return y(f2, f3);
    }

    public void syncDimens() {
        this.I = this.J.getMeasuredWidth();
        this.f = this.J.getMeasuredWidth() - (this.b * 2);
        int backViewStaticWidth = getBackViewStaticWidth() - this.b;
        this.h = backViewStaticWidth;
        this.g = this.f - backViewStaticWidth;
        G();
        if (this.r.getVisibility() == 0) {
            if (this.r.getLayoutParams().width != this.g) {
                ViewGroup.LayoutParams layoutParams = this.r.getLayoutParams();
                layoutParams.width = this.g;
                this.r.setLayoutParams(layoutParams);
            }
            float f2 = olb.l0() ? -this.h : this.h;
            this.r.setTranslationX(f2);
            this.p.setTranslationX(f2);
        }
        if (this.q.getVisibility() == 0 && this.q.getLayoutParams().width != this.f) {
            ViewGroup.LayoutParams layoutParams2 = this.r.getLayoutParams();
            layoutParams2.width = this.f;
            this.q.setLayoutParams(layoutParams2);
        }
        D();
    }

    public void updateEnterForTransition() {
        OSIconTextView oSIconTextView = this.p;
        if (oSIconTextView != null) {
            oSIconTextView.setVisibility(4);
        }
        OSIconTextView oSIconTextView2 = this.o;
        if (oSIconTextView2 != null) {
            oSIconTextView2.setVisibility(4);
        }
    }

    public void updateExitForTransition() {
        OSIconTextView oSIconTextView = this.p;
        if (oSIconTextView != null) {
            oSIconTextView.setVisibility(0);
        }
        OSIconTextView oSIconTextView2 = this.o;
        if (oSIconTextView2 != null) {
            oSIconTextView2.setVisibility(0);
        }
    }

    public final AnimatorSet x() {
        return y(1.0f, 0.0f);
    }

    public final AnimatorSet y(float f2, float f3) {
        G();
        boolean z = getLayoutDirection() == 1;
        int backViewStaticWidth = getBackViewStaticWidth();
        if (!z) {
            backViewStaticWidth = -backViewStaticWidth;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.o, "translationX", backViewStaticWidth, 0.0f);
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this.C, "width", this.f, (int) (this.g * getTransitionScale(f2)));
        int i2 = this.h;
        if (z) {
            i2 = -i2;
        }
        float f4 = i2;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.q, "translationX", 0.0f, f4);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.r, "translationX", 0.0f, f4);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.p, "translationX", 0.0f, f4);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.o, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat5.setStartDelay(150L);
        objectAnimatorOfFloat5.setDuration(250L);
        Interpolator interpolator = p.a;
        objectAnimatorOfFloat5.setInterpolator(interpolator);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(400L);
        animatorSet.setInterpolator(interpolator);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfInt, objectAnimatorOfFloat2, objectAnimatorOfFloat4, objectAnimatorOfFloat5, objectAnimatorOfFloat3);
        if (this.F) {
            animatorSet.playTogether(ObjectAnimator.ofFloat(this, "translationX", 0.0f, (-f3) * (z ? -1 : 1)));
        }
        animatorSet.addListener(new k(this.o, this.q, this.r));
        return animatorSet;
    }

    public final AnimatorSet z(float f2, float f3) {
        boolean z = getLayoutDirection() == 1;
        int backViewStaticWidth = getBackViewStaticWidth();
        if (!z) {
            backViewStaticWidth = -backViewStaticWidth;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.o, "translationX", 0.0f, backViewStaticWidth);
        objectAnimatorOfFloat.setDuration(350L);
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this.C, "width", (int) (this.g * getTransitionScale(f2)), this.f);
        objectAnimatorOfInt.setDuration(350L);
        int i2 = this.h;
        if (z) {
            i2 = -i2;
        }
        float f4 = i2;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.q, "translationX", f4, 0.0f);
        objectAnimatorOfFloat2.setDuration(350L);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.p, "translationX", f4, 0.0f);
        objectAnimatorOfFloat3.setDuration(350L);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.r, "translationX", f4, 0.0f);
        objectAnimatorOfFloat4.setDuration(350L);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.o, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat5.setDuration(100L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(p.b);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfInt, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat5, objectAnimatorOfFloat4);
        if (this.F) {
            animatorSet.playTogether(ObjectAnimator.ofFloat(this, "translationX", (-f3) * (z ? -1 : 1), 0.0f));
        }
        animatorSet.addListener(new l(this.o, this.q, this.r));
        return animatorSet;
    }

    public AnimatorSet endSearchForTransition(float f2, float f3) {
        return z(f2, f3);
    }

    public void setInputMax(int i2, String str) {
        this.r.setFilters(new InputFilter[]{new m(getContext(), i2, str)});
    }

    public void setRightIcon(String str, View.OnClickListener onClickListener) {
        this.y = onClickListener;
        this.t.setVisibility(0);
        this.t.setText(str);
        N(true);
        setSearchViewLeftMargin(getContext().getResources().getDimensionPixelSize(R.dimen.os_space250));
    }

    public AnimatorSet startSearchForTransition() {
        return y(1.0f, 0.0f);
    }

    public void setHint(int i2) {
        setHint(getResources().getString(i2));
    }
}
