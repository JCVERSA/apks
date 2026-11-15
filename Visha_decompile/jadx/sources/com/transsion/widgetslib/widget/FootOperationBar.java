package com.transsion.widgetslib.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.GravityCompat;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.blur.DynamicBlur;
import com.transsion.widgetslib.view.BadgeView;
import defpackage.bq5;
import defpackage.gcc;
import defpackage.olb;
import defpackage.q47;
import defpackage.s53;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class FootOperationBar extends RelativeLayout {
    private static final int ANIM_TIME = 150;
    private static final int DEFAULT_MAX_VISIBLE_TAB_COUNT = 5;
    private static final int DEFAULT_MIN_VISIBLE_TAB_COUNT = 3;
    private static final float MAX_LETTER_SPACING = 0.0f;
    private static final float MIN_LETTER_SPACING = -0.05f;
    private static final String PRESS_TIME = "PRESS_TIME";
    private static final String TAG = "FootOperationBar";
    private final int PRESS_ANIMATION_DURATION;
    private final int PRESS_RESPONSE_TIME;
    private boolean isFootActionBar;
    private boolean isOnlyScreenPortrait;
    private boolean mAnim;
    private int mBgColor;
    private float mBlurAlp;
    private int mClickImageTintColor;
    private long mClickInterval;
    private int mClickTextColor;
    private LinearLayout mContainer;
    private Context mContext;
    private int mCurrentItemCount;
    private DynamicBlur mDynamicBlur;
    private List<View> mFootItemViews;
    private boolean mHaveClickImageTintColor;
    private boolean mHaveNormalImageTintColor;
    private boolean mHaveTextColor;
    private boolean mImmersive;
    private boolean mInitShow;
    private boolean mIsLandscape;
    private int mItemBackgroundRes;
    private n mItemClickListener;
    private long mLastClickTime;
    private int mMaxVisibleTabCount;
    private MenuBuilder mMenuBuilder;
    private boolean[] mMenuEnables;
    private int mMoreIconRes;
    private View mMoreView;
    private final m mMyOnPreDrawListener;
    private int mNormalImageTintColor;
    private int mOrientation;
    private l mPopAdapter;
    private ListPopupWindow mPopup;
    private List<String> mPopupItems;
    private int mPopupMaxHeight;
    ValueAnimator mPressAnimator;
    private int mSelectedIndex;
    private boolean mShow;
    private final int mTabHitDelegateExpend;
    private final int mTabParentHitDelegateInsert;
    private int mTextColor;
    private int mTintColor;
    private int mVisibleTabCount;
    private boolean needChangeImgColor;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            FootOperationBar.this.mAnim = false;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            FootOperationBar.this.setVisibility(0);
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            FootOperationBar.this.setVisibility(8);
            FootOperationBar.this.mAnim = false;
            if (FootOperationBar.this.mMoreView != null) {
                FootOperationBar.this.mMoreView.setEnabled(true);
            }
            if (FootOperationBar.this.mMyOnPreDrawListener != null) {
                FootOperationBar.this.getViewTreeObserver().removeOnPreDrawListener(FootOperationBar.this.mMyOnPreDrawListener);
            }
        }
    }

    public class c extends AnimatorListenerAdapter {
        public final View b;

        public c(View view) {
            this.b = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            this.b.setVisibility(8);
            this.b.setScaleX(1.0f);
            this.b.setScaleY(1.0f);
            this.b.setAlpha(1.0f);
        }
    }

    public class d implements ViewStub.OnInflateListener {
        public d() {
        }

        @Override
        public void onInflate(ViewStub viewStub, View view) {
            int i = view.getLayoutParams().height;
            LinearLayout linearLayout = (LinearLayout) FootOperationBar.this.findViewById(R.id.fob_root);
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            layoutParams.height += i;
            Log.d(FootOperationBar.TAG, "onInflate: params.height = " + layoutParams.height + " ,immersiveHeight = " + i);
            linearLayout.setLayoutParams(layoutParams);
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            FootOperationBar.this.mMoreView.setSelected(true);
            FootOperationBar.this.mPopup.show();
            if (FootOperationBar.this.mItemClickListener != null) {
                FootOperationBar.this.mItemClickListener.onMoreClick();
            }
        }
    }

    public class f implements View.OnClickListener {
        public final int b;

        public f(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            if (FootOperationBar.this.mItemClickListener == null || FootOperationBar.this.I(this.b)) {
                return;
            }
            FootOperationBar.this.mItemClickListener.onItemClick(this.b);
            if (FootOperationBar.this.isFootActionBar) {
                FootOperationBar.this.setItemSelectState(this.b);
            } else {
                FootOperationBar.this.R(this.b, true);
            }
        }
    }

    public class g implements View.OnTouchListener {
        public final Runnable b;
        public final View c;

        public g(Runnable runnable, View view) {
            this.b = runnable;
            this.c = view;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                FootOperationBar.this.postDelayed(this.b, 100L);
                return false;
            }
            if (action != 1 && action != 3) {
                return false;
            }
            FootOperationBar.this.removeCallbacks(this.b);
            FootOperationBar.this.U(this.c, 0.0f);
            return false;
        }
    }

    public class h implements View.OnClickListener {
        public final int b;

        public h(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            if (FootOperationBar.this.mItemClickListener == null || FootOperationBar.this.I(this.b)) {
                return;
            }
            FootOperationBar.this.mItemClickListener.onItemClick(this.b);
            if (FootOperationBar.this.isFootActionBar) {
                FootOperationBar.this.setItemSelectState(this.b);
            } else {
                FootOperationBar.this.R(this.b, true);
            }
        }
    }

    public class i implements View.OnTouchListener {
        public final Runnable b;
        public final View c;

        public i(Runnable runnable, View view) {
            this.b = runnable;
            this.c = view;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                FootOperationBar.this.postDelayed(this.b, 100L);
                return false;
            }
            if (action != 1 && action != 3) {
                return false;
            }
            FootOperationBar.this.removeCallbacks(this.b);
            FootOperationBar.this.U(this.c, 0.0f);
            return false;
        }
    }

    public class j implements View.OnClickListener {
        public j() {
        }

        @Override
        public void onClick(View view) {
            FootOperationBar.this.mMoreView.setSelected(true);
            if (FootOperationBar.this.mPopup != null && !FootOperationBar.this.mPopup.isShowing()) {
                FootOperationBar.this.mPopup.show();
            }
            if (FootOperationBar.this.mItemClickListener != null) {
                FootOperationBar.this.mItemClickListener.onMoreClick();
            }
        }
    }

    public class k implements PopupWindow.OnDismissListener {
        public k() {
        }

        @Override
        public void onDismiss() {
            FootOperationBar.this.mMoreView.setSelected(false);
        }
    }

    public class l extends BaseAdapter {

        public class a implements View.OnClickListener {
            public final int b;

            public a(int i) {
                this.b = i;
            }

            @Override
            public void onClick(View view) {
                if (FootOperationBar.this.mItemClickListener != null && !FootOperationBar.this.I(this.b)) {
                    FootOperationBar.this.mItemClickListener.onItemClick(this.b);
                }
                FootOperationBar.this.mPopup.dismiss();
            }
        }

        public class b {
            public TextView a;

            public b() {
            }
        }

        @Override
        public int getCount() {
            return FootOperationBar.this.mPopupItems.size();
        }

        @Override
        public Object getItem(int i) {
            return FootOperationBar.this.mPopupItems.get(i);
        }

        @Override
        public long getItemId(int i) {
            return i;
        }

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
            b bVar;
            if (view == null) {
                view = LayoutInflater.from(FootOperationBar.this.getContext()).inflate(R.layout.os_foot_opt_bar_popup_item, viewGroup, false);
                bVar = new b();
                bVar.a = (TextView) view.findViewById(R.id.os_foot_opt_bar_popup_item_text);
                view.setTag(bVar);
            } else {
                bVar = (b) view.getTag();
            }
            bVar.a.setText((CharSequence) FootOperationBar.this.mPopupItems.get(i));
            FootOperationBar footOperationBar = FootOperationBar.this;
            footOperationBar.V(view, footOperationBar.mMenuEnables[i]);
            view.setOnClickListener(new a(i + FootOperationBar.this.mVisibleTabCount));
            return view;
        }

        public l() {
        }
    }

    public static class m implements ViewTreeObserver.OnPreDrawListener {
        public final WeakReference b;

        public m(FootOperationBar footOperationBar) {
            this.b = new WeakReference(footOperationBar);
        }

        @Override
        public boolean onPreDraw() {
            FootOperationBar footOperationBar = (FootOperationBar) this.b.get();
            if (footOperationBar == null) {
                return true;
            }
            footOperationBar.getViewTreeObserver().removeOnPreDrawListener(this);
            footOperationBar.setVisibility(8);
            if (!footOperationBar.mInitShow && !footOperationBar.mShow) {
                return true;
            }
            footOperationBar.setVisibility(0);
            footOperationBar.openFootOperationBar();
            return true;
        }
    }

    public interface n {
        void onItemClick(int i);

        default void onMoreClick() {
        }
    }

    public FootOperationBar(Context context, AttributeSet attributeSet) {
        ViewStub viewStub;
        super(context, attributeSet);
        this.mLastClickTime = 0L;
        this.mClickInterval = 0L;
        this.mShow = false;
        this.mAnim = false;
        this.mInitShow = false;
        this.mImmersive = false;
        this.needChangeImgColor = true;
        this.mFootItemViews = new ArrayList();
        this.mTintColor = -1;
        this.mBlurAlp = 0.8f;
        this.mSelectedIndex = -1;
        this.PRESS_RESPONSE_TIME = 100;
        this.PRESS_ANIMATION_DURATION = 100;
        this.mContext = context;
        LayoutInflater.from(context).inflate(R.layout.os_foot_opt_bar_root, this);
        this.mContainer = (LinearLayout) findViewById(R.id.os_foot_opt_bar_container);
        this.mPopupItems = new ArrayList();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FootOperationBar);
        this.isFootActionBar = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_isFootActionBar, false);
        this.isOnlyScreenPortrait = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_isFootBarOnlyPortrait, false);
        this.needChangeImgColor = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_foot_need_change_img_color, true);
        this.mItemBackgroundRes = typedArrayObtainStyledAttributes.getResourceId(R.styleable.FootOperationBar_foot_item_background, R.drawable.os_foot_option_bar_item_bg);
        int i2 = R.styleable.FootOperationBar_foot_item_icon_tint;
        Context context2 = this.mContext;
        int i3 = R.attr.os_icon_secondary;
        int i4 = R.color.os_icon_secondary_hios;
        this.mTintColor = typedArrayObtainStyledAttributes.getColor(i2, olb.m(context2, i3, i4));
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(new int[]{R.attr.os_platform_basic_color, R.attr.os_foot_more});
        int color = typedArrayObtainStyledAttributes2.getColor(0, getResources().getColor(R.color.os_platform_basic_color_hios));
        this.mMoreIconRes = typedArrayObtainStyledAttributes2.getResourceId(1, R.drawable.os_ic_foot_more_hios);
        typedArrayObtainStyledAttributes2.recycle();
        if (this.isFootActionBar) {
            int iM = olb.m(this.mContext, i3, i4);
            this.mNormalImageTintColor = iM;
            this.mClickImageTintColor = Color.argb(51, Color.red(iM), Color.green(this.mNormalImageTintColor), Color.blue(this.mNormalImageTintColor));
            int iM2 = olb.m(this.mContext, R.attr.os_text_primary, R.color.os_text_primary_hios);
            this.mTextColor = iM2;
            this.mClickTextColor = Color.argb(51, Color.red(iM2), Color.green(this.mTextColor), Color.blue(this.mTextColor));
        } else {
            this.mNormalImageTintColor = olb.m(this.mContext, R.attr.os_comp_color_tab_icon, R.color.os_comp_color_tab_icon_hios);
            this.mClickImageTintColor = olb.z(this.mContext);
            this.mTextColor = olb.m(this.mContext, R.attr.os_text_info, R.color.os_text_info_hios);
            this.mClickTextColor = this.mClickImageTintColor;
        }
        int i5 = R.styleable.FootOperationBar_foot_click_image_color;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i5);
        this.mHaveClickImageTintColor = zHasValue;
        if (zHasValue) {
            this.mClickImageTintColor = typedArrayObtainStyledAttributes.getColor(i5, -1);
        }
        int i6 = R.styleable.FootOperationBar_foot_normal_image_color;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(i6);
        this.mHaveNormalImageTintColor = zHasValue2;
        if (zHasValue2) {
            this.mNormalImageTintColor = typedArrayObtainStyledAttributes.getColor(i6, SupportMenu.CATEGORY_MASK);
        }
        int i7 = R.styleable.FootOperationBar_foot_text_color;
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(i7);
        this.mHaveTextColor = zHasValue3;
        if (zHasValue3) {
            this.mTextColor = typedArrayObtainStyledAttributes.getColor(i7, this.mTextColor);
        }
        int i8 = R.styleable.FootOperationBar_foot_click_text_color;
        if (typedArrayObtainStyledAttributes.hasValue(i8)) {
            this.mClickTextColor = typedArrayObtainStyledAttributes.getColor(i8, color);
        }
        int i9 = typedArrayObtainStyledAttributes.getInt(R.styleable.FootOperationBar_foot_max_visible_tab_count, 5);
        this.mMaxVisibleTabCount = i9;
        if (i9 < 3) {
            this.mMaxVisibleTabCount = 3;
        }
        this.mIsLandscape = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_foot_landscape, false);
        H(context);
        int i10 = R.styleable.FootOperationBar_foot_opt_menu;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            inflateMenu(typedArrayObtainStyledAttributes.getResourceId(i10, 0));
        }
        this.mInitShow = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_foot_init_show, false);
        this.mImmersive = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FootOperationBar_foot_immersive, false);
        typedArrayObtainStyledAttributes.recycle();
        boolean zX = olb.X(context);
        Log.d(TAG, "FootOperationBar: isGestureNavigationBarOn ==" + zX + ", mImmersive==" + this.mImmersive);
        if (this.mImmersive && zX && (viewStub = (ViewStub) findViewById(R.id.os_fob_immersive)) != null) {
            viewStub.setOnInflateListener(new d());
            viewStub.inflate();
        }
        m mVar = new m(this);
        this.mMyOnPreDrawListener = mVar;
        if (!this.isOnlyScreenPortrait) {
            getViewTreeObserver().addOnPreDrawListener(mVar);
        }
        setClickable(true);
        this.mTabParentHitDelegateInsert = (int) TypedValue.applyDimension(1, 12.0f, getResources().getDisplayMetrics());
        this.mTabHitDelegateExpend = (int) TypedValue.applyDimension(1, 6.0f, getResources().getDisplayMetrics());
        this.mOrientation = getResources().getConfiguration().orientation;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(new float[0]);
        this.mPressAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setValues(PropertyValuesHolder.ofKeyframe(PRESS_TIME, Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(1.0f, 1.0f)));
        this.mPressAnimator.setDuration(100L);
    }

    private int getPopupHeight() {
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_popup_menu_bg_margin);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.os_foot_bar_popup_item_height);
        int i2 = dimensionPixelOffset * 2;
        boolean[] zArr = this.mMenuEnables;
        return zArr != null ? i2 + (zArr.length * dimensionPixelOffset2) : i2;
    }

    private void setContainerWidth(int i2) {
        float fApplyDimension;
        int dimensionPixelSize;
        this.mCurrentItemCount = i2;
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            dimensionPixelSize = (int) TypedValue.applyDimension(1, this.mIsLandscape ? 17.0f : 10.0f, displayMetrics);
                            if (olb.w0(this.mContext)) {
                                dimensionPixelSize += this.mContext.getResources().getDimensionPixelSize(R.dimen.os_curve_land);
                            }
                        } else {
                            fApplyDimension = TypedValue.applyDimension(1, this.mIsLandscape ? 17.0f : 10.0f, displayMetrics);
                        }
                    } else {
                        fApplyDimension = TypedValue.applyDimension(1, 14.0f, displayMetrics);
                    }
                } else if (this.mIsLandscape) {
                    fApplyDimension = TypedValue.applyDimension(1, 16.0f, displayMetrics);
                } else {
                    dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.os_foot_bar_padding_3);
                }
            } else if (this.mIsLandscape) {
                fApplyDimension = TypedValue.applyDimension(1, 48.0f, displayMetrics);
            } else {
                dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.os_foot_bar_padding_2);
            }
            ViewGroup.LayoutParams layoutParams = this.mContainer.getLayoutParams();
            layoutParams.width = -1;
            this.mContainer.setLayoutParams(layoutParams);
            LinearLayout linearLayout = this.mContainer;
            linearLayout.setPadding(dimensionPixelSize, linearLayout.getPaddingTop(), dimensionPixelSize, this.mContainer.getPaddingBottom());
        }
        fApplyDimension = TypedValue.applyDimension(1, this.mIsLandscape ? 210.0f : 99.0f, displayMetrics);
        dimensionPixelSize = (int) fApplyDimension;
        ViewGroup.LayoutParams layoutParams2 = this.mContainer.getLayoutParams();
        layoutParams2.width = -1;
        this.mContainer.setLayoutParams(layoutParams2);
        LinearLayout linearLayout2 = this.mContainer;
        linearLayout2.setPadding(dimensionPixelSize, linearLayout2.getPaddingTop(), dimensionPixelSize, this.mContainer.getPaddingBottom());
    }

    private void setImageColorStateList(ImageView imageView) {
        if (this.needChangeImgColor) {
            int[][] iArr = new int[2][];
            if (this.isFootActionBar) {
                iArr[0] = new int[]{android.R.attr.state_pressed};
            } else {
                iArr[0] = new int[]{android.R.attr.state_selected};
            }
            iArr[1] = new int[0];
            imageView.setImageTintList(new ColorStateList(iArr, new int[]{this.mClickImageTintColor, this.mNormalImageTintColor}));
        }
    }

    @SuppressLint({"RestrictedApi"})
    private void setMenu(MenuBuilder menuBuilder) {
        this.mContainer.removeAllViews();
        this.mPopupItems.clear();
        this.mPopup = null;
        this.mSelectedIndex = -1;
        int size = menuBuilder.size();
        setContainerWidth(size);
        if (!this.isFootActionBar) {
            z(menuBuilder, size);
            return;
        }
        if (size <= Math.min(this.mMaxVisibleTabCount, 5)) {
            z(menuBuilder, size);
            return;
        }
        int i2 = this.mMaxVisibleTabCount;
        int i3 = i2 > 5 ? 4 : i2 - 1;
        this.mVisibleTabCount = i3;
        z(menuBuilder, i3);
        View viewF = F(this.mMoreIconRes, this.mContext.getResources().getString(R.string.os_foot_opt_bar_more));
        View viewFindViewById = viewF.findViewById(R.id.os_fob_layout);
        this.mMoreView = viewFindViewById;
        viewFindViewById.setOnClickListener(new e());
        this.mContainer.addView(viewF);
        S(menuBuilder, size);
    }

    private void setTextColorStateList(TextView textView) {
        if (this.needChangeImgColor) {
            int[][] iArr = new int[2][];
            if (this.isFootActionBar) {
                iArr[0] = new int[]{android.R.attr.state_pressed};
            } else {
                iArr[0] = new int[]{android.R.attr.state_selected};
            }
            iArr[1] = new int[0];
            int[] iArr2 = {this.mClickTextColor, this.mTextColor};
            gcc.l(textView);
            textView.setTextColor(new ColorStateList(iArr, iArr2));
        }
    }

    public final void A(int[] iArr, String[] strArr, int i2) {
        this.mFootItemViews.clear();
        for (int i3 = 0; i3 < i2; i3++) {
            y(F(iArr[i3], strArr[i3]), i3);
        }
    }

    public final void B(TextView textView, RelativeLayout relativeLayout) {
        if (textView == null || relativeLayout == null) {
            return;
        }
        if (q47.c(getContext(), textView.getText(), 2, textView.getTextSize(), 0.0f, 1, relativeLayout.getWidth())) {
            textView.setLetterSpacing(0.0f);
        } else if (q47.c(getContext(), textView.getText(), 2, textView.getTextSize(), MIN_LETTER_SPACING, 1, relativeLayout.getWidth())) {
            textView.setLetterSpacing(MIN_LETTER_SPACING);
        } else {
            textView.setLetterSpacing(0.0f);
        }
    }

    public final void C() {
        for (int i2 = 0; i2 < this.mFootItemViews.size(); i2++) {
            B((TextView) this.mFootItemViews.get(i2).findViewById(R.id.os_foot_opt_bar_item_text), (RelativeLayout) this.mFootItemViews.get(i2).findViewById(R.id.os_foot_opt_bar_item_root_layout));
        }
    }

    public final void D() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setInterpolator(new s53(0.33f, 0.0f, 0.66f, 1.0f));
        objectAnimatorOfFloat.setDuration(150L);
        objectAnimatorOfFloat.addListener(new b());
        objectAnimatorOfFloat.start();
    }

    public final void E(final View view, final View view2, final boolean z) {
        view2.post(new Runnable() {
            @Override
            public void run() {
                Rect rect = new Rect();
                view.getHitRect(rect);
                Rect rect2 = new Rect();
                view2.getHitRect(rect2);
                rect.top = 0;
                rect.bottom = rect2.height();
                if (z) {
                    rect.left = FootOperationBar.this.mTabParentHitDelegateInsert;
                    rect.right = rect2.width() - FootOperationBar.this.mTabParentHitDelegateInsert;
                } else {
                    rect.left -= FootOperationBar.this.mTabHitDelegateExpend;
                    rect.right += FootOperationBar.this.mTabHitDelegateExpend;
                    view.setTag(rect);
                }
                view2.setTouchDelegate(new TouchDelegate(rect, view));
            }
        });
    }

    public final View F(int i2, String str) {
        return G(this.mContext.getDrawable(i2), str);
    }

    public final View G(Drawable drawable, String str) {
        final View viewG;
        if (this.isFootActionBar) {
            viewG = gcc.f(getContext());
            x(viewG);
        } else {
            viewG = gcc.g(getContext());
            int i2 = R.id.os_foot_opt_press;
            x(viewG.findViewById(i2));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(ContextCompat.getColor(getContext(), R.color.os_gray_fifth_color));
            gradientDrawable.setCornerRadius(olb.h(getContext(), 8));
            viewG.findViewById(i2).setBackground(gradientDrawable);
        }
        final LinearLayout linearLayout = (LinearLayout) viewG.findViewById(R.id.os_fob_layout);
        linearLayout.setOrientation(!this.mIsLandscape ? 1 : 0);
        final ImageView imageView = (ImageView) viewG.findViewById(R.id.os_foot_opt_bar_item_icon);
        TextView textView = (TextView) viewG.findViewById(R.id.os_foot_opt_bar_item_text);
        if (!this.mIsLandscape) {
            textView.setTextSize(0, this.mContext.getResources().getDimensionPixelSize(R.dimen.os_foot_bar_item_text_size_portrait));
        }
        if (drawable != null) {
            drawable.mutate();
            imageView.setImageDrawable(drawable);
            setImageColorStateList(imageView);
        }
        if (!TextUtils.isEmpty(str)) {
            textView.setText(str);
            setTextColorStateList(textView);
        }
        if (!this.isFootActionBar) {
            linearLayout.post(new Runnable() {
                @Override
                public void run() {
                    Space space = (Space) viewG.findViewById(R.id.os_foot_opt_space);
                    if (space == null) {
                        return;
                    }
                    ViewGroup.LayoutParams layoutParams = space.getLayoutParams();
                    int measuredWidth = FootOperationBar.this.mIsLandscape ? linearLayout.getMeasuredWidth() : imageView.getMeasuredWidth();
                    if (measuredWidth > 0) {
                        layoutParams.width = measuredWidth;
                    }
                    int measuredHeight = linearLayout.getMeasuredHeight();
                    if (measuredHeight > 0) {
                        layoutParams.height = measuredHeight;
                    }
                    space.setLayoutParams(layoutParams);
                }
            });
        }
        if (this.mIsLandscape) {
            textView.setPadding((int) TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics()), 0, 0, 0);
        } else {
            textView.setPadding(getResources().getDimensionPixelOffset(R.dimen.os_foot_bar_item_text_paddingTop), 0, 0, 0);
        }
        return viewG;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00c0  */
    public final void H(Context context) {
        int dimensionPixelSize;
        ViewStub viewStub;
        if (context == null) {
            return;
        }
        int dimensionPixelSize2 = 0;
        if (getBackground() == null) {
            if (this.isFootActionBar) {
                this.mBgColor = olb.m(this.mContext, R.attr.os_comp_color_actionbar_bg, R.color.os_comp_color_actionbar_bg_hios);
            } else {
                this.mBgColor = olb.m(this.mContext, R.attr.os_comp_color_tab_bg, R.color.os_comp_color_tab_bg_hios);
            }
            if (olb.a[0].equalsIgnoreCase(olb.getOsType()) && !this.isFootActionBar && (viewStub = (ViewStub) findViewById(R.id.os_fob_top_line_stub)) != null) {
                viewStub.inflate();
            }
            setBackgroundColor(this.mBgColor);
        }
        if (Build.VERSION.SDK_INT >= 30 && olb.w0(this.mContext)) {
            int rotation = this.mContext.getDisplay().getRotation();
            int paddingLeft = this.mContainer.getPaddingLeft();
            int paddingTop = this.mContainer.getPaddingTop();
            int paddingRight = this.mContainer.getPaddingRight();
            int paddingBottom = this.mContainer.getPaddingBottom();
            if (rotation == 0) {
                dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(R.dimen.os_curve_land) + getResources().getDimensionPixelSize(R.dimen.os_foot_bar_padding);
                dimensionPixelSize = dimensionPixelSize2;
            } else if (rotation == 1) {
                int dimensionPixelSize3 = this.mContext.getResources().getDimensionPixelSize(R.dimen.os_curve_land);
                setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.os_foot_bar_min_height_curve_land));
                dimensionPixelSize2 = dimensionPixelSize3;
                dimensionPixelSize = 0;
            } else if (rotation == 2) {
                dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(R.dimen.os_curve_land) + getResources().getDimensionPixelSize(R.dimen.os_foot_bar_padding);
                dimensionPixelSize = dimensionPixelSize2;
            } else if (rotation != 3) {
                dimensionPixelSize2 = paddingLeft;
                dimensionPixelSize = paddingRight;
            } else {
                dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.os_curve_land);
                setMinimumHeight(getResources().getDimensionPixelSize(R.dimen.os_foot_bar_min_height_curve_land));
            }
            this.mContainer.setPadding(dimensionPixelSize2, paddingTop, dimensionPixelSize, paddingBottom);
        }
        this.mContainer.setMinimumHeight(getMinimumHeight());
    }

    public final boolean I(int i2) {
        if (this.mClickInterval == 0) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.mSelectedIndex == i2 && Math.abs(jCurrentTimeMillis - this.mLastClickTime) < this.mClickInterval) {
            return true;
        }
        this.mLastClickTime = jCurrentTimeMillis;
        return false;
    }

    public final void J(View view, int i2) {
        U(view, 1.0f);
        if (this.mItemClickListener == null || I(i2)) {
            return;
        }
        this.mItemClickListener.onItemClick(i2);
        R(i2, true);
    }

    public final void K(View view, int i2) {
        U(view, 1.0f);
        if (this.mItemClickListener == null || I(i2)) {
            return;
        }
        this.mItemClickListener.onItemClick(i2);
        R(i2, true);
    }

    public final void L() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setInterpolator(new s53(0.33f, 0.0f, 0.66f, 1.0f));
        objectAnimatorOfFloat.setDuration(150L);
        objectAnimatorOfFloat.addListener(new a());
        objectAnimatorOfFloat.start();
    }

    public final void M() {
        ListPopupWindow listPopupWindow;
        int popupHeight = getPopupHeight();
        int i2 = this.mPopupMaxHeight;
        if (i2 <= 0 || popupHeight <= i2 || (listPopupWindow = this.mPopup) == null) {
            return;
        }
        listPopupWindow.setHeight(i2);
    }

    public final void N(View view) {
        if (view.getVisibility() != 0) {
            return;
        }
        view.animate().alpha(0.0f).scaleX(0.5f).scaleY(0.5f).setInterpolator(new s53(0.4f, 0.0f, 1.0f, 1.0f)).setDuration(150L).setListener(new c(view)).start();
    }

    public final void O() {
        this.mSelectedIndex = -1;
        for (View view : this.mFootItemViews) {
            if (view.findViewById(R.id.os_foot_opt_bar_item_icon).isSelected()) {
                this.mSelectedIndex = this.mFootItemViews.indexOf(view);
                return;
            }
        }
    }

    public final void P() {
        final int iArgb = Color.argb((int) (this.mBlurAlp * Color.alpha(this.mBgColor)), Color.red(this.mBgColor), Color.green(this.mBgColor), Color.blue(this.mBgColor));
        if (olb.X(this.mContext)) {
            this.mContainer.setBackgroundColor(iArgb);
            return;
        }
        final ShapeDrawable shapeDrawable = new ShapeDrawable();
        final Paint paint = shapeDrawable.getPaint();
        post(new Runnable() {
            @Override
            public void run() {
                int measuredHeight = FootOperationBar.this.getMeasuredHeight();
                bq5.p(FootOperationBar.TAG, "setContainerBgColor, gesture navigation off, fob height: " + measuredHeight);
                paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, (float) measuredHeight, iArgb, FootOperationBar.this.mBgColor, Shader.TileMode.CLAMP));
                FootOperationBar.this.mContainer.setBackground(shapeDrawable);
            }
        });
    }

    public final void Q() {
        Drawable drawable;
        int dimensionPixelSize;
        this.mPopAdapter = new l();
        ListPopupWindow listPopupWindow = new ListPopupWindow(getContext(), null, 0, R.style.OsFootOptPopupEdgeStyle);
        this.mPopup = listPopupWindow;
        listPopupWindow.setAdapter(this.mPopAdapter);
        int iY0 = olb.y0(this.mContext, this.mPopAdapter);
        this.mPopup.setContentWidth(iY0);
        this.mPopup.setModal(true);
        this.mPopup.setOnDismissListener(new k());
        this.mPopup.setAnchorView(this.mContainer);
        this.mPopup.setDropDownGravity(GravityCompat.END);
        if (getResources().getConfiguration().orientation == 2) {
            post(new Runnable() {
                @Override
                public void run() {
                    DisplayCutout cutout;
                    Display display = FootOperationBar.this.getDisplay();
                    if (display == null || (cutout = display.getCutout()) == null || FootOperationBar.this.mPopup == null) {
                        return;
                    }
                    FootOperationBar.this.mPopup.setHorizontalOffset(-cutout.getSafeInsetRight());
                }
            });
        }
        if (Build.VERSION.SDK_INT >= 30 && olb.w0(this.mContext)) {
            int rotation = this.mContext.getDisplay().getRotation();
            if (rotation == 1) {
                drawable = ContextCompat.getDrawable(this.mContext, R.drawable.os_foot_opt_popup_background_curse_90);
                dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.os_curse_offset_land);
            } else if (rotation != 3) {
                drawable = ContextCompat.getDrawable(this.mContext, R.drawable.os_foot_opt_popup_background_curse_0_180);
                dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.os_curse_offset_portrait);
            } else {
                drawable = ContextCompat.getDrawable(this.mContext, R.drawable.os_foot_opt_popup_background_curse_270);
                dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.os_curse_offset_land);
            }
            this.mPopup.setContentWidth(iY0 + dimensionPixelSize);
            this.mPopup.setBackgroundDrawable(drawable);
        }
        M();
    }

    public final void R(int i2, boolean z) {
        if (this.mFootItemViews == null || this.mSelectedIndex == i2) {
            return;
        }
        for (int i3 = 0; i3 < this.mFootItemViews.size(); i3++) {
            TextView textView = (TextView) this.mFootItemViews.get(i3).findViewById(R.id.os_foot_opt_bar_item_text);
            OSMaskImageView oSMaskImageView = (OSMaskImageView) this.mFootItemViews.get(i3).findViewById(R.id.os_foot_opt_bar_item_icon);
            if (i3 != i2) {
                if (this.isFootActionBar) {
                    return;
                }
                if (!z) {
                    textView.setSelected(false);
                    oSMaskImageView.setSelected(false);
                } else if (this.needChangeImgColor && this.mSelectedIndex == i3) {
                    oSMaskImageView.animSelected();
                    gcc.d(textView);
                }
            } else if (!z) {
                if (this.isFootActionBar) {
                    return;
                }
                oSMaskImageView.setSelected(true);
                textView.setSelected(true);
            } else if (this.needChangeImgColor) {
                oSMaskImageView.animSelected();
                gcc.d(textView);
            }
        }
        this.mSelectedIndex = i2;
    }

    public final void S(MenuBuilder menuBuilder, int i2) {
        this.mMenuEnables = new boolean[i2];
        int i3 = this.mMaxVisibleTabCount;
        int i4 = i3 > 5 ? 4 : i3 - 1;
        this.mVisibleTabCount = i4;
        while (i4 < i2) {
            this.mPopupItems.add(menuBuilder.getItem(i4).getTitle().toString());
            this.mMenuEnables[i4 - this.mVisibleTabCount] = true;
            i4++;
        }
        Q();
    }

    public final void T(String[] strArr, int i2) {
        int i3 = this.mVisibleTabCount;
        this.mMenuEnables = new boolean[i2 - i3];
        while (i3 < i2) {
            this.mPopupItems.add(strArr[i3]);
            this.mMenuEnables[i3 - this.mVisibleTabCount] = true;
            i3++;
        }
        Q();
    }

    public final void U(View view, float f2) {
        if (view == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", view.getAlpha(), f2);
        objectAnimatorOfFloat.setDuration(100L);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.start();
    }

    public final void V(View view, boolean z) {
        if (view != null) {
            View viewFindViewById = view.findViewById(R.id.os_fob_layout);
            if (viewFindViewById == null) {
                view.setEnabled(z);
                view.setAlpha(z ? 1.0f : 0.4f);
            } else {
                viewFindViewById.setEnabled(z);
                viewFindViewById.setAlpha(z ? 1.0f : 0.4f);
            }
        }
    }

    public void addSingleItemView(int i2, int i3, int i4) {
        View viewF = F(i2, this.mContext.getResources().getString(i3));
        if (i4 < this.mFootItemViews.size()) {
            this.mFootItemViews.add(i4, viewF);
        } else {
            this.mFootItemViews.add(viewF);
        }
        resetClickListener();
        if (i4 < this.mFootItemViews.size()) {
            this.mContainer.addView(viewF, i4);
        } else {
            this.mContainer.addView(viewF);
        }
        O();
    }

    public void changeFootItem(int i2, Drawable drawable, String str) {
        ImageView itemImageView = getItemImageView(i2);
        if (itemImageView != null && drawable != null) {
            itemImageView.setImageDrawable(null);
            itemImageView.setImageDrawable(drawable);
        }
        TextView itemTextView = getItemTextView(i2);
        if (itemTextView == null || str == null) {
            return;
        }
        itemTextView.setText(str);
    }

    public void changeItemEnable(int i2, boolean z) {
        if (this.mPopup == null) {
            V(this.mContainer.getChildAt(i2), z);
            return;
        }
        int i3 = this.mVisibleTabCount;
        if (i2 < i3) {
            V(this.mContainer.getChildAt(i2), z);
            return;
        }
        this.mMenuEnables[i2 - i3] = z;
        l lVar = this.mPopAdapter;
        if (lVar != null) {
            lVar.notifyDataSetChanged();
        }
    }

    public void changeItems(int[] iArr, int[] iArr2) {
        String[] strArr = new String[iArr2.length];
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            strArr[i2] = this.mContext.getResources().getString(iArr2[i2]);
        }
        changeItems(iArr, strArr);
    }

    public void changeItemsEnable(boolean[] zArr) {
        ListPopupWindow listPopupWindow = this.mPopup;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.mPopup.dismiss();
        }
        int iMin = Math.min(zArr.length, getItemCount());
        for (int i2 = 0; i2 < iMin; i2++) {
            changeItemEnable(i2, zArr[i2]);
        }
    }

    public void changePopAdapter(int[] iArr, int[] iArr2) {
        String[] strArr = new String[iArr2.length];
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            strArr[i2] = this.mContext.getResources().getString(iArr2[i2]);
        }
        changePopAdapter(iArr, strArr);
    }

    public void closeDynamicBlur() {
        DynamicBlur dynamicBlur = this.mDynamicBlur;
        if (dynamicBlur != null) {
            dynamicBlur.m();
            this.mDynamicBlur = null;
        }
    }

    public void closeDynamicBlurWithRestoreBackground() {
        closeDynamicBlur();
        setContainerBackgroundColor(this.mBgColor);
    }

    public void closeFootOperationBar() {
        if (this.mAnim || !this.mShow) {
            return;
        }
        ListPopupWindow listPopupWindow = this.mPopup;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.mPopup.dismiss();
        }
        View view = this.mMoreView;
        if (view != null) {
            view.setEnabled(false);
        }
        this.mAnim = true;
        this.mShow = false;
        D();
    }

    public void enableMore(boolean z) {
        ListPopupWindow listPopupWindow;
        View view = this.mMoreView;
        if (view != null) {
            V(view, z);
            if (z || (listPopupWindow = this.mPopup) == null || !listPopupWindow.isShowing()) {
                return;
            }
            this.mPopup.dismiss();
        }
    }

    public void expendTabTouchDelegate() {
        for (View view : this.mFootItemViews) {
            E(view.findViewById(R.id.os_fob_layout), view, true);
        }
    }

    public DynamicBlur getDynamicBlur() {
        if (this.mDynamicBlur == null) {
            DynamicBlur dynamicBlur = new DynamicBlur(this.mContext);
            this.mDynamicBlur = dynamicBlur;
            dynamicBlur.setEraseColor(olb.y(this.mContext));
            this.mDynamicBlur.setBlurView(this);
        }
        return this.mDynamicBlur;
    }

    public int getItemCount() {
        return this.mPopupItems.size() > 0 ? (this.mContainer.getChildCount() + this.mPopupItems.size()) - 1 : this.mContainer.getChildCount();
    }

    @Nullable
    public ImageView getItemImageView(int i2) {
        View itemView = getItemView(i2);
        if (itemView == null) {
            return null;
        }
        return (ImageView) itemView.findViewById(R.id.os_foot_opt_bar_item_icon);
    }

    @Nullable
    public BadgeView getItemRedPoint(int i2) {
        List<View> list = this.mFootItemViews;
        if (list == null || this.isFootActionBar) {
            return null;
        }
        int size = list.size();
        if (i2 < 0 || i2 > size - 1) {
            return null;
        }
        TextView textView = (TextView) this.mFootItemViews.get(i2).findViewById(R.id.os_foot_opt_bar_item_text);
        if (textView.getTag() == null) {
            BadgeView badgeView = (BadgeView) ((ViewStub) this.mFootItemViews.get(i2).findViewById(R.id.os_stub_fpb_red_point)).inflate();
            textView.setTag(badgeView);
            return badgeView;
        }
        Object tag = textView.getTag();
        if (tag instanceof BadgeView) {
            return (BadgeView) tag;
        }
        return null;
    }

    @Nullable
    public TextView getItemTextView(int i2) {
        View itemView = getItemView(i2);
        if (itemView == null) {
            return null;
        }
        return (TextView) itemView.findViewById(R.id.os_foot_opt_bar_item_text);
    }

    @Nullable
    public View getItemView(int i2) {
        return this.mContainer.getChildAt(i2);
    }

    public int getPopupMaxHeight() {
        return this.mPopupMaxHeight;
    }

    public ListPopupWindow getPopupMenuWindow() {
        return this.mPopup;
    }

    public boolean hasItemRedPoint(int i2) {
        List<View> list = this.mFootItemViews;
        if (list == null || this.isFootActionBar) {
            return false;
        }
        int size = list.size();
        if (i2 < 0 || i2 > size - 1) {
            return false;
        }
        Object tag = ((TextView) this.mFootItemViews.get(i2).findViewById(R.id.os_foot_opt_bar_item_text)).getTag();
        return (tag instanceof BadgeView) && ((BadgeView) tag).getVisibility() == 0;
    }

    @SuppressLint({"RestrictedApi"})
    public void inflateMenu(int i2) {
        MenuInflater menuInflater = new MenuInflater(getContext());
        MenuBuilder menuBuilder = new MenuBuilder(getContext());
        this.mMenuBuilder = menuBuilder;
        menuInflater.inflate(i2, menuBuilder);
        setMenu(this.mMenuBuilder);
    }

    public void initShow(boolean z) {
        this.mInitShow = z;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateFootBarView();
        if (this.mShow) {
            int i2 = getResources().getConfiguration().orientation;
            if (this.mOrientation != i2) {
                getViewTreeObserver().addOnPreDrawListener(this.mMyOnPreDrawListener);
            }
            this.mOrientation = i2;
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        closeDynamicBlur();
    }

    @Override
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        H(getContext());
        C();
    }

    public void openFootOperationBar() {
        if (this.mAnim || this.mShow) {
            return;
        }
        this.mAnim = true;
        this.mShow = true;
        L();
    }

    public void removeItemView(int i2) {
        List<View> list = this.mFootItemViews;
        if (list == null || list.size() <= i2) {
            return;
        }
        List<View> list2 = this.mFootItemViews;
        list2.remove(list2.get(i2));
        this.mContainer.removeViewAt(i2);
        resetClickListener();
        requestLayout();
        invalidate();
        O();
    }

    public void resetClickListener() {
        for (final int i2 = 0; i2 < this.mFootItemViews.size(); i2++) {
            View view = this.mFootItemViews.get(i2);
            View viewFindViewById = view.findViewById(R.id.os_fob_layout);
            E(viewFindViewById, view, false);
            viewFindViewById.setOnClickListener(new h(i2));
            if (!this.isFootActionBar) {
                final View viewFindViewById2 = view.findViewById(R.id.os_foot_opt_press);
                viewFindViewById.setOnTouchListener(new i(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.K(viewFindViewById2, i2);
                    }
                }, viewFindViewById2));
            }
        }
    }

    public void restoreTabTouchDelegate() {
        for (View view : this.mFootItemViews) {
            View viewFindViewById = view.findViewById(R.id.os_fob_layout);
            Object tag = viewFindViewById.getTag();
            if (tag instanceof Rect) {
                view.setTouchDelegate(new TouchDelegate((Rect) tag, viewFindViewById));
            }
        }
    }

    public void setAnim(boolean z) {
        this.mAnim = z;
    }

    public void setBlurAlp(@IntRange(from = 0, to = 255) int i2) {
        if (i2 < 0 || i2 > 255) {
            return;
        }
        this.mBlurAlp = (i2 * 1.0f) / 255.0f;
    }

    public void setClickImageTintColor(@ColorInt int i2) {
        setImageTintColor(this.mNormalImageTintColor, i2);
    }

    public void setClickInterval(long j2) {
        this.mClickInterval = j2;
    }

    public void setContainerBackground(@ColorRes int i2) {
        setContainerBackgroundNoOverlay(i2);
    }

    public void setContainerBackgroundColor(@ColorInt int i2) {
        this.mBgColor = i2;
        setBackgroundColor(i2);
        if (this.mDynamicBlur != null) {
            P();
        }
    }

    public void setContainerBackgroundNoOverlay(@ColorRes int i2) {
        setContainerBackgroundColor(this.mContext.getResources().getColor(i2));
    }

    public void setFootOptBarClickTextColor(@ColorInt int i2) {
        setTextTintColor(this.mTextColor, i2);
    }

    public void setFootOptBarTextColor(@ColorInt int i2) {
        setTextTintColor(i2, this.mClickTextColor);
    }

    public void setFootTextSize(float f2) {
        int childCount = this.mContainer.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getItemTextView(i2).setTextSize(f2);
        }
    }

    public void setImageTintColor(@ColorInt int i2, @ColorInt int i3) {
        this.mNormalImageTintColor = i2;
        this.mClickImageTintColor = i3;
        int childCount = this.mContainer.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            setImageColorStateList(getItemImageView(i4));
        }
    }

    public void setItemRedPointState(int i2, boolean z, int i3, int i4) {
        BadgeView itemRedPoint = getItemRedPoint(i2);
        if (itemRedPoint == null) {
            return;
        }
        if (itemRedPoint.getRedPointType() != i3) {
            itemRedPoint.setRedPointType(i3);
        }
        itemRedPoint.setVisibility((i4 <= 0 || !z) ? 8 : 0);
        if (itemRedPoint.getVisibility() == 0) {
            itemRedPoint.setNum(i4);
        }
    }

    public void setItemSelectState(int i2) {
        R(i2, false);
    }

    public void setLandscape(boolean z) {
        if (this.mIsLandscape == z) {
            return;
        }
        this.mIsLandscape = z;
        MenuBuilder menuBuilder = this.mMenuBuilder;
        if (menuBuilder != null) {
            setMenu(menuBuilder);
        }
    }

    public void setNormalImageTintColor(@ColorInt int i2) {
        setImageTintColor(i2, this.mClickImageTintColor);
    }

    public void setOnFootOptBarClickListener(n nVar) {
        this.mItemClickListener = nVar;
    }

    public void setPopupFullScreenMaxHeight(int i2) {
        if (i2 > 0) {
            setPopupMaxHeight(i2 - getResources().getDimensionPixelOffset(R.dimen.os_foot_bar_min_height));
            return;
        }
        this.mPopupMaxHeight = 0;
        if (this.mPopup != null) {
            Q();
        }
    }

    public void setPopupMaxHeight(int i2) {
        this.mPopupMaxHeight = i2;
        if (this.mPopup != null) {
            Q();
        }
    }

    public void setTextTintColor(@ColorInt int i2, @ColorInt int i3) {
        this.mTextColor = i2;
        this.mClickTextColor = i3;
        int childCount = this.mContainer.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            setTextColorStateList(getItemTextView(i4));
        }
    }

    public void setTopLineVisible(int i2) {
        View viewFindViewById = findViewById(R.id.os_fob_top_line);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(i2);
        }
    }

    public void toggleDynamicBlur(View view) {
        if (olb.E) {
            return;
        }
        if (olb.a[0].equalsIgnoreCase(olb.getOsType())) {
            getDynamicBlur().setBlurredView(view);
            setContainerBackgroundColor(this.mBgColor);
        }
    }

    public void toggleFootOperationBar() {
        if (this.mShow) {
            closeFootOperationBar();
        } else {
            openFootOperationBar();
        }
    }

    public void updateFootBarView() {
        setContainerWidth(this.mContainer.getChildCount());
        ListPopupWindow listPopupWindow = this.mPopup;
        if (listPopupWindow == null || !listPopupWindow.isShowing()) {
            return;
        }
        this.mPopup.dismiss();
    }

    public void updateItemRedPointNum(int i2, int i3) {
        BadgeView itemRedPoint = getItemRedPoint(i2);
        if (itemRedPoint == null) {
            return;
        }
        if (i3 <= 0) {
            N(itemRedPoint);
            return;
        }
        if (itemRedPoint.getVisibility() != 0) {
            itemRedPoint.setVisibility(0);
        }
        itemRedPoint.setNum(i3);
    }

    public final void x(View view) {
        if (!olb.q0(getContext()) || view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            int dimensionPixelOffset = this.mContext.getResources().getDimensionPixelOffset(R.dimen.os_foot_bar_item_safe_inset);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (this.mCurrentItemCount == 2) {
                dimensionPixelOffset <<= 1;
            }
            marginLayoutParams.setMarginStart(dimensionPixelOffset);
            marginLayoutParams.setMarginEnd(marginLayoutParams.getMarginStart());
        }
    }

    public final void y(View view, final int i2) {
        this.mFootItemViews.add(view);
        View viewFindViewById = view.findViewById(R.id.os_fob_layout);
        E(viewFindViewById, view, false);
        viewFindViewById.setOnClickListener(new f(i2));
        if (!this.isFootActionBar) {
            final View viewFindViewById2 = view.findViewById(R.id.os_foot_opt_press);
            viewFindViewById.setOnTouchListener(new g(new Runnable() {
                @Override
                public final void run() {
                    this.b.J(viewFindViewById2, i2);
                }
            }, viewFindViewById2));
        }
        this.mContainer.addView(view);
    }

    public final void z(MenuBuilder menuBuilder, int i2) {
        this.mFootItemViews.clear();
        for (int i3 = 0; i3 < i2; i3++) {
            MenuItem item = menuBuilder.getItem(i3);
            y(G(item.getIcon(), item.getTitle().toString()), i3);
        }
    }

    public void changeItems(int[] iArr, String[] strArr) {
        ListPopupWindow listPopupWindow = this.mPopup;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.mPopup.dismiss();
        }
        this.mContainer.removeAllViews();
        this.mPopupItems.clear();
        this.mFootItemViews.clear();
        this.mPopup = null;
        this.mSelectedIndex = -1;
        int length = iArr.length;
        setContainerWidth(length);
        if (this.isFootActionBar) {
            if (length <= Math.min(this.mMaxVisibleTabCount, 5)) {
                A(iArr, strArr, length);
                return;
            }
            int i2 = this.mMaxVisibleTabCount;
            int i3 = i2 > 5 ? 4 : i2 - 1;
            this.mVisibleTabCount = i3;
            A(iArr, strArr, i3);
            View viewF = F(this.mMoreIconRes, this.mContext.getResources().getString(R.string.os_foot_opt_bar_more));
            View viewFindViewById = viewF.findViewById(R.id.os_fob_layout);
            this.mMoreView = viewFindViewById;
            viewFindViewById.setOnClickListener(new j());
            this.mContainer.addView(viewF);
            T(strArr, length);
            return;
        }
        A(iArr, strArr, length);
    }

    public void changePopAdapter(int[] iArr, String[] strArr) {
        ListPopupWindow listPopupWindow = this.mPopup;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.mPopup.dismiss();
        }
        this.mPopupItems.clear();
        this.mPopup = null;
        T(strArr, iArr.length);
    }

    public void changeFootItem(int i2, int i3, String str) {
        changeFootItem(i2, ContextCompat.getDrawable(this.mContext, i3), str);
    }

    public void changeFootItem(int i2, int i3, int i4) {
        changeFootItem(i2, i3, getResources().getString(i4));
    }

    public void changeFootItem(int i2, String str) {
        changeFootItem(i2, (Drawable) null, str);
    }

    public void changeFootItem(int i2, Drawable drawable) {
        changeFootItem(i2, drawable, (String) null);
    }
}
