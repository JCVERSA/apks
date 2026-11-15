package com.transsion.widgetslib.widget.tablayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListPopupWindow;
import android.widget.TextView;
import androidx.annotation.ArrayRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import defpackage.olb;
import java.util.Arrays;
import java.util.List;

public class OSTabLayout extends LinearLayout implements View.OnClickListener, View.OnScrollChangeListener {
    private static final float INSET_STRETCH_PERCENT = 0.14f;
    private static final float ITEM_AMOUNT_THRESHOLD_SECOND_HOME = 2.0f;
    private static final float ITEM_AMOUNT_THRESHOLD_STRETCH_PERCENT = 3.0f;
    private static final String TAG = "OSTabLayout";
    private View mBottomLine;
    private boolean mIsFirstLevelTab;
    private boolean mIsSecondHome;
    private a mItemClickListener;
    private LinearLayout mLlIconContainer;
    private ViewGroup mLlTabIconContainer;
    private View.OnClickListener mOnClickListener;
    private ImageView mOverflowButton;
    private boolean[] mOverflowState;
    private List<String> mPopupItems;
    private ListPopupWindow mPopupWindow;
    private boolean mShowBottomLine;
    private TabLayout mTabLayout;
    private int mTabPaddingStart;
    private int mTabScrollPaddingStart;
    private float mTabTextSize;
    private TextView mTvLeftMask;
    private TextView mTvRightMask;

    public interface a {
    }

    public class b extends BaseAdapter {

        public class a implements View.OnClickListener {
            public final int b;

            public a(int i) {
                this.b = i;
            }

            @Override
            public void onClick(View view) {
                OSTabLayout.a(OSTabLayout.this);
                OSTabLayout.this.mPopupWindow.dismiss();
            }
        }

        public class C0265b {
            public TextView a;

            public C0265b() {
            }
        }

        @Override
        public int getCount() {
            return OSTabLayout.this.mPopupItems.size();
        }

        @Override
        public Object getItem(int i) {
            return OSTabLayout.this.mPopupItems.get(i);
        }

        @Override
        public long getItemId(int i) {
            return i;
        }

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
            C0265b c0265b;
            if (view == null) {
                C0265b c0265b2 = new C0265b();
                View viewInflate = LayoutInflater.from(OSTabLayout.this.getContext()).inflate(R.layout.os_tab_overflow_popup_item, viewGroup, false);
                c0265b2.a = (TextView) viewInflate.findViewById(R.id.os_tab_overflow_popup_item_text);
                viewInflate.setTag(c0265b2);
                c0265b = c0265b2;
                view = viewInflate;
            } else {
                c0265b = (C0265b) view.getTag();
            }
            view.setBackgroundResource(R.drawable.os_press_primary_bg);
            c0265b.a.setText((CharSequence) OSTabLayout.this.mPopupItems.get(i));
            OSTabLayout oSTabLayout = OSTabLayout.this;
            oSTabLayout.j(view, oSTabLayout.mOverflowState[i]);
            view.setOnClickListener(new a(i));
            return view;
        }

