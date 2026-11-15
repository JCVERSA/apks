package com.transsion.widgetslistitemlayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.transsion.hubsdk.api.graphics.TranCanvas;
import com.transsion.widgetslib.view.BadgeView;
import com.transsion.widgetslib.view.OSCheckBox;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetslib.widget.OSPopupWindow;
import com.transsion.widgetslib.widget.seekbar.OSSectionSeekbar;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.bq5;
import defpackage.olb;
import defpackage.qb9;

public class OSListItemView extends RelativeLayout {
    public static final int ANIM_DURATION = 300;
    public static final int CORNERS_TYPE_BOTTOM_ROUND = 3;
    public static final int CORNERS_TYPE_RIGHT = 0;
    public static final int CORNERS_TYPE_ROUND = 1;
    public static final int CORNERS_TYPE_TOP_ROUND = 2;
    public static final float DESCRIBE_TITLE_MAX_WIDTH_DP = 105.0f;
    public static final int INTERACTIVE_MODE_CLICK = 1;
    public static final int INTERACTIVE_MODE_NONE = 0;
    public static final int INTERACTIVE_MODE_SELECTED = 2;
    public static final String J0 = "OSListItemView";
    public static int K0 = 1;
    public static final int LEFT_DRAWABLE_DIMEN_BIG = 1;
    public static final int LEFT_DRAWABLE_DIMEN_SMALL = 0;
    public static final float NORMAL_MAX_WIDTH_DP = 360.0f;
    public static final int SEEKBAR_TYPE_DISCRETE = 1;
    public static final int SEEKBAR_TYPE_NORMAL = 0;
    public OSSeekbar A;
    public boolean A0;
    public OSSectionSeekbar B;
    public boolean B0;
    public TextView C;
    public int C0;
    public TextView D;
    public TextView D0;
    public TextView E;
    public LinearLayout E0;
    public TextView F;
    public TextWatcher F0;
    public TextView G;
    public TextWatcher G0;
    public TextView H;
    public TextWatcher H0;
    public boolean I;
    public boolean I0;
    public ViewTreeObserver.OnPreDrawListener J;
    public ViewTreeObserver K;
    public int L;
    public com.transsion.widgetslistitemlayout.c M;
    public OSIconTextView N;
    public BadgeView O;
    public Button P;
    public int Q;
    public boolean R;
    public String S;
    public boolean T;
    public BadgeView U;
    public OSIconTextView V;
    public OSSmoothRoundCorner W;
    public OSIconTextView a0;
    public int b;
    public boolean b0;
    public String c;
    public ObjectAnimator c0;
    public String d;
    public boolean d0;
    public String e;
    public boolean e0;
    public String f;
    public boolean f0;
    public Drawable g;
    public View.OnClickListener g0;
    public String h;
    public boolean h0;
    public String i;
    public View i0;
    public boolean j;
    public View j0;
    public boolean k;
    public View k0;
    public int l;
    public View l0;
    public int m;
    public int m0;
    public int n;
    public int n0;
    public boolean o;
    public com.transsion.widgetslistitemlayout.b o0;
    public boolean p;
    public boolean p0;
    public boolean q;
    public boolean q0;
    public boolean r;
    public float r0;
    public boolean s;
    public Path s0;
    public boolean t;
    public boolean t0;
    public int u;
    public boolean u0;
    public Switch v;
    public boolean v0;
    public RadioButton w;
    public FrameLayout w0;
    public OSCheckBox x;
    public View x0;
    public ListView y;
    public Integer y0;
    public ProgressBar z;
    public TranCanvas z0;

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public final int b;

        public a(int i) {
            this.b = i;
        }

