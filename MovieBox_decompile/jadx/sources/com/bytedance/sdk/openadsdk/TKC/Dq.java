package com.bytedance.sdk.openadsdk.TKC;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.List;

public class Dq extends ViewGroup implements TEQ.TKC {
    private final TEQ Sj;

    public Dq(Context context, TEQ teq) {
        super(context);
        this.Sj = teq;
        teq.Sj(this);
    }

    private View sP(FilterWord filterWord) {
        TextView textView = new TextView(getContext());
        textView.setTag(filterWord);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        int iSP = FPG.sP(getContext(), 8.0f);
        marginLayoutParams.leftMargin = iSP;
        marginLayoutParams.bottomMargin = iSP;
        textView.setTextColor(Sj());
        textView.setText(filterWord.getName());
        textView.setPadding(iSP, iSP, iSP, iSP);
        textView.setBackground(sP());
        textView.setSelected(false);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (Dq.this.Sj != null) {
                    if (view.isSelected()) {
                        Dq.this.Sj.Sj(TEQ.Sj);
                        return;
                    }
                    Object tag = view.getTag();
                    if (tag instanceof FilterWord) {
                        Dq.this.Sj.Sj((FilterWord) tag);
                    }
                }
            }
        });
        textView.setSelected(false);
        textView.setLayoutParams(marginLayoutParams);
        return textView;
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int childCount = getChildCount();
        int i15 = i12 - i10;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 < childCount) {
            View childAt = getChildAt(i16);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i19 = i16 != 0 ? marginLayoutParams.leftMargin : 0;
            if (measuredWidth + i19 + i17 < i15) {
                i14 = i17 + i19;
            } else {
                i18 += marginLayoutParams.bottomMargin + measuredHeight;
                i14 = 0;
            }
            childAt.layout(i14, marginLayoutParams.topMargin + i18, i14 + measuredWidth, measuredHeight + i18);
            i17 = i14 + measuredWidth + marginLayoutParams.rightMargin;
            i16++;
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        View.MeasureSpec.getMode(i10);
        View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        View.MeasureSpec.getSize(i11);
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < getChildCount()) {
            View childAt = getChildAt(i12);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            measureChild(childAt, i10, i11);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i15 = i12 != 0 ? marginLayoutParams.leftMargin : 0;
            int i16 = (measuredWidth + i15) + i14 < size ? i14 + i15 : 0;
            if (i16 == 0) {
                i13 += measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            }
            i14 = i16 + measuredWidth + marginLayoutParams.rightMargin;
            i12++;
        }
        setMeasuredDimension(size, i13);
    }

    public void Sj(List<FilterWord> list) {
        if (list == null) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            FilterWord filterWord = list.get(i10);
            if (filterWord != null) {
                addView(sP(filterWord));
            }
        }
    }

    private ColorStateList Sj() {
        return new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[0]}, new int[]{Color.rgb(255, 44, 85), ViewCompat.MEASURED_STATE_MASK});
    }

    @Override
    public void Sj(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null) {
                if (TEQ.Sj.equals(filterWord)) {
                    childAt.setSelected(false);
                } else {
                    childAt.setSelected(filterWord.equals(childAt.getTag()));
                }
            }
        }
    }

    private Drawable sP() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        float fSP = FPG.sP(getContext(), 5.0f);
        gradientDrawable.setCornerRadius(fSP);
        gradientDrawable.setColor(Color.parseColor("#0D000000"));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setStroke(FPG.sP(getContext(), 1.0f), Color.parseColor("#FE2C55"));
        gradientDrawable2.setCornerRadius(fSP);
        gradientDrawable2.setColor(Color.parseColor("#12FE2C55"));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_selected}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }
}