        public b() {
        }
    }

    public OSTabLayout(Context context) {
        this(context, null);
    }

    public static a a(OSTabLayout oSTabLayout) {
        oSTabLayout.getClass();
        return null;
    }

    public final boolean g() {
        int i;
        int i2 = 8;
        boolean z = false;
        if (!i()) {
            if (this.mTvLeftMask.getVisibility() != 8) {
                this.mTvLeftMask.setVisibility(8);
                z = true;
            }
            if (this.mTvRightMask.getVisibility() == 8) {
                return z;
            }
            this.mTvRightMask.setVisibility(8);
            return true;
        }
        int scrollX = this.mTabLayout.getScrollX();
        boolean z2 = this.mTabLayout.getMeasuredWidth() + scrollX >= this.mTabLayout.getChildAt(0).getMeasuredWidth();
        if (scrollX > 0 && z2) {
            i = 8;
            i2 = 0;
        } else if (scrollX > 0) {
            i = 0;
            i2 = 0;
        } else {
            i = 0;
        }
        if (i2 != this.mTvLeftMask.getVisibility()) {
            this.mTvLeftMask.setVisibility(i2);
            z = true;
        }
        if (i == this.mTvRightMask.getVisibility()) {
            return z;
        }
        this.mTvRightMask.setVisibility(i);
        return true;
    }

    public View getLeftMaskView() {
        return this.mTvLeftMask;
    }

    public View getRightMaskView() {
        return this.mTvRightMask;
    }

    public TabLayout getTabLayout() {
        return this.mTabLayout;
    }

    public final void h(List list) {
        if (list != null) {
            this.mOverflowState = new boolean[this.mPopupItems.size()];
            for (int i = 0; i < list.size(); i++) {
                this.mOverflowState[i] = true;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0256  */
    /* JADX WARN: Code duplicated, block: B:64:0x019a  */
    /* JADX WARN: Code duplicated, block: B:66:0x019e  */
    /* JADX WARN: Code duplicated, block: B:69:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:72:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:76:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:85:0x0212  */
    /* JADX WARN: Code duplicated, block: B:88:0x0225  */
    /* JADX WARN: Code duplicated, block: B:89:0x0227  */
    /* JADX WARN: Code duplicated, block: B:91:0x022a  */
    /* JADX WARN: Code duplicated, block: B:92:0x022c  */
    /* JADX WARN: Code duplicated, block: B:94:0x022f  */
    /* JADX WARN: Code duplicated, block: B:95:0x0231  */
    /* JADX WARN: Code duplicated, block: B:98:0x023a  */
    public boolean handleInsets() {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        boolean z;
        int dimensionPixelSize3;
        int dimensionPixelSize4;
        int i;
        int dimensionPixelSize5;
        boolean z2;
        int i2;
        int i3;
        View childAt;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mBottomLine.getLayoutParams();
        if (i()) {
            dimensionPixelSize = 0;
            dimensionPixelSize2 = 0;
        } else {
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_tab_second_underline_margin_start);
            dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.os_tab_second_underline_margin_end);
            layoutParams.setMarginStart(dimensionPixelSize);
            layoutParams.setMarginEnd(dimensionPixelSize2);
        }
        if (dimensionPixelSize == layoutParams.getMarginStart() && dimensionPixelSize2 == layoutParams.getMarginEnd()) {
            z = false;
        } else {
            this.mBottomLine.setLayoutParams(layoutParams);
            z = true;
        }
        int dimensionPixelSize6 = this.mTabLayout.getTabMode() == 0 ? getResources().getDimensionPixelSize(R.dimen.os_space300) : getResources().getDimensionPixelSize(R.dimen.os_space250);
        if (olb.g0(getContext())) {
            dimensionPixelSize6 = getResources().getDimensionPixelSize(R.dimen.os_pad_space250);
        }
        for (int i4 = 0; i4 < this.mTabLayout.getTabCount(); i4++) {
            if (i4 < this.mTabLayout.getTabCount() - 1) {
                TabLayout.TabView tabView = this.mTabLayout.getTabAt(i4).i;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) tabView.getLayoutParams();
                marginLayoutParams.setMarginEnd(dimensionPixelSize6);
                tabView.setLayoutParams(marginLayoutParams);
            }
        }
        if (this.mTabLayout.getTabCount() <= 2 && this.mTabLayout.getTabMode() == 1) {
            dimensionPixelSize3 = getMeasuredWidth() > olb.h(getContext(), 600) ? getResources().getDimensionPixelSize(R.dimen.os_tab_padding_for_two_large) : getResources().getDimensionPixelSize(R.dimen.os_tab_padding_for_two);
        } else {
            if (this.mTabLayout.getTabCount() != 3 || this.mTabLayout.getTabMode() != 1) {
                dimensionPixelSize3 = getMeasuredWidth() > olb.h(getContext(), 600) ? getResources().getDimensionPixelSize(R.dimen.os_tab_padding_large) : getResources().getDimensionPixelSize(R.dimen.os_tab_padding);
                if (this.mTabLayout.getTabMode() == 0) {
                    if (getMeasuredWidth() > olb.h(getContext(), 600)) {
                        dimensionPixelSize4 = getResources().getDimensionPixelSize(R.dimen.os_tab_padding_start_scrollable_large);
                        i = this.mTabScrollPaddingStart;
                    } else {
                        dimensionPixelSize4 = getResources().getDimensionPixelSize(R.dimen.os_tab_padding_start_scrollable);
                        i = this.mTabScrollPaddingStart;
                    }
                    dimensionPixelSize5 = dimensionPixelSize4 - i;
                    dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.os_space250);
                }
                if (getMeasuredWidth() > olb.h(getContext(), 600) || this.mTabLayout.getTabCount() > ITEM_AMOUNT_THRESHOLD_STRETCH_PERCENT || this.mTabLayout.getTabMode() != 1) {
                    if (this.mIsSecondHome) {
                        dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.os_tab_padding_sh);
                    }
                    if (this.mOverflowButton.getVisibility() == 0) {
                        dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.os_tab_overflow_image_edge_distance) - getResources().getDimensionPixelSize(R.dimen.os_tab_overflow_image_margin_end);
                    }
                    if (olb.g0(getContext()) && this.mTabLayout.getTabMode() == 1) {
                        if (this.mTabLayout.getTabCount() != 2 || this.mTabLayout.getTabCount() == 3) {
                            dimensionPixelSize5 = getResources().getDimensionPixelSize(R.dimen.os_pad_space900);
                        } else if (this.mTabLayout.getTabCount() == 4) {
                            dimensionPixelSize5 = getResources().getDimensionPixelSize(R.dimen.os_pad_space600);
                            if (olb.u0(getContext())) {
                                dimensionPixelSize5 = getResources().getDimensionPixelSize(R.dimen.os_pad_space200);
                            }
                        }
                        dimensionPixelSize3 = dimensionPixelSize5;
                    }
                    if (this.mLlIconContainer.getMeasuredWidth() > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        i2 = dimensionPixelSize3;
                    } else {
                        i2 = 0;
                    }
                    if (z2) {
                        i3 = 0;
                    } else {
                        i3 = dimensionPixelSize3;
                    }
                    if (i2 != this.mLlTabIconContainer.getPaddingEnd()) {
                        ViewGroup viewGroup = this.mLlTabIconContainer;
                        viewGroup.setPaddingRelative(0, viewGroup.getPaddingTop(), i2, this.mLlTabIconContainer.getPaddingBottom());
                        z = true;
                    }
                    childAt = this.mTabLayout.getChildAt(0);
                    if (dimensionPixelSize5 != childAt.getPaddingStart() && dimensionPixelSize3 == childAt.getPaddingEnd()) {
                        return z;
                    }
                    childAt.setPaddingRelative(dimensionPixelSize5, this.mLlTabIconContainer.getPaddingTop(), i3, this.mLlTabIconContainer.getPaddingBottom());
                    return true;
                }
                dimensionPixelSize3 = (int) (getMeasuredWidth() * INSET_STRETCH_PERCENT);
                dimensionPixelSize5 = dimensionPixelSize3;
                if (this.mOverflowButton.getVisibility() == 0) {
                    dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.os_tab_overflow_image_edge_distance) - getResources().getDimensionPixelSize(R.dimen.os_tab_overflow_image_margin_end);
                }
                if (olb.g0(getContext())) {
                    if (this.mTabLayout.getTabCount() != 2) {
                        dimensionPixelSize5 = getResources().getDimensionPixelSize(R.dimen.os_pad_space900);
                        dimensionPixelSize3 = dimensionPixelSize5;
                    } else {
                        dimensionPixelSize5 = getResources().getDimensionPixelSize(R.dimen.os_pad_space900);
                        dimensionPixelSize3 = dimensionPixelSize5;
                    }
                }
                if (this.mLlIconContainer.getMeasuredWidth() > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    i2 = dimensionPixelSize3;
                } else {
                    i2 = 0;
                }
                if (z2) {
                    i3 = 0;
                } else {
                    i3 = dimensionPixelSize3;
                }
                if (i2 != this.mLlTabIconContainer.getPaddingEnd()) {
                    ViewGroup viewGroup2 = this.mLlTabIconContainer;
                    viewGroup2.setPaddingRelative(0, viewGroup2.getPaddingTop(), i2, this.mLlTabIconContainer.getPaddingBottom());
                    z = true;
                }
                childAt = this.mTabLayout.getChildAt(0);
                if (dimensionPixelSize5 != childAt.getPaddingStart()) {
                }
                childAt.setPaddingRelative(dimensionPixelSize5, this.mLlTabIconContainer.getPaddingTop(), i3, this.mLlTabIconContainer.getPaddingBottom());
                return true;
            }
            dimensionPixelSize3 = getMeasuredWidth() > olb.h(getContext(), 600) ? getResources().getDimensionPixelSize(R.dimen.os_tab_padding_for_three_large) : getResources().getDimensionPixelSize(R.dimen.os_tab_padding_for_two);
        }
        dimensionPixelSize5 = dimensionPixelSize3;
        if (getMeasuredWidth() > olb.h(getContext(), 600)) {
            if (this.mIsSecondHome) {
                dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.os_tab_padding_sh);
                dimensionPixelSize5 = dimensionPixelSize3;
            }
        } else if (this.mIsSecondHome) {
            dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.os_tab_padding_sh);
            dimensionPixelSize5 = dimensionPixelSize3;
        }
        if (this.mOverflowButton.getVisibility() == 0) {
            dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.os_tab_overflow_image_edge_distance) - getResources().getDimensionPixelSize(R.dimen.os_tab_overflow_image_margin_end);
        }
        if (olb.g0(getContext())) {
            if (this.mTabLayout.getTabCount() != 2) {
                dimensionPixelSize5 = getResources().getDimensionPixelSize(R.dimen.os_pad_space900);
                dimensionPixelSize3 = dimensionPixelSize5;
            } else {
                dimensionPixelSize5 = getResources().getDimensionPixelSize(R.dimen.os_pad_space900);
                dimensionPixelSize3 = dimensionPixelSize5;
            }
        }
        if (this.mLlIconContainer.getMeasuredWidth() > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            i2 = dimensionPixelSize3;
        } else {
            i2 = 0;
        }
        if (z2) {
            i3 = 0;
        } else {
            i3 = dimensionPixelSize3;
        }
        if (i2 != this.mLlTabIconContainer.getPaddingEnd()) {
            ViewGroup viewGroup3 = this.mLlTabIconContainer;
            viewGroup3.setPaddingRelative(0, viewGroup3.getPaddingTop(), i2, this.mLlTabIconContainer.getPaddingBottom());
            z = true;
        }
        childAt = this.mTabLayout.getChildAt(0);
        if (dimensionPixelSize5 != childAt.getPaddingStart()) {
        }
        childAt.setPaddingRelative(dimensionPixelSize5, this.mLlTabIconContainer.getPaddingTop(), i3, this.mLlTabIconContainer.getPaddingBottom());
        return true;
    }

    public final boolean i() {
        return this.mTabLayout.getMeasuredWidth() != this.mTabLayout.getChildAt(0).getMeasuredWidth();
    }

    public final void j(View view, boolean z) {
        view.setEnabled(z);
        view.setAlpha(z ? 1.0f : 0.3f);
    }

    @Override
    public void onClick(View view) {
        if (view == this.mOverflowButton) {
            ListPopupWindow listPopupWindow = this.mPopupWindow;
            if (listPopupWindow != null) {
                listPopupWindow.setVerticalOffset((getHeight() - this.mOverflowButton.getHeight()) / 2);
                this.mPopupWindow.show();
            }
            View.OnClickListener onClickListener = this.mOnClickListener;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mIsSecondHome && this.mTabLayout.getTabCount() > 2.0f && this.mTabLayout.getTabMode() != 0) {
            this.mTabLayout.setTabMode(0);
        }
        g();
        if (handleInsets()) {
            super.onMeasure(i, i2);
        }
    }

    @Override
    public void onScrollChange(View view, int i, int i2, int i3, int i4) {
        g();
    }

    public void setBackground(int i) {
        setBackgroundResource(i);
    }

    public void setCustomMenuView(View view) {
        LinearLayout linearLayout = this.mLlIconContainer;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
            this.mLlIconContainer.addView(view);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -1;
            view.setLayoutParams(layoutParams);
        }
    }

    public void setOnItemClickListener(a aVar) {
    }

    public void setOverFlowMenuItem(@ArrayRes int i) {
        this.mOverflowButton.setVisibility(0);
        List<String> listAsList = Arrays.asList(getResources().getStringArray(i));
        this.mPopupItems = listAsList;
        h(listAsList);
        b bVar = new b();
        ListPopupWindow listPopupWindow = new ListPopupWindow(getContext(), null, 0, R.style.OSTabOverflow);
        this.mPopupWindow = listPopupWindow;
        listPopupWindow.setAnchorView(this.mOverflowButton);
        this.mPopupWindow.setAdapter(bVar);
        this.mPopupWindow.setModal(true);
        this.mPopupWindow.setContentWidth(olb.y0(getContext(), bVar));
    }

    public void setOverflowButtonVisible(boolean z) {
        ImageView imageView = this.mOverflowButton;
        if (imageView != null) {
            if (z) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    public void setOverflowImage(@DrawableRes int i) {
        ImageView imageView = this.mOverflowButton;
        if (imageView != null) {
            imageView.setBackground(getResources().getDrawable(i));
        }
    }

    public void setOverflowItemState(int i, boolean z) {
        boolean[] zArr = this.mOverflowState;
        if (zArr != null) {
            zArr[i] = z;
        }
    }

    public void setShowBottomLine(boolean z) {
        if (z) {
            this.mBottomLine.setVisibility(0);
        } else {
            this.mBottomLine.setVisibility(8);
        }
    }

    public OSTabLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.os_tab_layout, this);
        setOrientation(1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSTabLayout);
        this.mShowBottomLine = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSTabLayout_osShowBottomLine, false);
        this.mIsFirstLevelTab = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSTabLayout_osIsFirstLevelTab, false);
        this.mTabTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSTabLayout_osTabLayoutTextSize, -1);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(new int[]{R.attr.OsBgPrimary});
        int color = typedArrayObtainStyledAttributes2.getColor(0, ContextCompat.getColor(context, R.color.os_bg_primary_color));
        typedArrayObtainStyledAttributes2.recycle();
        setBackgroundColor(typedArrayObtainStyledAttributes.getColor(R.styleable.OSTabLayout_osTabLayoutBackground, color));
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(R.style.OSTablayout, new int[]{R.attr.tabPaddingStart});
        this.mTabPaddingStart = typedArrayObtainStyledAttributes3.getDimensionPixelSize(0, context.getResources().getDimensionPixelSize(R.dimen.os_tab_item_padding_start));
        typedArrayObtainStyledAttributes3.recycle();
        this.mTabScrollPaddingStart = context.getResources().getDimensionPixelSize(R.dimen.os_tab_item_scroll_padding_start);
        View viewFindViewById = findViewById(R.id.tablayout_underline);
        this.mBottomLine = viewFindViewById;
        if (this.mShowBottomLine) {
            viewFindViewById.setVisibility(0);
        } else {
            viewFindViewById.setVisibility(4);
        }
        TabLayout tabLayout = (TabLayout) findViewById(R.id.tablayout);
        this.mTabLayout = tabLayout;
        tabLayout.setOnScrollChangeListener(this);
        this.mTabLayout.bindOSTabLayout(this);
        this.mOverflowButton = (ImageView) findViewById(R.id.overFlowButton);
        this.mLlIconContainer = (LinearLayout) findViewById(R.id.ll_icon_container);
        this.mOverflowButton.setOnClickListener(this);
        this.mTvLeftMask = (TextView) findViewById(R.id.tv_left_mask);
        this.mTvRightMask = (TextView) findViewById(R.id.tv_right_mask);
        this.mTabLayout.isFirstLevelTab(this.mIsFirstLevelTab);
        float f = this.mTabTextSize;
        if (f != -1.0f) {
            this.mTabLayout.setTabTextSize(f);
        }
        this.mLlTabIconContainer = (ViewGroup) findViewById(R.id.ll_tab_icon_container);
        post(new Runnable() {
            @Override
            public void run() {
                OSTabLayout.this.g();
            }
        });
        this.mIsSecondHome = olb.q0(getContext());
    }

    public void setOnItemClickListener(View.OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
    }
}