        @Override
        public boolean onPreDraw() {
            int id;
            if (OSListItemView.this.getWidth() <= 0) {
                return true;
            }
            OSListItemView.this.F.getViewTreeObserver().removeOnPreDrawListener(this);
            if (OSListItemView.this.x == null || OSListItemView.this.x.getVisibility() == 8) {
                id = -1;
            } else {
                id = OSListItemView.this.x.getId();
                if (id == -1) {
                    id = R.id.lil_right_checkbox;
                    OSListItemView.this.x.setId(id);
                }
            }
            TextPaint paint = OSListItemView.this.E.getPaint();
            TextPaint paint2 = OSListItemView.this.F.getPaint();
            float fMeasureText = paint.measureText(OSListItemView.this.E.getText().toString());
            float fMeasureText2 = paint2.measureText(OSListItemView.this.F.getText().toString());
            Resources resources = OSListItemView.this.getContext().getResources();
            int i = R.dimen.os_dimen_icon_common_size;
            int dimensionPixelSize = resources.getDimensionPixelSize(i) + olb.h(OSListItemView.this.getContext(), 16);
            Resources resources2 = OSListItemView.this.getContext().getResources();
            int i2 = R.dimen.os_list_item_padding;
            float dimensionPixelSize2 = fMeasureText + fMeasureText2 + (resources2.getDimensionPixelSize(i2) * 2) + dimensionPixelSize + this.b;
            Log.i("initGroupTitleArrow", "titleTextWidth" + fMeasureText + " subTitleTextWidth:" + fMeasureText2 + "totalWidth:" + dimensionPixelSize2 + " getWidth():" + OSListItemView.this.getWidth());
            if (TextUtils.isEmpty(OSListItemView.this.E.getText().toString())) {
                if (dimensionPixelSize2 >= OSListItemView.this.getWidth()) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) OSListItemView.this.F.getLayoutParams();
                    layoutParams.addRule(21);
                    layoutParams.removeRule(20);
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) OSListItemView.this.V.getLayoutParams();
                    layoutParams2.addRule(21);
                    layoutParams2.removeRule(17);
                    if (id != -1) {
                        layoutParams.removeRule(21);
                        layoutParams.addRule(16, id);
                        layoutParams.setMarginEnd(0);
                        layoutParams2.removeRule(21);
                        layoutParams2.addRule(16, id);
                        layoutParams2.setMarginStart(0);
                        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) OSListItemView.this.x.getLayoutParams();
                        layoutParams3.removeRule(15);
                        layoutParams3.addRule(6, OSListItemView.this.F.getId());
                        layoutParams3.addRule(8, OSListItemView.this.F.getId());
                        OSListItemView.this.x.setLayoutParams(layoutParams3);
                        if (OSListItemView.this.x.getHeight() > 0) {
                            OSListItemView.this.F.setMinHeight(OSListItemView.this.x.getHeight());
                        } else {
                            OSListItemView.this.F.setMinHeight(OSListItemView.this.getContext().getResources().getDimensionPixelSize(i));
                        }
                        OSListItemView.this.F.setGravity(16);
                    }
                    layoutParams.addRule(16, OSListItemView.this.V.getId());
                    layoutParams.setMarginEnd(OSListItemView.this.getContext().getResources().getDimensionPixelSize(i));
                    if (id != -1) {
                        layoutParams.setMarginEnd(0);
                    }
                    OSListItemView.this.F.setLayoutParams(layoutParams);
                    layoutParams2.addRule(6, OSListItemView.this.F.getId());
                    layoutParams2.addRule(8, OSListItemView.this.F.getId());
                    OSListItemView.this.V.setLayoutParams(layoutParams2);
                } else {
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) OSListItemView.this.F.getLayoutParams();
                    layoutParams4.removeRule(21);
                    layoutParams4.removeRule(16);
                    layoutParams4.addRule(20);
                    layoutParams4.setMarginEnd(0);
                    OSListItemView.this.F.setLayoutParams(layoutParams4);
                    RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) OSListItemView.this.V.getLayoutParams();
                    layoutParams5.removeRule(21);
                    layoutParams5.removeRule(16);
                    layoutParams5.addRule(17, OSListItemView.this.F.getId());
                    layoutParams5.setMarginStart(0);
                    OSListItemView.this.V.setLayoutParams(layoutParams5);
                }
                return true;
            }
            if (dimensionPixelSize2 >= OSListItemView.this.getWidth()) {
                RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) OSListItemView.this.F.getLayoutParams();
                layoutParams6.removeRule(15);
                layoutParams6.addRule(3, OSListItemView.this.E.getId());
                layoutParams6.addRule(16, OSListItemView.this.V.getId());
                layoutParams6.setMarginEnd(OSListItemView.this.getContext().getResources().getDimensionPixelSize(i));
                RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) OSListItemView.this.V.getLayoutParams();
                layoutParams7.removeRule(17);
                if (id != -1) {
                    layoutParams7.removeRule(21);
                    layoutParams7.addRule(16, id);
                    layoutParams7.setMarginStart(0);
                    layoutParams6.setMarginEnd(0);
                    RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) OSListItemView.this.x.getLayoutParams();
                    layoutParams8.removeRule(15);
                    layoutParams8.addRule(6, OSListItemView.this.F.getId());
                    layoutParams8.addRule(8, OSListItemView.this.F.getId());
                    OSListItemView.this.x.setLayoutParams(layoutParams8);
                    if (OSListItemView.this.x.getHeight() > 0) {
                        OSListItemView.this.F.setMinHeight(OSListItemView.this.x.getHeight());
                    } else {
                        OSListItemView.this.F.setMinHeight(OSListItemView.this.getContext().getResources().getDimensionPixelSize(i));
                    }
                    OSListItemView.this.F.setGravity(16);
                } else {
                    layoutParams7.setMarginStart(0);
                    layoutParams6.setMarginEnd(0);
                    layoutParams7.addRule(21);
                }
                layoutParams6.removeRule(21);
                layoutParams6.addRule(16, OSListItemView.this.V.getId());
                OSListItemView.this.F.setLayoutParams(layoutParams6);
                layoutParams7.addRule(3, OSListItemView.this.E.getId());
                layoutParams7.addRule(6, OSListItemView.this.F.getId());
                layoutParams7.addRule(8, OSListItemView.this.F.getId());
                OSListItemView.this.V.setLayoutParams(layoutParams7);
                OSListItemView oSListItemView = OSListItemView.this;
                OSListItemView.this.getLayoutParams().height = oSListItemView.A(oSListItemView.F, (OSListItemView.this.getWidth() - dimensionPixelSize) - OSListItemView.this.getContext().getResources().getDimensionPixelSize(i2)) + OSListItemView.this.E.getHeight() + OSListItemView.this.getPaddingTop() + OSListItemView.this.getPaddingBottom();
            } else {
                RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) OSListItemView.this.F.getLayoutParams();
                layoutParams9.removeRule(3);
                layoutParams9.addRule(15);
                layoutParams9.setMarginEnd(OSListItemView.this.getContext().getResources().getDimensionPixelSize(i));
                RelativeLayout.LayoutParams layoutParams10 = (RelativeLayout.LayoutParams) OSListItemView.this.V.getLayoutParams();
                if (id != -1) {
                    layoutParams9.removeRule(21);
                    layoutParams9.addRule(16, id);
                    layoutParams10.removeRule(21);
                    layoutParams10.addRule(16, id);
                } else {
                    layoutParams9.removeRule(16);
                    layoutParams10.removeRule(16);
                    layoutParams10.addRule(21);
                    layoutParams10.setMarginStart(0);
                    layoutParams9.setMarginEnd(0);
                    layoutParams9.addRule(16, OSListItemView.this.V.getId());
                    layoutParams9.removeRule(21);
                }
                OSListItemView.this.F.setLayoutParams(layoutParams9);
                OSListItemView.this.V.setLayoutParams(layoutParams10);
                OSListItemView.this.getLayoutParams().height = OSListItemView.this.getResources().getDimensionPixelOffset(R.dimen.os_list_item_title_min_height);
            }
            return true;
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            OSListItemView oSListItemView = OSListItemView.this;
            oSListItemView.b0 = !oSListItemView.b0;
        }
    }

    public class c implements TextWatcher {
        public c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (OSListItemView.this.v0) {
                boolean zIsEmpty = TextUtils.isEmpty(editable);
                OSListItemView.this.u0 = !zIsEmpty;
                OSListItemView.this.d = editable.toString();
                if (OSListItemView.this.D != null) {
                    OSListItemView.this.D.setVisibility(!zIsEmpty ? 0 : 8);
                }
                OSListItemView.this.adjustViewDescribeTitleWidth();
            }
            OSListItemView.this.v0 = true;
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class d implements TextWatcher {
        public d() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            OSListItemView.this.updateGroupTitle();
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class e implements TextWatcher {
        public e() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (!OSListItemView.this.A0 && OSListItemView.this.D0 != null && OSListItemView.this.D0.getVisibility() != 0) {
                OSListItemView.this.setShowSeekbarValue(true);
            }
            if (TextUtils.isEmpty(OSListItemView.this.C.getText().toString()) || OSListItemView.this.i0 == null) {
                return;
            }
            OSListItemView.this.C();
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class f implements com.transsion.widgetslistitemlayout.c.h {
        public f() {
        }

        @Override
        public void a(String str) {
            OSListItemView.this.e = str;
            if (OSListItemView.this.G != null) {
                OSListItemView.this.G.setText(str);
            }
            if (OSListItemView.this.D == null || OSListItemView.this.u0) {
                return;
            }
            OSListItemView.this.v0 = false;
            OSListItemView.this.D.setText(str);
        }

        @Override
        public void b() {
            OSListItemView.this.adjustViewDescribeTitleWidth();
        }

        @Override
        public void c(EditText editText) {
            InputMethodManager inputMethodManager = (InputMethodManager) OSListItemView.this.getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(editText, 1);
            }
        }
    }

    public class g implements View.OnClickListener {
        public g() {
        }

        @Override
        public void onClick(View view) {
            if (OSListItemView.this.x != null) {
                OSListItemView.this.x.setChecked(!OSListItemView.this.x.isChecked());
            }
        }
    }

    public class h implements ViewTreeObserver.OnPreDrawListener {
        public h() {
        }

        @Override
        public boolean onPreDraw() {
            OSListItemView.this.P();
            j jVarB = OSListItemView.this.B();
            OSListItemView.this.adjustViewDescribeTitleWidth();
            return !OSListItemView.T(jVarB, OSListItemView.this.B());
        }
    }

    public class i implements View.OnClickListener {
        public i() {
        }

        @Override
        public void onClick(View view) {
            if (OSListItemView.this.x != null) {
                OSListItemView.this.x.setChecked(!OSListItemView.this.x.isChecked());
            }
        }
    }

    public static final class j {
        public final int a;
        public final int b;
        public final boolean c;
        public final int d;

        public j(int i, int i2, boolean z, int i3) {
            this.a = i;
            this.b = i2;
            this.c = z;
            this.d = i3;
        }
    }

    public OSListItemView(Context context) {
        this(context, 0);
    }

    public static boolean T(j jVar, j jVar2) {
        return (jVar.a == jVar2.a && jVar.b == jVar2.b && jVar.c == jVar2.c && jVar.d == jVar2.d) ? false : true;
    }

    @Nullable
    private TextView getActiveDescribeTitleView() {
        return this.M.n(this.G);
    }

    private int getBasePaddingBottom() {
        return getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_top);
    }

    private int getBasePaddingTop() {
        return getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_top);
    }

    private int getCornersAwarePaddingBottom() {
        return getBasePaddingBottom() + getCornersExtraPaddingBottom();
    }

    private int getCornersAwarePaddingTop() {
        return getBasePaddingTop() + getCornersExtraPaddingTop();
    }

    private int getCornersExtraPaddingBottom() {
        if (!K()) {
            return 0;
        }
        int i2 = this.n;
        if (i2 == 1 || i2 == 3) {
            return getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_corner_extra);
        }
        return 0;
    }

    private int getCornersExtraPaddingTop() {
        if (!K()) {
            return 0;
        }
        int i2 = this.n;
        if (i2 == 1 || i2 == 2) {
            return getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_corner_extra);
        }
        return 0;
    }

    private int getDefaultSeekbarValueWidth() {
        Paint paint = new Paint();
        paint.setTextSize(getResources().getDimension(R.dimen.os_fontsize_subhead));
        return (int) Math.ceil(paint.measureText("100%"));
    }

    @Deprecated
    public static int getInteractiveMode() {
        return K0;
    }

    @Deprecated
    public static void setInteractiveMode(int i2) {
        K0 = i2;
    }

    private void setItemBg(Boolean bool) {
        this.q0 = bool.booleanValue();
        if (this.o0 == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        ColorDrawable colorDrawable = new ColorDrawable(this.m0);
        if (bool.booleanValue()) {
            setBackground(this.o0.j(this.n0, this.n, this.d0, colorDrawable, this.t0));
        } else {
            setBackground(this.o0.j(0, this.n, this.d0, colorDrawable, this.t0));
        }
    }

    public final int A(TextView textView, int i2) {
        int measuredHeight = 0;
        if (textView != null && !TextUtils.isEmpty(textView.getText())) {
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            textView.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
            measuredHeight = textView.getMeasuredHeight();
            if (layoutParams != null) {
                textView.setLayoutParams(layoutParams);
            }
        }
        return measuredHeight;
    }

    public j B() {
        TextView activeDescribeTitleView = getActiveDescribeTitleView();
        int maxWidth = activeDescribeTitleView != null ? activeDescribeTitleView.getMaxWidth() : -1;
        int visibility = activeDescribeTitleView != null ? activeDescribeTitleView.getVisibility() : 8;
        TextView textView = this.D;
        return new j(maxWidth, visibility, textView != null, textView != null ? textView.getVisibility() : 8);
    }

    public final void C() {
        TextView textView;
        LinearLayout linearLayout;
        int width;
        int paddingStart;
        int paddingEnd;
        if (this.i0 == null || this.C == null || (textView = this.D0) == null) {
            return;
        }
        int id = textView.getId();
        int i2 = R.id.lil_seekbar_value_below_title;
        if (id == i2 || this.D0.getId() == R.id.lil_seekbar_value_no_title || (linearLayout = (LinearLayout) this.i0.findViewById(R.id.lil_title_row)) == null || (width = linearLayout.getWidth()) <= 0) {
            return;
        }
        float fMeasureText = this.C.getPaint().measureText(this.C.getText().toString());
        float fMeasureText2 = this.D0.getPaint().measureText(this.D0.getText().toString());
        int paddingStart2 = linearLayout.getPaddingStart() + linearLayout.getPaddingEnd();
        TextView textView2 = (TextView) this.i0.findViewById(R.id.lil_seekbar_value);
        if (textView2 != null) {
            paddingStart = textView2.getPaddingStart();
            paddingEnd = textView2.getPaddingEnd();
        } else {
            paddingStart = this.D0.getPaddingStart();
            paddingEnd = this.D0.getPaddingEnd();
        }
        int i3 = paddingStart + paddingEnd;
        Resources resources = getResources();
        int i4 = R.dimen.os_space100;
        if (fMeasureText + fMeasureText2 + i3 + paddingStart2 + getResources().getDimensionPixelSize(i4) + resources.getDimensionPixelSize(i4) > width) {
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.E0;
            TextView textView3 = linearLayout2 != null ? (TextView) linearLayout2.findViewById(i2) : null;
            if (textView3 == null) {
                return;
            }
            textView3.setVisibility(0);
            TextView textView4 = this.D0;
            if (textView3 != textView4) {
                textView3.setText(textView4.getText());
            }
            TextView textView5 = this.D0;
            if (textView5 != textView3) {
                textView5.removeTextChangedListener(this.H0);
                this.D0 = textView3;
            }
            y();
        }
    }

    public final void D() {
        this.M.O(this.G);
        this.M.i();
    }

    public final void E() {
        if (this.m == 6 || this.b != 0) {
            return;
        }
        this.h0 = true;
        OSIconTextView oSIconTextView = this.a0;
        if (oSIconTextView != null) {
            oSIconTextView.setOnClickListener(this.g0);
        }
        OSSmoothRoundCorner oSSmoothRoundCorner = this.W;
        if (oSSmoothRoundCorner != null) {
            oSSmoothRoundCorner.setOnClickListener(this.g0);
        }
        super.setOnClickListener(this.g0);
        this.h0 = false;
    }

    public final void F(View view) {
        RelativeLayout.LayoutParams layoutParams;
        if (view == null || view.getVisibility() == 8 || (layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams()) == null || layoutParams.getRules()[15] == 0) {
            return;
        }
        int paddingTop = (getPaddingTop() + (Math.max(0, ((getHeight() - getPaddingTop()) - getPaddingBottom()) - view.getHeight()) / 2)) - view.getTop();
        if (paddingTop != 0) {
            view.offsetTopAndBottom(paddingTop);
        }
    }

    public final void G() {
        View view;
        if (this.D != null || (view = this.i0) == null) {
            return;
        }
        ViewStub viewStub = (ViewStub) view.findViewById(R.id.lil_stub_subtitle);
        if (viewStub != null) {
            this.D = (TextView) viewStub.inflate();
        } else {
            this.D = (TextView) this.i0.findViewById(R.id.lil_subtitle);
        }
        TextView textView = this.D;
        if (textView == null) {
            return;
        }
        textView.removeTextChangedListener(this.F0);
        this.D.addTextChangedListener(this.F0);
        if (TextUtils.isEmpty(this.D.getText())) {
            this.D.setVisibility(8);
        }
    }

    public final void H() {
        if (this.b == 1) {
            ViewStub viewStub = (ViewStub) findViewById(R.id.lil_stub_type_item_group_title_checkbox);
            if (viewStub != null) {
                this.x = (OSCheckBox) viewStub.inflate();
                return;
            } else {
                this.x = (OSCheckBox) findViewById(R.id.lil_right_checkbox);
                return;
            }
        }
        ViewStub viewStub2 = (ViewStub) findViewById(R.id.lil_stub_right_checkbox);
        if (viewStub2 == null) {
            this.x = (OSCheckBox) findViewById(R.id.lil_right_checkbox);
            return;
        }
        OSCheckBox oSCheckBox = (OSCheckBox) viewStub2.inflate();
        this.x = oSCheckBox;
        oSCheckBox.setClickable(false);
        this.x.setFocusable(false);
        this.x.setDuplicateParentStateEnabled(true);
    }

    public final void I(Context context, AttributeSet attributeSet) {
        int dimensionPixelOffset;
        int dimensionPixelOffset2;
        if (this.o0 == null) {
            this.o0 = new com.transsion.widgetslistitemlayout.b(context, this);
        }
        if (this.M == null) {
            com.transsion.widgetslistitemlayout.c cVar = new com.transsion.widgetslistitemlayout.c(context);
            this.M = cVar;
            cVar.J(new f());
        }
        this.r0 = getResources().getDimension(R.dimen.os_radius_l);
        if (this.z0 == null) {
            this.z0 = new TranCanvas();
        }
        if (this.s0 == null) {
            this.s0 = new Path();
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSListItemView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.OSListItemView_lil_title) {
                    this.c = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R.styleable.OSListItemView_lil_subtitle) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.d = string;
                    if (!TextUtils.isEmpty(string)) {
                        this.u0 = true;
                    }
                } else if (index == R.styleable.OSListItemView_lil_describe_title) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    if (!TextUtils.isEmpty(string2)) {
                        this.e = string2;
                    }
                } else if (index == R.styleable.OSListItemView_lil_describe_subtitle) {
                    this.f = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R.styleable.OSListItemView_lil_left_image) {
                    this.g = typedArrayObtainStyledAttributes.getDrawable(index);
                    this.j = true;
                } else if (index == R.styleable.OSListItemView_lil_left_text_icon) {
                    this.h = typedArrayObtainStyledAttributes.getString(index);
                    this.j = true;
                } else if (index == R.styleable.OSListItemView_lil_left_image_dimen) {
                    this.l = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.OSListItemView_lil_right_layout_type) {
                    int i3 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    this.m = i3;
                    if (i3 == 2) {
                        this.k = true;
                    }
                    if (i3 == 3 || i3 == 4 || i3 == 5 || i3 == 6) {
                        this.q0 = true;
                    }
                } else if (index == R.styleable.OSListItemView_lil_right_image) {
                    this.i = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R.styleable.OSListItemView_lil_sub_progressbar) {
                    this.o = typedArrayObtainStyledAttributes.getBoolean(index, false);
                    this.q0 = true;
                } else if (index == R.styleable.OSListItemView_lil_sub_seekbar) {
                    this.p = typedArrayObtainStyledAttributes.getBoolean(index, false);
                    this.q0 = true;
                } else if (index == R.styleable.OSListItemView_lil_seekbar_type) {
                    this.u = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.OSListItemView_lil_show_seekbar_value) {
                    this.A0 = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSListItemView_lil_right_show_divide_line) {
                    this.q = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSListItemView_lil_corners_angle_type) {
                    this.n = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.OSListItemView_lil_item_type) {
                    this.b = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.OSListItemView_lil_describe_show_red_dot) {
                    this.r = typedArrayObtainStyledAttributes.getBoolean(index, false);
                    this.q0 = true;
                } else if (index == R.styleable.OSListItemView_lil_group_title_show_arrow) {
                    this.s = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSListItemView_lil_group_title_expand_up_and_down) {
                    this.t = typedArrayObtainStyledAttributes.getBoolean(index, false);
                    this.q0 = true;
                } else if (index == R.styleable.OSListItemView_lil_open_new_page) {
                    boolean z = typedArrayObtainStyledAttributes.getBoolean(index, false);
                    setOpenNewPage(z);
                    this.p0 = !z;
                    this.q0 = true;
                } else if (index == R.styleable.OSListItemView_lil_interactive_type) {
                    this.n0 = typedArrayObtainStyledAttributes.getInt(index, 1);
                } else if (index == R.styleable.OSListItemView_lil_button_style_mod) {
                    this.Q = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R.styleable.OSListItemView_lil_button_short) {
                    this.R = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSListItemView_lil_button_text) {
                    this.S = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R.styleable.OSListItemView_lil_left_image_show_badge) {
                    this.T = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSListItemView_lil_show_click_bg) {
                    this.q0 = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSListItemView_lil_is_hios) {
                    this.d0 = typedArrayObtainStyledAttributes.getBoolean(index, true);
                } else if (index == R.styleable.OSListItemView_lil_intercept_right_view_touch_event) {
                    this.e0 = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSListItemView_lil_bg_color) {
                    this.m0 = typedArrayObtainStyledAttributes.getColor(index, context.getColor(R.color.os_layer_medium_hios));
                } else if (index == R.styleable.OSListItemView_lil_show_bottom_divider) {
                    this.t0 = typedArrayObtainStyledAttributes.getBoolean(index, false);
                } else if (index == R.styleable.OSListItemView_lil_close_hyphenation) {
                    this.B0 = typedArrayObtainStyledAttributes.getBoolean(index, false);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        setClickable(true);
        View.inflate(getContext(), R.layout.os_view_list_item_layout, this);
        if (this.b == 1) {
            setMinimumHeight(getResources().getDimensionPixelOffset(R.dimen.os_list_item_title_min_height));
            if (this.d0) {
                dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding);
            } else {
                dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_xos);
                if (this.m == 6 || this.s) {
                    dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_end_xos_icon);
                }
                setPadding(dimensionPixelOffset, getPaddingTop(), dimensionPixelOffset2, getPaddingBottom());
            }
            dimensionPixelOffset2 = dimensionPixelOffset;
            setPadding(dimensionPixelOffset, getPaddingTop(), dimensionPixelOffset2, getPaddingBottom());
        } else {
            setMinimumHeight(getResources().getDimensionPixelOffset(R.dimen.os_list_item_content_min_height));
            if (getBackground() == null) {
                setItemBg(Boolean.valueOf(this.q0));
            }
        }
        O();
    }

    public final void J() {
        if (this.E == null) {
            return;
        }
        if (this.V == null) {
            this.V = (OSIconTextView) ((ViewStub) findViewById(R.id.lil_stub_type_item_group_title_arrow)).inflate();
        }
        updateGroupTitle();
    }

    public final boolean K() {
        TranCanvas tranCanvas;
        return this.d0 && (tranCanvas = this.z0) != null && tranCanvas.smoothcornerCubicEdgeEnabled();
    }

    public final boolean L(MotionEvent motionEvent) {
        return this.M.z(motionEvent, this.k0);
    }

    public final boolean M(MotionEvent motionEvent) {
        View view;
        return this.m == 4 && (view = this.j0) != null && view.getVisibility() == 0 && N(motionEvent, this.j0);
    }

    public final boolean N(MotionEvent motionEvent, View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i2 = iArr[0];
        if (rawX < i2 || rawX > i2 + view.getWidth()) {
            return false;
        }
        int i3 = iArr[1];
        return rawY >= ((float) i3) && rawY <= ((float) (i3 + view.getHeight()));
    }

    /* JADX WARN: Code duplicated, block: B:205:0x0514 A[PHI: r4
      0x0514: PHI (r4v15 int) = (r4v14 int), (r4v39 int) binds: [B:198:0x04ec, B:203:0x050a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:220:0x053b  */
    /* JADX WARN: Code duplicated, block: B:221:0x053f  */
    /* JADX WARN: Code duplicated, block: B:99:0x0251  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v116, types: [android.view.View, com.transsion.widgetslib.view.OSCheckBox] */
    /* JADX WARN: Type inference failed for: r0v117, types: [android.view.View, com.transsion.widgetslib.view.OSCheckBox] */
    /* JADX WARN: Type inference failed for: r0v137, types: [android.view.View, android.widget.RadioButton] */
    /* JADX WARN: Type inference failed for: r0v138, types: [android.view.View, android.widget.RadioButton] */
    /* JADX WARN: Type inference failed for: r0v172, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r0v185, types: [android.widget.TextView, com.transsion.widgetslib.widget.OSIconTextView] */
    /* JADX WARN: Type inference failed for: r0v187, types: [android.view.View, com.transsion.widgetslib.widget.OSIconTextView] */
    /* JADX WARN: Type inference failed for: r0v19, types: [android.view.View, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r0v190, types: [android.view.View, com.transsion.widgetslib.widget.OSIconTextView] */
    /* JADX WARN: Type inference failed for: r0v194, types: [android.view.View, com.transsion.widgetslib.widget.OSIconTextView] */
    /* JADX WARN: Type inference failed for: r0v195, types: [android.view.View, com.transsion.widgetslib.widget.OSIconTextView] */
    /* JADX WARN: Type inference failed for: r0v199, types: [android.widget.TextView, com.transsion.widgetslib.widget.OSIconTextView] */
    /* JADX WARN: Type inference failed for: r0v202, types: [android.view.View, com.transsion.widgetslib.widget.OSIconTextView] */
    /* JADX WARN: Type inference failed for: r0v203, types: [android.view.View, com.transsion.widgetslib.widget.OSIconTextView] */
    /* JADX WARN: Type inference failed for: r0v80, types: [android.view.View, android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r2v11, types: [int] */
    /* JADX WARN: Type inference failed for: r2v15, types: [int] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24, types: [int] */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [int] */
    /* JADX WARN: Type inference failed for: r4v23, types: [android.view.View, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r4v26, types: [android.view.View, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r4v34, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r4v36, types: [android.view.View, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r4v50, types: [android.view.View, com.transsion.widgetslib.widget.seekbar.OSSectionSeekbar] */
    /* JADX WARN: Type inference failed for: r4v51, types: [android.view.View, com.transsion.widgetslib.widget.seekbar.OSSectionSeekbar] */
    /* JADX WARN: Type inference failed for: r4v6, types: [android.view.View, com.transsion.widgetslib.widget.seekbar.OSSeekbar] */
    /* JADX WARN: Type inference failed for: r4v69, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r4v7, types: [android.view.View, com.transsion.widgetslib.widget.seekbar.OSSeekbar] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void O() {
        int dimensionPixelOffset;
        int dimensionPixelOffset2;
        int i2;
        ?? r9;
        int i3;
        int i4;
        int i5;
        int id;
        int i6;
        boolean z;
        int dimensionPixelSize;
        View viewFindViewById;
        if (this.b == 1) {
            if (this.E == null) {
                ((ViewStub) findViewById(R.id.lil_stub_type_item_group_title)).inflate();
                this.E = (TextView) findViewById(R.id.lil_type_item_group_title_title);
            }
            if (!TextUtils.isEmpty(this.c)) {
                this.E.setText(olb.H0(this.c));
            }
            if (this.F == null) {
                TextView textView = (TextView) findViewById(R.id.lil_type_item_group_title_subtitle);
                this.F = textView;
                textView.removeTextChangedListener(this.G0);
                this.F.addTextChangedListener(this.G0);
            }
            if (!TextUtils.isEmpty(this.d)) {
                this.F.setText(this.d);
            }
            if (this.m == 6) {
                if (this.x == null) {
                    ViewStub viewStub = (ViewStub) findViewById(R.id.lil_stub_type_item_group_title_checkbox);
                    if (viewStub != null) {
                        this.x = (OSCheckBox) viewStub.inflate();
                    } else {
                        this.x = (OSCheckBox) findViewById(R.id.lil_right_checkbox);
                    }
                }
                OSCheckBox oSCheckBox = this.x;
                if (oSCheckBox != null && this.F != null) {
                    if (oSCheckBox.getId() == -1) {
                        this.x.setId(R.id.lil_right_checkbox);
                    }
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.F.getLayoutParams();
                    layoutParams.removeRule(21);
                    layoutParams.addRule(16, this.x.getId());
                    this.F.setLayoutParams(layoutParams);
                }
            }
            if (this.s || this.t) {
                J();
            }
        } else {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            int basePaddingTop = getBasePaddingTop();
            int basePaddingBottom = getBasePaddingBottom();
            if (this.d0) {
                dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding);
                i2 = basePaddingBottom;
                dimensionPixelOffset2 = dimensionPixelOffset;
            } else {
                dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_xos);
                dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_end_xos);
                i2 = basePaddingTop;
            }
            int i7 = 20;
            int i8 = 15;
            if (this.i0 == null && (this.c != null || this.j || (this.r && this.j0 == null))) {
                View viewInflate = ((ViewStub) findViewById(R.id.lil_stub_title_layout)).inflate();
                this.i0 = viewInflate;
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewInflate.getLayoutParams();
                layoutParams2.addRule(20);
                layoutParams2.addRule(15);
                this.i0.setPadding(0, basePaddingTop, 0, i2);
                this.i0.setLayoutParams(layoutParams2);
            }
            View view = this.i0;
            if (view != null && (viewFindViewById = view.findViewById(R.id.lil_left_icon_container)) != null) {
                viewFindViewById.setVisibility(this.j ? 0 : 8);
            }
            if (this.j) {
                if (!this.d0) {
                    dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_space250);
                }
                int i9 = dimensionPixelOffset;
                if (this.W == null && this.g != null) {
                    ViewStub viewStub2 = (ViewStub) findViewById(R.id.lil_stub_left_layout);
                    if (viewStub2 != null) {
                        this.W = (OSSmoothRoundCorner) viewStub2.inflate();
                    } else {
                        this.W = (OSSmoothRoundCorner) findViewById(R.id.lil_left_image);
                    }
                    OSSmoothRoundCorner oSSmoothRoundCorner = this.W;
                    if (oSSmoothRoundCorner != null) {
                        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) oSSmoothRoundCorner.getLayoutParams();
                        layoutParams3.addRule(15);
                        this.W.setLayoutParams(layoutParams3);
                    }
                } else if (this.a0 == null && !TextUtils.isEmpty(this.h)) {
                    ViewStub viewStub3 = (ViewStub) findViewById(R.id.lil_stub_left_text_icon_layout);
                    if (viewStub3 != null) {
                        this.a0 = (OSIconTextView) viewStub3.inflate();
                    } else {
                        this.a0 = (OSIconTextView) findViewById(R.id.lil_left_text_icon);
                    }
                    OSIconTextView oSIconTextView = this.a0;
                    if (oSIconTextView != null) {
                        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) oSIconTextView.getLayoutParams();
                        layoutParams4.addRule(15);
                        this.a0.setLayoutParams(layoutParams4);
                    }
                }
                if (this.T) {
                    ViewStub viewStub4 = (ViewStub) findViewById(R.id.lil_stub_left_image_badge);
                    if (viewStub4 != null) {
                        this.U = (BadgeView) viewStub4.inflate();
                    } else {
                        this.U = (BadgeView) findViewById(R.id.lil_left_image_badge);
                    }
                    BadgeView badgeView = this.U;
                    if (badgeView == null || this.W == null) {
                        z = false;
                        i3 = 2;
                    } else {
                        RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) badgeView.getLayoutParams();
                        final int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.os_list_item_left_image_badge_margin_top);
                        final int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.os_list_item_left_image_badge_margin_end);
                        layoutParams5.addRule(19, this.W.getId());
                        layoutParams5.addRule(6, this.W.getId());
                        final BadgeView badgeView2 = this.U;
                        final OSSmoothRoundCorner oSSmoothRoundCorner2 = this.W;
                        i3 = 2;
                        z = false;
                        post(new Runnable() {
                            @Override
                            public void run() {
                                OSListItemView.this.getHeight();
                                oSSmoothRoundCorner2.getHeight();
                                RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) badgeView2.getLayoutParams();
                                layoutParams6.addRule(19, oSSmoothRoundCorner2.getId());
                                layoutParams6.addRule(6, oSSmoothRoundCorner2.getId());
                                layoutParams6.setMargins(0, -dimensionPixelSize2, -dimensionPixelSize3, 0);
                                badgeView2.setLayoutParams(layoutParams6);
                            }
                        });
                        setClipToPadding(false);
                    }
                } else {
                    z = false;
                    i3 = 2;
                }
                if (this.l == 1) {
                    dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_list_item_left_image_big_dimen);
                    int dimensionPixelOffset3 = getResources().getDimensionPixelOffset(R.dimen.os_list_item_content_min_height);
                    int dimensionPixelOffset4 = getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_top);
                    if (dimensionPixelSize + basePaddingTop + i2 > dimensionPixelOffset3) {
                        int iMax = Math.max(z ? 1 : 0, (dimensionPixelOffset3 - dimensionPixelSize) / i3);
                        basePaddingTop = (basePaddingTop - dimensionPixelOffset4) + iMax;
                        i2 = (i2 - dimensionPixelOffset4) + iMax;
                        View view2 = this.i0;
                        if (view2 != null) {
                            view2.setPadding(z ? 1 : 0, basePaddingTop, z ? 1 : 0, i2);
                        }
                    }
                } else {
                    dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_list_item_left_image_small_dimen);
                }
                OSSmoothRoundCorner oSSmoothRoundCorner3 = this.W;
                if (oSSmoothRoundCorner3 != null && this.g != null) {
                    RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) oSSmoothRoundCorner3.getLayoutParams();
                    layoutParams6.width = dimensionPixelSize;
                    layoutParams6.height = dimensionPixelSize;
                    this.W.setLayoutParams(layoutParams6);
                    this.W.setImageDrawable(this.g);
                } else if (this.a0 != null && !TextUtils.isEmpty(this.h)) {
                    RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) this.a0.getLayoutParams();
                    layoutParams7.width = dimensionPixelSize;
                    layoutParams7.height = dimensionPixelSize;
                    this.a0.setLayoutParams(layoutParams7);
                    this.a0.setText(this.h);
                }
                dimensionPixelOffset = i9;
                r9 = z;
            } else {
                r9 = 0;
                i8 = 15;
                i7 = 20;
                i3 = 2;
            }
            if (this.c != null || this.i0 != null) {
                if (this.i0 == null) {
                    View viewInflate2 = ((ViewStub) findViewById(R.id.lil_stub_title_layout)).inflate();
                    this.i0 = viewInflate2;
                    RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) viewInflate2.getLayoutParams();
                    layoutParams8.addRule(i7);
                    layoutParams8.addRule(i8);
                    this.i0.setPadding(r9, basePaddingTop, r9, i2);
                    this.i0.setLayoutParams(layoutParams8);
                }
                if (this.C == null) {
                    this.C = (TextView) this.i0.findViewById(R.id.lil_title);
                }
                if (!TextUtils.isEmpty(this.c)) {
                    this.C.setText(olb.H0(this.c));
                }
                if (this.r) {
                    if (this.j0 == null) {
                        this.j0 = ((ViewStub) findViewById(R.id.lil_stub_right_layout)).inflate();
                    }
                    RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) this.j0.getLayoutParams();
                    layoutParams9.addRule(i8);
                    layoutParams9.addRule(21);
                    this.j0.setLayoutParams(layoutParams9);
                    if (this.O == null) {
                        BadgeView badgeView3 = (BadgeView) ((ViewStub) this.j0.findViewById(R.id.os_stub_list_view_red_point)).inflate();
                        this.O = badgeView3;
                        if (this.f0) {
                            badgeView3.setVisibility(8);
                        }
                    }
                }
                if (this.d != null) {
                    G();
                    if (!TextUtils.isEmpty(this.d)) {
                        this.D.setText(this.d);
                        this.D.setVisibility(r9);
                    } else if (TextUtils.isEmpty(this.D.getText())) {
                        this.D.setVisibility(8);
                    }
                    V();
                }
                if (this.o && this.z == null) {
                    ProgressBar progressBar = (ProgressBar) ((ViewStub) this.i0.findViewById(R.id.lil_stub_sub_progressbar)).inflate();
                    this.z = progressBar;
                    this.z.setLayoutParams((LinearLayout.LayoutParams) progressBar.getLayoutParams());
                    if (!this.d0) {
                        dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_end_xos_progress);
                    }
                    R(displayMetrics, this.i0);
                }
                if (this.p) {
                    adaptSeekbarShadow();
                    if (this.E0 == null) {
                        ViewStub viewStub5 = (ViewStub) findViewById(R.id.lil_stub_seekbar_root_layout);
                        if (viewStub5 != null) {
                            this.E0 = (LinearLayout) viewStub5.inflate();
                        } else {
                            this.E0 = (LinearLayout) findViewById(R.id.lil_seekbar_root_layout);
                        }
                    }
                    ?? r0 = this.E0;
                    if (r0 != 0) {
                        r0.setVisibility(r9);
                        this.A = (OSSeekbar) this.E0.findViewById(R.id.lil_sub_seekbar);
                        OSSectionSeekbar oSSectionSeekbar = (OSSectionSeekbar) this.E0.findViewById(R.id.lil_sub_section_seekbar);
                        this.B = oSSectionSeekbar;
                        if (oSSectionSeekbar != null) {
                            oSSectionSeekbar.setForceHios(this.d0);
                        }
                        int dimensionPixelSize4 = getResources().getDimensionPixelSize(R.dimen.os_thumb_width) / 4;
                        if (this.u == 1) {
                            OSSeekbar oSSeekbar = this.A;
                            if (oSSeekbar != null) {
                                oSSeekbar.setVisibility(8);
                            }
                            if (this.B != null) {
                                int dimensionPixelSize5 = dimensionPixelSize4 - getResources().getDimensionPixelSize(R.dimen.os_space025);
                                this.B.setVisibility(r9);
                                this.B.setPadding(r9, r9, r9, r9);
                                LinearLayout.LayoutParams layoutParams10 = (LinearLayout.LayoutParams) this.B.getLayoutParams();
                                int i10 = -dimensionPixelSize5;
                                layoutParams10.setMarginStart(i10);
                                layoutParams10.setMarginEnd(i10);
                                this.B.setLayoutParams(layoutParams10);
                            }
                        } else {
                            OSSectionSeekbar oSSectionSeekbar2 = this.B;
                            if (oSSectionSeekbar2 != null) {
                                oSSectionSeekbar2.setVisibility(8);
                            }
                            ?? r4 = this.A;
                            if (r4 != 0) {
                                r4.setVisibility(r9);
                                this.A.setPadding(r9, r9, r9, r9);
                                LinearLayout.LayoutParams layoutParams11 = (LinearLayout.LayoutParams) this.A.getLayoutParams();
                                int i11 = -dimensionPixelSize4;
                                layoutParams11.setMarginStart(i11);
                                layoutParams11.setMarginEnd(i11);
                                this.A.setLayoutParams(layoutParams11);
                            }
                        }
                        TextView textView2 = (TextView) this.E0.findViewById(R.id.lil_seekbar_value_no_title);
                        if (TextUtils.isEmpty(this.c)) {
                            this.D0 = textView2;
                        } else {
                            View view3 = this.i0;
                            if (view3 != null) {
                                TextView textView3 = (TextView) view3.findViewById(R.id.lil_seekbar_value);
                                this.D0 = textView3;
                                if (textView3 != null) {
                                    textView3.removeTextChangedListener(this.H0);
                                    this.D0.addTextChangedListener(this.H0);
                                }
                                if (textView2 != null) {
                                    textView2.setVisibility(8);
                                }
                            }
                        }
                        RelativeLayout.LayoutParams layoutParams12 = (RelativeLayout.LayoutParams) this.E0.getLayoutParams();
                        int id2 = R.id.lil_stub_title_layout;
                        View view4 = this.i0;
                        if (view4 == null) {
                            i4 = 8;
                        } else {
                            if (view4.getId() == -1) {
                                this.i0.setId(View.generateViewId());
                            }
                            id2 = this.i0.getId();
                            if (TextUtils.isEmpty(this.c)) {
                                i4 = 8;
                                this.i0.setVisibility(8);
                            } else {
                                i4 = 8;
                            }
                        }
                        View view5 = this.i0;
                        if (view5 == null || view5.getVisibility() == i4) {
                            OSSmoothRoundCorner oSSmoothRoundCorner4 = this.W;
                            if (oSSmoothRoundCorner4 != null) {
                                id = oSSmoothRoundCorner4.getId();
                            } else {
                                OSIconTextView oSIconTextView2 = this.a0;
                                if (oSIconTextView2 != null) {
                                    id = oSIconTextView2.getId();
                                } else {
                                    i5 = -1;
                                    id = -1;
                                }
                                if (id != i5) {
                                    layoutParams12.addRule(3, id);
                                } else {
                                    layoutParams12.addRule(i8);
                                }
                            }
                            i5 = -1;
                            if (id != i5) {
                                layoutParams12.addRule(3, id);
                            } else {
                                layoutParams12.addRule(i8);
                            }
                        } else {
                            layoutParams12.addRule(3, id2);
                        }
                        layoutParams12.addRule(i7);
                        layoutParams12.addRule(21);
                        this.E0.setPadding(r9, r9, r9, r9);
                        int dimensionPixelSize6 = getResources().getDimensionPixelSize(R.dimen.os_space075);
                        int basePaddingTop2 = getBasePaddingTop();
                        int basePaddingBottom2 = getBasePaddingBottom();
                        if (!K() || ((i6 = this.n) != 1 && i6 != 3)) {
                            basePaddingBottom2 += getResources().getDimensionPixelSize(R.dimen.os_space025);
                        }
                        View view6 = this.i0;
                        if (view6 == null || view6.getVisibility() == 8) {
                            layoutParams12.topMargin = r9;
                            this.E0.setPadding(r9, basePaddingTop2, r9, basePaddingBottom2);
                        } else {
                            layoutParams12.topMargin = dimensionPixelSize6;
                            this.E0.setPadding(r9, r9, r9, basePaddingBottom2);
                        }
                        this.E0.setLayoutParams(layoutParams12);
                        View view7 = this.i0;
                        if (view7 != null && view7.getVisibility() == 0) {
                            RelativeLayout.LayoutParams layoutParams13 = (RelativeLayout.LayoutParams) this.i0.getLayoutParams();
                            layoutParams13.removeRule(i8);
                            ?? r5 = this.i0;
                            r5.setPadding(r5.getPaddingLeft(), this.i0.getPaddingTop(), this.i0.getPaddingRight(), r9);
                            this.i0.setLayoutParams(layoutParams13);
                        }
                        View view8 = this.i0;
                        if (view8 != null && view8.getVisibility() == 0) {
                            OSSmoothRoundCorner oSSmoothRoundCorner5 = this.W;
                            if (oSSmoothRoundCorner5 != null) {
                                RelativeLayout.LayoutParams layoutParams14 = (RelativeLayout.LayoutParams) oSSmoothRoundCorner5.getLayoutParams();
                                layoutParams14.removeRule(i8);
                                layoutParams14.addRule(6, this.i0.getId());
                                layoutParams14.topMargin = r9;
                                this.W.setLayoutParams(layoutParams14);
                            }
                            OSIconTextView oSIconTextView3 = this.a0;
                            if (oSIconTextView3 != null) {
                                RelativeLayout.LayoutParams layoutParams15 = (RelativeLayout.LayoutParams) oSIconTextView3.getLayoutParams();
                                layoutParams15.removeRule(i8);
                                layoutParams15.addRule(6, this.i0.getId());
                                layoutParams15.topMargin = r9;
                                this.a0.setLayoutParams(layoutParams15);
                            }
                        }
                    }
                    if (this.A0) {
                        Y();
                    }
                }
            }
            int i12 = this.m;
            if (i12 != 0) {
                if (!this.d0 && !this.p && !this.o) {
                    dimensionPixelOffset2 = (i12 == i3 || i12 == 6 || (this.b == 1 && this.s)) ? getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_end_xos_icon) : getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_end_xos);
                }
                if (this.j0 == null) {
                    this.j0 = ((ViewStub) findViewById(R.id.lil_stub_right_layout)).inflate();
                }
                if (this.q && this.l0 == null) {
                    View viewInflate3 = ((ViewStub) findViewById(R.id.lil_stub_right_divide_line)).inflate();
                    this.l0 = viewInflate3;
                    if (this.f0) {
                        viewInflate3.setVisibility(8);
                    }
                }
                int i13 = this.m;
                if (i13 == i3) {
                    if (this.N == null) {
                        if (this.j0 == null) {
                            this.j0 = ((ViewStub) findViewById(R.id.lil_stub_right_layout)).inflate();
                        }
                        ?? r1 = (OSIconTextView) this.j0.findViewById(R.id.lil_right_image);
                        this.N = r1;
                        r1.setVisibility(this.f0 ? 8 : r9);
                        this.N.setDuplicateParentStateEnabled(r9);
                        this.N.setClickable(true);
                        this.N.setTextColor(getContext().getColorStateList(R.color.os_icon_secondary));
                        if (this.b == i3) {
                            this.N.setTextSize(r9, getContext().getResources().getDimension(R.dimen.os_fontsize_h3));
                            this.N.setTextColor(olb.l(R.attr.os_icon_disable, getContext().getColor(R.color.os_icon_disable_hios), getContext()));
                            if (olb.l0()) {
                                this.N.setPaddingRelative(r9, r9, getContext().getResources().getDimensionPixelSize(R.dimen.os_list_item_left_image_badge_margin_end), r9);
                            } else {
                                this.N.setPaddingRelative(getContext().getResources().getDimensionPixelSize(R.dimen.os_list_item_left_image_badge_margin_end), r9, r9, r9);
                            }
                        }
                    }
                    if (this.k) {
                        if (TextUtils.isEmpty(this.i)) {
                            this.N.setText(R.string.os_arrow_right_bold);
                            this.N.setTextColor(olb.l(R.attr.os_icon_disable, getContext().getColor(R.color.os_icon_disable_hios), getContext()));
                            this.N.setTextSize(r9, getContext().getResources().getDimension(R.dimen.os_fontsize_h3));
                            if (olb.l0()) {
                                this.N.setRotationY(180.0f);
                                this.N.setPaddingRelative(r9, r9, getContext().getResources().getDimensionPixelSize(R.dimen.os_list_item_left_image_badge_margin_end), r9);
                            } else {
                                this.N.setPaddingRelative(getContext().getResources().getDimensionPixelSize(R.dimen.os_list_item_left_image_badge_margin_end), r9, r9, r9);
                            }
                            if (!this.p0) {
                                setOpenNewPage(true);
                            }
                        } else {
                            this.N.setText(this.i);
                        }
                    }
                    if (this.e != null) {
                        if (this.k0 == null) {
                            View viewInflate4 = ((ViewStub) findViewById(R.id.lil_stub_describe_layout)).inflate();
                            this.k0 = viewInflate4;
                            if (this.f0) {
                                viewInflate4.setVisibility(8);
                            }
                        }
                        if (this.G == null) {
                            ?? r2 = (TextView) ((ViewStub) findViewById(R.id.lil_stub_describe_title)).inflate();
                            this.G = r2;
                            if (this.f != null) {
                                r2.setPaddingRelative(r2.getPaddingStart(), this.G.getPaddingTop(), this.G.getPaddingEnd(), r9);
                            }
                            this.M.f(this.G);
                            if (this.f0) {
                                this.G.setVisibility(8);
                            }
                        }
                        V();
                        resetDescribeTitleWidth();
                        if (!TextUtils.isEmpty(this.e)) {
                            this.G.setText(olb.H0(this.e));
                        }
                        EditText editTextR = this.M.r();
                        if (editTextR != null && !TextUtils.isEmpty(this.e)) {
                            editTextR.setText(this.e);
                            if (this.f0) {
                                editTextR.setVisibility(8);
                            }
                        }
                        if (!this.f0) {
                            this.M.Q(this.G, this.k0, isEnabled());
                        }
                        if (this.f != null) {
                            if (this.H == null) {
                                this.H = (TextView) ((ViewStub) findViewById(R.id.lil_stub_describe_subtitle)).inflate();
                            }
                            if (!TextUtils.isEmpty(this.f)) {
                                this.H.setText(this.f);
                            }
                        }
                    }
                } else if (i13 == 3) {
                    if (this.w == null) {
                        ?? r3 = (RadioButton) ((ViewStub) findViewById(R.id.lil_stub_right_radio)).inflate();
                        this.w = r3;
                        r3.setClickable(r9);
                        this.w.setFocusable(r9);
                        this.w.setDuplicateParentStateEnabled(true);
                    }
                } else if (i13 == 4) {
                    if (this.v == null) {
                        this.v = (Switch) ((ViewStub) findViewById(R.id.lil_stub_right_switch)).inflate();
                    }
                } else if (i13 == 5) {
                    Context context = getContext();
                    if (this.P == null) {
                        this.P = (Button) ((ViewStub) findViewById(R.id.lil_stub_right_button)).inflate();
                    }
                    int i14 = this.Q;
                    if (i14 == 1) {
                        this.P.setTextColor(ContextCompat.getColorStateList(context, com.transsion.widgetslib.R.color.os_platform_basic_color_selector));
                        this.P.setBackgroundResource(com.transsion.widgetslib.R.drawable.os_btn_big_gray);
                    } else if (i14 == i3) {
                        this.P.setTextColor(ContextCompat.getColorStateList(context, com.transsion.widgetslib.R.color.os_platform_red_color_selector));
                        this.P.setBackgroundResource(com.transsion.widgetslib.R.drawable.os_btn_big_gray);
                    } else if (i14 == 3) {
                        this.P.setTextColor(ContextCompat.getColorStateList(context, com.transsion.widgetslib.R.color.os_button_on_color_outline_selector));
                        this.P.setBackgroundResource(com.transsion.widgetslib.R.drawable.os_btn_big_outline_white);
                    }
                    ?? dimensionPixelOffset5 = (!olb.b0(context) || (olb.Y(context) && !olb.Q(context))) ? r9 : getResources().getDimensionPixelOffset(R.dimen.os_list_item_right_button_width_large_patch);
                    if (this.R) {
                        this.P.setWidth(getResources().getDimensionPixelOffset(R.dimen.os_list_item_right_button_short_width) + dimensionPixelOffset5);
                    } else {
                        this.P.setWidth(getResources().getDimensionPixelOffset(R.dimen.os_list_item_right_button_width) + dimensionPixelOffset5);
                    }
                    this.P.setText(this.S);
                } else if (i13 == 6) {
                    if (this.x == null) {
                        ?? r6 = (OSCheckBox) ((ViewStub) findViewById(R.id.lil_stub_right_checkbox)).inflate();
                        this.x = r6;
                        r6.setClickable(r9);
                        this.x.setFocusable(r9);
                        this.x.setDuplicateParentStateEnabled(true);
                    }
                    if (this.b == 0) {
                        setOnClickListener(new g());
                    }
                }
                RelativeLayout.LayoutParams layoutParams16 = (RelativeLayout.LayoutParams) this.j0.getLayoutParams();
                layoutParams16.addRule(i8);
                layoutParams16.addRule(21);
                this.j0.setLayoutParams(layoutParams16);
                View view9 = this.i0;
                if (view9 != null) {
                    RelativeLayout.LayoutParams layoutParams17 = (RelativeLayout.LayoutParams) view9.getLayoutParams();
                    layoutParams17.addRule(16, this.j0.getId());
                    z(this.i0);
                    this.i0.setLayoutParams(layoutParams17);
                }
            } else if (!this.d0 && !this.p && !this.o) {
                dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding_end_xos);
            }
            setPadding(dimensionPixelOffset, getCornersExtraPaddingTop(), dimensionPixelOffset2, getCornersExtraPaddingBottom());
            v();
        }
        setBottomDividerVisible(this.t0);
    }

    public final void P() {
        if (this.J != null) {
            ViewTreeObserver viewTreeObserver = this.K;
            if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
                getViewTreeObserver().removeOnPreDrawListener(this.J);
            } else {
                this.K.removeOnPreDrawListener(this.J);
            }
            this.J = null;
            this.K = null;
        }
    }

    public final void Q(boolean z) {
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(z);
        }
    }

    public final void R(DisplayMetrics displayMetrics, View view) {
        z(view);
    }

    public final void S() {
        if (this.m == 6 || this.b != 0) {
            return;
        }
        i iVar = new i();
        this.h0 = true;
        OSIconTextView oSIconTextView = this.a0;
        if (oSIconTextView != null) {
            oSIconTextView.setOnClickListener(iVar);
        }
        OSSmoothRoundCorner oSSmoothRoundCorner = this.W;
        if (oSSmoothRoundCorner != null) {
            oSSmoothRoundCorner.setOnClickListener(iVar);
        }
        super.setOnClickListener(iVar);
        this.h0 = false;
    }

    public final void U(boolean z) {
        TextView textView;
        if (!this.M.x() || z == this.M.w()) {
            return;
        }
        View view = this.j0;
        if (view != null) {
            if (z) {
                if (this.L == 0) {
                    this.L = view.getPaddingStart();
                }
                View view2 = this.j0;
                view2.setPaddingRelative(0, view2.getPaddingTop(), this.j0.getPaddingEnd(), this.j0.getPaddingBottom());
            } else {
                int paddingStart = this.L;
                if (paddingStart <= 0) {
                    paddingStart = view.getPaddingStart();
                }
                View view3 = this.j0;
                view3.setPaddingRelative(paddingStart, view3.getPaddingTop(), this.j0.getPaddingEnd(), this.j0.getPaddingBottom());
            }
        }
        if (z) {
            this.M.m(this.i0, R.id.lil_title_container, new Runnable() {
                @Override
                public void run() {
                    OSListItemView.this.clearEditFocus();
                }
            });
        }
        this.e = this.M.L(z, this.e, isEnabled());
        if (!z || (textView = this.D) == null) {
            return;
        }
        textView.setVisibility(8);
    }

    public final void V() {
        W(getActiveDescribeTitleView());
    }

    public final void W(TextView textView) {
        TextView textView2;
        if (textView == null || this.B0) {
            return;
        }
        TextView textView3 = this.C;
        int i2 = (textView3 == null || textView3.getVisibility() != 0 || (textView2 = this.D) == null || textView2.getVisibility() != 0) ? 0 : 2;
        if (textView.getBreakStrategy() != 0) {
            textView.setBreakStrategy(0);
        }
        if (textView.getHyphenationFrequency() != i2) {
            textView.setHyphenationFrequency(i2);
        }
    }

    public final void X() {
        TextView textView;
        int i2 = this.f0 ? 8 : 0;
        BadgeView badgeView = this.O;
        if (badgeView != null) {
            badgeView.setVisibility(i2);
        }
        View view = this.k0;
        if (view != null) {
            view.setVisibility(i2);
        }
        View view2 = this.l0;
        if (view2 != null) {
            view2.setVisibility(i2);
        }
        OSIconTextView oSIconTextView = this.N;
        if (oSIconTextView != null) {
            oSIconTextView.setVisibility(i2);
        }
        if (this.f0) {
            if (this.k0 == null) {
                TextView textView2 = this.G;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                }
                EditText editTextR = this.M.r();
                if (editTextR != null) {
                    editTextR.setVisibility(8);
                }
            }
            if (!this.u0 && (textView = this.D) != null && textView.getVisibility() == 0) {
                this.D.setVisibility(8);
            }
            if (this.M.x()) {
                clearEditFocus();
            }
        } else {
            if (this.k0 == null) {
                EditText editTextR2 = this.M.r();
                if (this.M.x()) {
                    if (editTextR2 != null) {
                        editTextR2.setVisibility(0);
                    }
                    TextView textView3 = this.G;
                    if (textView3 != null) {
                        textView3.setVisibility(8);
                    }
                }
            }
            adjustViewDescribeTitleWidth();
        }
        requestLayout();
    }

    public final void Y() {
        TextView textView;
        if (this.A0 && this.A != null) {
            TextView textView2 = this.D0;
            if (textView2 != null) {
                textView2.setVisibility(0);
                y();
                if (TextUtils.isEmpty(this.C.getText().toString()) || this.i0 == null) {
                    return;
                }
                C();
                return;
            }
            return;
        }
        View view = this.i0;
        if (view != null && (textView = (TextView) view.findViewById(R.id.lil_seekbar_value)) != null) {
            textView.setVisibility(8);
        }
        LinearLayout linearLayout = this.E0;
        if (linearLayout != null) {
            TextView textView3 = (TextView) linearLayout.findViewById(R.id.lil_seekbar_value_no_title);
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            TextView textView4 = (TextView) this.E0.findViewById(R.id.lil_seekbar_value_below_title);
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
        }
    }

    public void adaptSeekbarShadow() {
        setClipToPadding(false);
        setClipChildren(false);
        LinearLayout linearLayout = this.E0;
        if (linearLayout != null) {
            linearLayout.setClipChildren(false);
            this.E0.setClipToPadding(false);
        }
    }

    public void adjustViewDescribeTitleWidth() {
        if (this.I) {
            return;
        }
        bq5.p(J0, "adjustViewDescribeTitleWidth()");
        this.I = true;
        w();
        this.I = false;
    }

    public void bottomCornersRound() {
        this.n = 3;
        x();
        z(this.i0);
        invalidate();
    }

    public void clearEditFocus() {
        this.M.h(new Runnable() {
            @Override
            public void run() {
                InputMethodManager inputMethodManager;
                if (!OSListItemView.this.isAttachedToWindow() || (inputMethodManager = (InputMethodManager) OSListItemView.this.getContext().getSystemService("input_method")) == null || OSListItemView.this.getWindowToken() == null) {
                    return;
                }
                inputMethodManager.hideSoftInputFromWindow(OSListItemView.this.getWindowToken(), 0);
            }
        });
    }

    public void cornersRound() {
        this.n = 1;
        x();
        z(this.i0);
        invalidate();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            boolean zM = M(motionEvent);
            this.I0 = zM;
            if (zM) {
                Q(true);
            }
        }
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        if (action == 1 || action == 3) {
            if (this.I0) {
                Q(false);
            }
            this.I0 = false;
        }
        return zDispatchTouchEvent;
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.d0) {
            if (K()) {
                int i2 = this.n;
                if (i2 == 1) {
                    this.z0.clipRRect(canvas, 0.0f, 0.0f, getWidth(), getHeight(), this.r0, TranCanvas.CornerFlag.ALL);
                } else if (i2 == 2) {
                    this.z0.clipRRect(canvas, 0.0f, 0.0f, getWidth(), getHeight(), this.r0, TranCanvas.CornerFlag.TOP);
                } else if (i2 == 3) {
                    this.z0.clipRRect(canvas, 0.0f, 0.0f, getWidth(), getHeight(), this.r0, TranCanvas.CornerFlag.BOTTOM);
                }
            } else {
                if (this.o0 == null) {
                    this.o0 = getItemBgHelper(getContext());
                }
                this.o0.h(canvas, this, this.n);
            }
        }
        super.draw(canvas);
    }

    @Nullable
    public BadgeView getBadgeView() {
        if (this.b != 0) {
            return null;
        }
        this.c = "";
        this.r = true;
        if (this.O == null) {
            O();
        }
        return this.O;
    }

    public Button getButton() {
        return this.P;
    }

    @Nullable
    public OSCheckBox getCheckBox() {
        int i2 = this.b;
        if (i2 != 0 && i2 != 1) {
            return null;
        }
        this.m = 6;
        if (this.x == null) {
            O();
        }
        return this.x;
    }

    public com.transsion.widgetslistitemlayout.c getEditHelper() {
        return this.M;
    }

    @Nullable
    public String getEditableContent() {
        return this.M.s();
    }

    @Nullable
    public String getEditableDefaultText() {
        return this.M.t();
    }

    public com.transsion.widgetslistitemlayout.b getItemBgHelper(Context context) {
        if (this.o0 == null) {
            this.o0 = new com.transsion.widgetslistitemlayout.b(context, this);
        }
        return this.o0;
    }

    public BadgeView getLeftImageBadgeView() {
        return this.U;
    }

    @Nullable
    public OSIconTextView getLeftTextIconView(int i2) {
        if (this.b != 0) {
            return null;
        }
        this.j = true;
        this.l = i2;
        if (this.a0 == null) {
            O();
        }
        return this.a0;
    }

    public View getPopupListContentView(Context context) {
        if (this.y == null) {
            this.y = (ListView) View.inflate(context, R.layout.os_popup_window_layout, null);
        }
        return this.y;
    }

    public OSPopupWindow getPopupWindow(Context context, View view, int i2, String[] strArr) {
        this.y = null;
        View popupListContentView = getPopupListContentView(context);
        qb9 qb9VarB = qb9.b(context, strArr);
        qb9VarB.setSelected(i2);
        this.y.setAdapter((ListAdapter) qb9VarB);
        OSPopupWindow oSPopupWindow = new OSPopupWindow(context, null, 0, R.style.OsLiquidPopupWindowStyle);
        oSPopupWindow.setContentView(this.y);
        oSPopupWindow.setWidth(olb.A0(context, qb9VarB));
        oSPopupWindow.setOutsideTouchable(true);
        oSPopupWindow.setFocusable(true);
        if (olb.u(view, popupListContentView, strArr.length)) {
            oSPopupWindow.J(true, true);
        } else {
            oSPopupWindow.J(false, true);
        }
        return oSPopupWindow;
    }

    @Nullable
    public ProgressBar getProgressBar() {
        if (this.b != 0) {
            return null;
        }
        this.c = "";
        this.o = true;
        if (this.z == null) {
            O();
        }
        return this.z;
    }

    @Nullable
    public RadioButton getRadioButton() {
        if (this.b != 0) {
            return null;
        }
        this.m = 3;
        if (this.w == null) {
            O();
        }
        return this.w;
    }

    @Nullable
    public OSIconTextView getRightImageView() {
        int i2 = this.b;
        if (i2 != 0 && i2 != 2) {
            return null;
        }
        this.m = 2;
        if (this.N == null) {
            O();
        }
        return this.N;
    }

    @Nullable
    public OSSectionSeekbar getSectionSeekBar() {
        if (this.b != 0) {
            return null;
        }
        this.p = true;
        this.u = 1;
        if (this.B == null) {
            O();
        }
        return this.B;
    }

    @Nullable
    public OSSeekbar getSeekBar() {
        if (this.b != 0) {
            return null;
        }
        this.c = "";
        this.p = true;
        this.u = 0;
        if (this.A == null) {
            O();
        }
        return this.A;
    }

    public TextView getSeekbarValueView() {
        return this.D0;
    }

    @Nullable
    public Switch getSwitch() {
        if (this.b != 0) {
            return null;
        }
        this.m = 4;
        if (this.v == null) {
            O();
        }
        return this.v;
    }

    @Nullable
    public TextView getViewDescribeSubtitle() {
        int i2 = this.b;
        if (i2 != 0 && i2 != 2) {
            return null;
        }
        this.m = 2;
        this.f = "";
        if (this.H == null) {
            O();
        }
        return this.H;
    }

    @Nullable
    public TextView getViewDescribeTitle() {
        int i2 = this.b;
        if (i2 != 0 && i2 != 2) {
            return null;
        }
        this.m = 2;
        this.e = "";
        this.k = true;
        if (this.G == null) {
            O();
        }
        return getActiveDescribeTitleView();
    }

    @Nullable
    public EditText getViewDescribeTitleEditText() {
        int i2 = this.b;
        if (i2 != 0 && i2 != 2) {
            return null;
        }
        setDescribeTitleEditable(true);
        return this.M.o();
    }

    @Nullable
    public TextView getViewGroupSubTitle() {
        if (this.b != 1) {
            return null;
        }
        if (this.F == null) {
            O();
        }
        return this.F;
    }

    @Nullable
    public TextView getViewGroupTitle() {
        if (this.b != 1) {
            return null;
        }
        if (this.E == null) {
            O();
        }
        return this.E;
    }

    @Nullable
    public OSIconTextView getViewGroupTitleArrow() {
        if (this.b != 1) {
            return null;
        }
        if (this.V == null) {
            O();
        }
        return this.V;
    }

    @Nullable
    public OSSmoothRoundCorner getViewLeftImage(int i2) {
        int i3 = this.b;
        if (i3 != 0 && i3 != 2) {
            return null;
        }
        this.j = true;
        this.l = i2;
        if (this.W == null) {
            O();
        }
        return this.W;
    }

    @Nullable
    public View getViewRightDivideLine() {
        if (this.b != 0 || this.m == 0) {
            return null;
        }
        if (this.l0 == null) {
            this.l0 = ((ViewStub) findViewById(R.id.lil_stub_right_divide_line)).inflate();
        }
        return this.l0;
    }

    @Nullable
    public TextView getViewSubtitle() {
        int i2 = this.b;
        if (i2 != 0 && i2 != 2) {
            return null;
        }
        if (this.i0 == null) {
            O();
        }
        G();
        TextView textView = this.D;
        if (textView != null && TextUtils.isEmpty(textView.getText()) && !this.u0) {
            this.D.setVisibility(8);
        }
        return this.D;
    }

    @Nullable
    public TextView getViewTitle() {
        int i2 = this.b;
        if (i2 != 0 && i2 != 2) {
            return null;
        }
        this.c = "";
        if (this.C == null) {
            O();
        }
        return this.C;
    }

    public boolean isGroupArrowExpend() {
        return this.b0;
    }

    public boolean isMultiSelectMode() {
        return this.f0;
    }

    public boolean isOpenNewPage() {
        return this.o0.c();
    }

    public boolean isShowGroupTitleArrow() {
        return this.s;
    }

    public boolean isTypeTitleArrowAnimRunning() {
        ObjectAnimator objectAnimator = this.c0;
        return objectAnimator != null && objectAnimator.isRunning();
    }

    @Override
    public void onAttachedToWindow() {
        TextWatcher textWatcher;
        TextWatcher textWatcher2;
        TextWatcher textWatcher3;
        super.onAttachedToWindow();
        this.M.f(this.G);
        TextView textView = this.F;
        if (textView != null && (textWatcher3 = this.G0) != null) {
            textView.removeTextChangedListener(textWatcher3);
            this.F.addTextChangedListener(this.G0);
        }
        TextView textView2 = this.D;
        if (textView2 != null && (textWatcher2 = this.F0) != null) {
            textView2.removeTextChangedListener(textWatcher2);
            this.D.addTextChangedListener(this.F0);
        }
        TextView textView3 = this.D0;
        if (textView3 == null || (textWatcher = this.H0) == null) {
            return;
        }
        textView3.removeTextChangedListener(textWatcher);
        this.D0.addTextChangedListener(this.H0);
    }

    @Override
    public void onDetachedFromWindow() {
        TextWatcher textWatcher;
        TextWatcher textWatcher2;
        TextWatcher textWatcher3;
        super.onDetachedFromWindow();
        P();
        ObjectAnimator objectAnimator = this.c0;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.c0.cancel();
        }
        D();
        TextView textView = this.D;
        if (textView != null && (textWatcher3 = this.F0) != null) {
            textView.removeTextChangedListener(textWatcher3);
        }
        TextView textView2 = this.F;
        if (textView2 != null && (textWatcher2 = this.G0) != null) {
            textView2.removeTextChangedListener(textWatcher2);
        }
        TextView textView3 = this.D0;
        if (textView3 == null || (textWatcher = this.H0) == null) {
            return;
        }
        textView3.removeTextChangedListener(textWatcher);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        OSIconTextView oSIconTextView;
        int action = motionEvent.getAction();
        boolean z = false;
        if (this.M.x()) {
            boolean zL = L(motionEvent);
            if (action == 0 && !zL) {
                clearEditFocus();
            }
            if (zL) {
                return false;
            }
        }
        if (this.I0) {
            return false;
        }
        if (action == 0) {
            if (this.N != null && (getContext().getString(R.string.os_arrow_right_bold).equalsIgnoreCase(this.N.getText().toString()) || getContext().getString(R.string.os_Expand_up_and_down).equalsIgnoreCase(this.N.getText().toString()))) {
                z = true;
            }
            if (this.e0) {
                z = true;
            }
            if (z) {
                OSIconTextView oSIconTextView2 = this.N;
                if (oSIconTextView2 != null) {
                    oSIconTextView2.setPressed(true);
                }
                return true;
            }
        } else if ((action == 1 || action == 3) && (oSIconTextView = this.N) != null) {
            oSIconTextView.setPressed(false);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        F(this.i0);
        F(this.j0);
        F(this.E0);
    }

    @Override
    public void onMeasure(int i2, int i3) {
        OSSeekbar oSSeekbar = this.A;
        if (oSSeekbar != null) {
            boolean z = true;
            boolean z2 = oSSeekbar.getMLeftIcon() != null;
            boolean z3 = this.A.getMRightIcon() != null;
            if (!z2 && !z3) {
                z = false;
            }
            View view = this.A;
            if (z && (view.getParent() instanceof ViewGroup) && this.A.getParent() != this.E0) {
                view = (View) this.A.getParent();
            }
            if (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_thumb_width) / 4;
                int i4 = z2 ? 0 : -dimensionPixelSize;
                int i5 = z3 ? 0 : -dimensionPixelSize;
                if (marginLayoutParams.getMarginStart() != i4 || marginLayoutParams.getMarginEnd() != i5) {
                    marginLayoutParams.setMarginStart(i4);
                    marginLayoutParams.setMarginEnd(i5);
                    view.setLayoutParams(marginLayoutParams);
                }
            }
        }
        super.onMeasure(i2, i3);
    }

    @Override
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            if (getActiveDescribeTitleView() != null && this.k0 != null && this.C != null && this.j0 != null) {
                adjustViewDescribeTitleWidth();
            }
            if (!this.A0 || TextUtils.isEmpty(this.c) || this.i0 == null) {
                return;
            }
            post(new Runnable() {
                @Override
                public void run() {
                    OSListItemView.this.C();
                }
            });
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.I0) {
            this.o0.d(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (z) {
            restoreTouchAnim();
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            restoreTouchAnim();
        }
    }

    public void resetCornersRadius() {
        this.n = 0;
        x();
        z(this.i0);
        invalidate();
    }

    public void resetDescribeTitleWidth() {
        this.M.B(this.G);
    }

    public void resetTouchAnimWhenUnable() {
        this.o0.f();
    }

    public void restoreTouchAnim() {
        this.o0.g();
    }

    public void setBottomDividerColor(int i2) {
        this.y0 = Integer.valueOf(i2);
        FrameLayout frameLayout = this.w0;
        if (frameLayout != null) {
            frameLayout.setBackgroundColor(this.m0);
        }
        View view = this.x0;
        if (view != null) {
            view.setBackgroundColor(this.y0.intValue());
        }
    }

    public void setBottomDividerVisible(boolean z) {
        View view;
        this.t0 = z;
        if (!z) {
            FrameLayout frameLayout = this.w0;
            if (frameLayout != null) {
                frameLayout.setVisibility(8);
                return;
            }
            return;
        }
        if (this.w0 == null) {
            FrameLayout frameLayout2 = (FrameLayout) ((ViewStub) findViewById(R.id.lil_stub_divide_layout)).inflate();
            this.w0 = frameLayout2;
            this.x0 = frameLayout2.findViewById(R.id.lil_bottom_divider_line);
        }
        this.w0.setVisibility(0);
        this.w0.setBackgroundColor(this.m0);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.w0.getLayoutParams();
        layoutParams.addRule(12);
        View view2 = this.W;
        if (view2 != null || this.a0 != null) {
            if (view2 == null) {
                view2 = this.a0;
            }
            layoutParams.setMarginStart(view2.getLayoutParams().width + getResources().getDimensionPixelOffset(R.dimen.os_list_item_padding));
        }
        this.w0.setLayoutParams(layoutParams);
        Integer num = this.y0;
        if (num == null || (view = this.x0) == null) {
            return;
        }
        view.setBackgroundColor(num.intValue());
    }

    public void setCheckBoxVisible(boolean z) {
        OSCheckBox oSCheckBox = this.x;
        if (oSCheckBox != null) {
            oSCheckBox.setVisibility(z ? 0 : 8);
            if (this.b == 1) {
                updateGroupTitle();
            }
        }
    }

    public void setDescribeTitleEditable(boolean z) {
        int i2 = this.b;
        if (i2 == 0 || i2 == 2) {
            if (this.G == null) {
                this.m = 2;
                if (this.e == null) {
                    this.e = "";
                }
                this.k = true;
                O();
            }
            this.M.G(z);
            if (z) {
                this.M.K(this.u0);
                this.M.l(this.k0, this.G, this.e, new Runnable() {
                    @Override
                    public void run() {
                        OSListItemView.this.clearEditFocus();
                    }
                });
            }
            OSIconTextView oSIconTextView = this.N;
            if (oSIconTextView != null) {
                oSIconTextView.setVisibility(8);
            }
            if (!this.f0) {
                this.M.Q(this.G, this.k0, isEnabled());
            }
            adjustViewDescribeTitleWidth();
        }
    }

    public void setEditableContent(@Nullable String str) {
        this.e = str == null ? "" : str;
        this.M.H(str, this.G, this.D, this.u0);
    }

    public void setEditableDefaultText(@Nullable String str) {
        this.M.I(str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        setEditableContent(str);
        this.M.D(str);
    }

    @Override
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        resetTouchAnimWhenUnable();
    }

    public void setGroupArrowExpend(boolean z) {
        if (this.b != 1) {
            return;
        }
        this.b0 = z;
        setShowGroupTitleArrow(true);
        OSIconTextView oSIconTextView = this.V;
        if (oSIconTextView != null) {
            oSIconTextView.setRotationX(z ? -180.0f : 0.0f);
        }
    }

    public void setInteractiveType(int i2) {
        this.n0 = i2;
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        setBackground(null);
        setItemBg(Boolean.valueOf(this.q0));
        setPadding(paddingStart, paddingTop, paddingEnd, paddingBottom);
    }

    public void setIsShowLeftImageBadgeView(boolean z) {
        this.T = z;
    }

    public void setItemEnable(boolean z) {
        Drawable drawable;
        setEnabled(z);
        int iM = z ? olb.m(getContext(), R.attr.os_text_primary, R.color.os_text_primary_hios) : olb.m(getContext(), R.attr.os_text_disable, R.color.os_text_disable_hios);
        int iM2 = z ? olb.m(getContext(), R.attr.os_text_info, R.color.os_text_info_hios) : olb.m(getContext(), R.attr.os_text_disable, R.color.os_text_disable_hios);
        TextView textView = this.C;
        if (textView != null) {
            textView.setTextColor(iM);
        }
        TextView textView2 = this.D;
        if (textView2 != null) {
            textView2.setTextColor(iM2);
        }
        TextView textView3 = this.E;
        if (textView3 != null) {
            textView3.setTextColor(iM2);
        }
        TextView textView4 = this.G;
        if (textView4 != null) {
            textView4.setTextColor(iM2);
        }
        this.M.E(z);
        if (this.W != null && (drawable = this.g) != null) {
            drawable.setAlpha(z ? 255 : 102);
            this.W.setImageDrawable(this.g);
        }
        Button button = this.P;
        if (button != null) {
            button.setEnabled(z);
        }
        RadioButton radioButton = this.w;
        if (radioButton != null) {
            radioButton.setEnabled(z);
        }
        Switch r0 = this.v;
        if (r0 != null) {
            r0.setEnabled(z);
        }
        OSSeekbar oSSeekbar = this.A;
        if (oSSeekbar != null) {
            oSSeekbar.setEnabled(z);
        }
        ProgressBar progressBar = this.z;
        if (progressBar != null) {
            progressBar.setEnabled(z);
            int iM3 = olb.m(getContext(), R.attr.os_brand_primary, R.color.os_brand_primary_hios);
            if (!z) {
                iM3 = olb.m(getContext(), R.attr.os_grayfill_base, R.color.os_grayfill_base_hios);
            }
            this.z.setProgressTintList(ColorStateList.valueOf(iM3));
        }
    }

    public void setLeftImageStrokeColor(int i2) {
        OSSmoothRoundCorner oSSmoothRoundCorner = this.W;
        if (oSSmoothRoundCorner != null) {
            oSSmoothRoundCorner.setStrokeColor(i2);
        }
    }

    public void setLeftImageViewDrawable(int i2, Drawable drawable) {
        this.g = drawable;
        getViewLeftImage(i2).setImageDrawable(drawable);
    }

    public void setLeftTextIcon(int i2, String str) {
        this.h = str;
        getLeftTextIconView(i2).setText(str);
    }

    public void setMultiSelectMode(boolean z) {
        if (this.f0 != z) {
            this.f0 = z;
            X();
            if (z) {
                if (this.x == null) {
                    H();
                }
                S();
            } else {
                E();
            }
            setCheckBoxVisible(z);
        }
    }

    @Override
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        int i2;
        if (!this.h0 && this.m != 6 && (i2 = this.b) == 0) {
            this.g0 = onClickListener;
            if (this.f0) {
                if (i2 != 1) {
                    setItemBg(Boolean.TRUE);
                    return;
                }
                return;
            }
        }
        if (this.b != 1) {
            setItemBg(Boolean.TRUE);
        }
        OSIconTextView oSIconTextView = this.a0;
        if (oSIconTextView != null && !oSIconTextView.hasOnClickListeners()) {
            this.a0.setOnClickListener(onClickListener);
        }
        OSSmoothRoundCorner oSSmoothRoundCorner = this.W;
        if (oSSmoothRoundCorner != null && !oSSmoothRoundCorner.hasOnClickListeners()) {
            this.W.setOnClickListener(onClickListener);
        }
        super.setOnClickListener(onClickListener);
    }

    @Override
    public void setOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        if (this.b != 1) {
            setItemBg(Boolean.TRUE);
        }
        super.setOnLongClickListener(onLongClickListener);
    }

    public void setOnMenuClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        ListView listView = this.y;
        if (listView != null) {
            listView.setOnItemClickListener(onItemClickListener);
        }
    }

    public void setOpenNewPage(boolean z) {
        this.o0.setOpenNewPage(z);
    }

    public void setRedDotVisible(boolean z) {
        if (this.C == null) {
            return;
        }
        if (this.O == null) {
            this.O = (BadgeView) ((ViewStub) findViewById(R.id.os_stub_list_view_red_point)).inflate();
        }
        this.O.setVisibility(z ? 0 : 8);
    }

    public void setRightImageArrowIcon() {
        this.k = true;
        this.m = 2;
        O();
    }

    public void setSeekbarValueText(CharSequence charSequence) {
        TextView textView = this.D0;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setSeekbarValueWidth(int i2) {
        this.C0 = i2;
        if (this.D0 != null) {
            y();
        }
    }

    public void setShowGroupTitleArrow(boolean z) {
        if (this.b != 1) {
            return;
        }
        this.s = z;
        if (this.V == null) {
            J();
        }
        this.V.setVisibility(z ? 0 : 8);
    }

    public void setShowSeekbarValue(boolean z) {
        this.A0 = z;
        if (this.A != null) {
            Y();
        }
    }

    public void startTypeTitleArrowAnim() {
        if (isTypeTitleArrowAnimRunning()) {
            return;
        }
        if (this.b0) {
            this.c0.setFloatValues(180.0f, 0.0f);
        } else {
            this.c0.setFloatValues(0.0f, 180.0f);
        }
        this.c0.start();
    }

    public void topCornersRound() {
        this.n = 2;
        x();
        z(this.i0);
        invalidate();
    }

    public void updateGroupTitle() {
        int id;
        if (this.b != 1 || this.E == null || this.V == null) {
            return;
        }
        OSCheckBox oSCheckBox = this.x;
        int measuredWidth = 0;
        if (oSCheckBox == null || oSCheckBox.getVisibility() == 8) {
            id = -1;
        } else {
            id = this.x.getId();
            if (id == -1) {
                id = R.id.lil_right_checkbox;
                this.x.setId(id);
            }
            Log.d(J0, "updateGroupTitle: checkBoxId" + id);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.x.getLayoutParams();
            layoutParams.addRule(21);
            layoutParams.addRule(15);
            this.x.setLayoutParams(layoutParams);
            if (this.x.getMeasuredWidth() == 0) {
                this.x.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            }
            measuredWidth = this.x.getMeasuredWidth() + getContext().getResources().getDimensionPixelSize(R.dimen.os_list_item_padding);
        }
        if (this.t) {
            this.V.setText(getContext().getString(R.string.os_Expand_up_and_down));
            TextView textView = this.F;
            if (textView != null) {
                textView.getViewTreeObserver().addOnPreDrawListener(new a(measuredWidth));
                return;
            }
            return;
        }
        if (this.s) {
            this.V.setText("arrow_down");
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.V.getLayoutParams();
            layoutParams2.addRule(15);
            if (id != -1) {
                layoutParams2.removeRule(21);
                layoutParams2.addRule(16, id);
            } else {
                layoutParams2.removeRule(16);
                layoutParams2.addRule(21);
            }
            this.V.setLayoutParams(layoutParams2);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.V, "rotationX", 0.0f, 0.0f);
            this.c0 = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setInterpolator(AnimationUtils.loadInterpolator(getContext(), R.anim.os_interpolator_liv_item_collapse));
            this.c0.setDuration(300L);
            this.c0.addListener(new b());
        }
    }

    public final void v() {
        P();
        this.J = new h();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        this.K = viewTreeObserver;
        viewTreeObserver.addOnPreDrawListener(this.J);
    }

    /* JADX WARN: Code duplicated, block: B:78:0x0237  */
    public final void w() {
        TextView activeDescribeTitleView;
        int width;
        float f2;
        float f3;
        int iMax;
        int iMax2;
        int paddingStart;
        if (this.f0 || (activeDescribeTitleView = getActiveDescribeTitleView()) == null || this.k0 == null || this.C == null || this.j0 == null) {
            return;
        }
        W(activeDescribeTitleView);
        int width2 = getWidth();
        if (width2 <= 0) {
            return;
        }
        resetDescribeTitleWidth();
        boolean zX = this.M.x();
        boolean zW = this.M.w();
        EditText editTextR = this.M.r();
        EditText editTextU = this.M.u();
        LinearLayout linearLayoutQ = this.M.q();
        int iP = this.M.p();
        View view = this.i0;
        View viewFindViewById = view != null ? view.findViewById(R.id.lil_left_icon_container) : null;
        if (viewFindViewById == null || viewFindViewById.getVisibility() != 0) {
            OSSmoothRoundCorner oSSmoothRoundCorner = this.W;
            if (oSSmoothRoundCorner != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) oSSmoothRoundCorner.getLayoutParams();
                width = this.W.getWidth() + marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
            } else {
                width = 0;
            }
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
            int width3 = viewFindViewById.getWidth();
            if (width3 == 0) {
                OSSmoothRoundCorner oSSmoothRoundCorner2 = this.W;
                if (oSSmoothRoundCorner2 == null || oSSmoothRoundCorner2.getVisibility() != 0) {
                    OSIconTextView oSIconTextView = this.a0;
                    if (oSIconTextView != null && oSIconTextView.getVisibility() == 0 && (width3 = this.a0.getWidth()) == 0) {
                        viewFindViewById.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                        width3 = viewFindViewById.getMeasuredWidth();
                    }
                } else {
                    width3 = this.W.getWidth();
                    if (width3 == 0 && this.W.getLayoutParams().width > 0) {
                        width3 = this.W.getLayoutParams().width;
                    }
                }
            }
            width = width3 + marginLayoutParams2.getMarginEnd() + marginLayoutParams2.getMarginStart();
        }
        if (olb.a0()) {
            f2 = 0.58f;
            f3 = 0.42f;
        } else {
            f2 = 0.65f;
            f3 = 0.35f;
        }
        float f4 = width2;
        int paddingStart2 = (int) (((f2 * f4) - getPaddingStart()) - width);
        int paddingEnd = (int) ((f4 * f3) - getPaddingEnd());
        String str = J0;
        bq5.p(str, "itemWidth, paddingStart: " + getPaddingStart() + ", paddingEnd: " + getPaddingEnd() + ", titleLayoutSpace: " + paddingStart2 + ", rightLayoutSpace: " + paddingEnd + ", itemWidth: " + width2);
        float fMeasureText = this.C.getPaint().measureText(this.C.getText().toString());
        TextView textView = this.D;
        float fMeasureText2 = textView == null ? 0.0f : textView.getPaint().measureText(this.D.getText().toString());
        float fMeasureText3 = activeDescribeTitleView.getPaint().measureText(activeDescribeTitleView.getText().toString()) + activeDescribeTitleView.getPaddingStart() + activeDescribeTitleView.getPaddingEnd();
        bq5.c(str, "titleWidth: " + fMeasureText + ", subtitleWidth: " + fMeasureText2 + ", describeTitleWidth: " + fMeasureText3);
        int iMax3 = this.u0 ? (int) Math.max(fMeasureText, fMeasureText2) : (int) fMeasureText;
        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.k0.getLayoutParams();
        int paddingStart3 = this.L;
        if (paddingStart3 <= 0) {
            paddingStart3 = this.j0.getPaddingStart();
        }
        int paddingEnd2 = paddingStart3 + this.j0.getPaddingEnd() + marginLayoutParams3.getMarginStart() + marginLayoutParams3.getMarginEnd();
        OSIconTextView oSIconTextView2 = this.N;
        if (oSIconTextView2 != null) {
            paddingEnd2 += oSIconTextView2.getWidth();
        }
        int i2 = paddingEnd - paddingEnd2;
        if (!zX || editTextR == null) {
            iMax = i2;
            iMax2 = 0;
        } else {
            iMax2 = Math.max(i2 - iP, (((((width2 - getPaddingStart()) - getPaddingEnd()) - width) - ((this.C.getPaddingStart() + iMax3) + this.C.getPaddingEnd())) - paddingEnd2) - iP);
            iMax = Math.max(i2, iMax2);
        }
        if (fMeasureText3 < i2 || iMax3 > paddingStart2) {
            paddingStart = iMax;
        } else {
            paddingStart = ((((width2 - iMax3) - getPaddingStart()) - getPaddingEnd()) - paddingEnd2) - width;
            activeDescribeTitleView.setMaxWidth(paddingStart);
            if (zX) {
                paddingStart = iMax;
            }
        }
        int paddingStart4 = (((width2 - getPaddingStart()) - getPaddingEnd()) - width) - paddingEnd2;
        if (zX) {
            paddingStart4 -= iP;
        }
        if (this.u0) {
            this.D.setVisibility(0);
            activeDescribeTitleView.setVisibility(0);
            if (iMax3 >= paddingStart2) {
                activeDescribeTitleView.setMaxWidth(i2);
            }
            if (!zX || linearLayoutQ == null || iMax2 <= 0) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = linearLayoutQ.getLayoutParams();
            layoutParams.width = iMax2 + iP;
            linearLayoutQ.setLayoutParams(layoutParams);
            return;
        }
        if (fMeasureText + fMeasureText3 > paddingStart4 || fMeasureText3 > paddingStart) {
            TextView textView2 = this.G;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            if (editTextR != null) {
                editTextR.setVisibility(8);
            }
            if (this.D == null) {
                G();
            }
            TextView textView3 = this.D;
            if (textView3 != null) {
                this.v0 = false;
                textView3.setText(activeDescribeTitleView.getText());
                if (zX && zW) {
                    this.D.setVisibility(8);
                } else {
                    this.D.setVisibility(0);
                }
            }
            if (!zX || zW) {
                return;
            }
            U(true);
            return;
        }
        TextView textView4 = this.D;
        if (textView4 != null) {
            this.v0 = false;
            textView4.setText(activeDescribeTitleView.getText());
            this.D.setVisibility(8);
        }
        if (zX && zW) {
            U(false);
        }
        if (zX) {
            if (editTextR != null) {
                editTextR.setVisibility(0);
            }
            TextView textView5 = this.G;
            if (textView5 != null) {
                textView5.setVisibility(8);
            }
        } else {
            TextView textView6 = this.G;
            if (textView6 != null) {
                textView6.setVisibility(0);
            }
        }
        if (editTextU != null) {
            editTextU.setVisibility(8);
        }
        if (!zX || linearLayoutQ == null || iMax2 <= 0) {
            return;
        }
        ViewGroup.LayoutParams layoutParams2 = linearLayoutQ.getLayoutParams();
        layoutParams2.width = iMax2 + iP;
        linearLayoutQ.setLayoutParams(layoutParams2);
    }

    public final void x() {
        setPadding(getPaddingStart(), getCornersExtraPaddingTop(), getPaddingEnd(), getCornersExtraPaddingBottom());
    }

    public final void y() {
        TextView textView = this.D0;
        if (textView == null) {
            return;
        }
        if (textView.getId() == R.id.lil_seekbar_value_below_title) {
            ViewGroup.LayoutParams layoutParams = this.D0.getLayoutParams();
            layoutParams.width = -1;
            this.D0.setLayoutParams(layoutParams);
        } else if (!TextUtils.isEmpty(this.C.getText().toString()) && this.i0 != null) {
            ViewGroup.LayoutParams layoutParams2 = this.D0.getLayoutParams();
            layoutParams2.width = -2;
            this.D0.setLayoutParams(layoutParams2);
        } else {
            int defaultSeekbarValueWidth = this.C0;
            if (defaultSeekbarValueWidth <= 0) {
                defaultSeekbarValueWidth = getDefaultSeekbarValueWidth();
            }
            ViewGroup.LayoutParams layoutParams3 = this.D0.getLayoutParams();
            layoutParams3.width = defaultSeekbarValueWidth;
            this.D0.setLayoutParams(layoutParams3);
        }
    }

    public final void z(View view) {
        LinearLayout linearLayout;
        View view2;
        if (view == null) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), getBasePaddingTop(), view.getPaddingRight(), (this.p && (linearLayout = this.E0) != null && linearLayout.getVisibility() == 0 && (view2 = this.i0) != null && view2.getVisibility() == 0) ? 0 : getBasePaddingBottom());
    }

    public OSListItemView(Context context, int i2) {
        super(context);
        this.i = "";
        this.n = 0;
        this.u = 0;
        this.I = false;
        this.M = null;
        this.d0 = true;
        this.e0 = false;
        this.f0 = false;
        this.h0 = false;
        this.m0 = olb.m(getContext(), R.attr.os_layer_medium, R.color.os_layer_medium_hios);
        this.n0 = 1;
        this.o0 = null;
        this.q0 = false;
        this.r0 = 0.0f;
        this.t0 = false;
        this.u0 = false;
        this.v0 = true;
        this.x0 = null;
        this.y0 = null;
        this.A0 = false;
        this.B0 = false;
        this.C0 = 0;
        this.F0 = new c();
        this.G0 = new d();
        this.H0 = new e();
        this.I0 = false;
        this.b = i2;
        I(context, null);
    }

    public OSListItemView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.i = "";
        this.n = 0;
        this.u = 0;
        this.I = false;
        this.M = null;
        this.d0 = true;
        this.e0 = false;
        this.f0 = false;
        this.h0 = false;
        this.m0 = olb.m(getContext(), R.attr.os_layer_medium, R.color.os_layer_medium_hios);
        this.n0 = 1;
        this.o0 = null;
        this.q0 = false;
        this.r0 = 0.0f;
        this.t0 = false;
        this.u0 = false;
        this.v0 = true;
        this.x0 = null;
        this.y0 = null;
        this.A0 = false;
        this.B0 = false;
        this.C0 = 0;
        this.F0 = new c();
        this.G0 = new d();
        this.H0 = new e();
        this.I0 = false;
        I(context, attributeSet);
    }

    public OSListItemView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.i = "";
        this.n = 0;
        this.u = 0;
        this.I = false;
        this.M = null;
        this.d0 = true;
        this.e0 = false;
        this.f0 = false;
        this.h0 = false;
        this.m0 = olb.m(getContext(), R.attr.os_layer_medium, R.color.os_layer_medium_hios);
        this.n0 = 1;
        this.o0 = null;
        this.q0 = false;
        this.r0 = 0.0f;
        this.t0 = false;
        this.u0 = false;
        this.v0 = true;
        this.x0 = null;
        this.y0 = null;
        this.A0 = false;
        this.B0 = false;
        this.C0 = 0;
        this.F0 = new c();
        this.G0 = new d();
        this.H0 = new e();
        this.I0 = false;
        I(context, attributeSet);
    }
}
