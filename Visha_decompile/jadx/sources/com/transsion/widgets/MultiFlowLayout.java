package com.transsion.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.transsion.common.R;
import defpackage.oc2;
import java.util.ArrayList;
import java.util.List;

public class MultiFlowLayout extends ViewGroup {
    private static final String TAG = "Visha_FlowLayout";
    private int LEFT_RIGHT_SPACE;
    private int ROW_SPACE;
    private boolean isNormal;
    private List<FlowBean> labels;
    private List<FlowBean> lableSelected;
    private boolean mIsMulti;
    private OnTagClickListener mListener;
    private List<TextView> mViews;
    private int maxRow;

    public interface OnTagClickListener {
        void onTagClick(FlowBean flowBean, Object obj);
    }

    public MultiFlowLayout(Context context) {
        this(context, null);
    }

    public void lambda$setLabels$0(TextView textView, FlowBean flowBean, View view) {
        textView.setSelected(!textView.isSelected());
        flowBean.isChecked = textView.isSelected();
        FlowBean flowBean2 = view.getTag() != null ? (FlowBean) view.getTag() : null;
        if (!this.mIsMulti) {
            for (TextView textView2 : this.mViews) {
                FlowBean flowBean3 = textView2.getTag() != null ? (FlowBean) textView2.getTag() : null;
                if (flowBean2 != null && flowBean3 != null && flowBean2.type == flowBean3.type && flowBean2.value != flowBean3.value) {
                    textView2.setSelected(false);
                    textView2.setTextColor(getResources().getColor(R.color.white));
                    flowBean3.isChecked = false;
                    this.lableSelected.remove(flowBean3);
                }
            }
        }
        if (textView.isSelected()) {
            textView.setTextColor(getResources().getColor(R.color.white));
            this.lableSelected.add(flowBean);
        } else {
            textView.setTextColor(getResources().getColor(R.color.black_65));
            this.lableSelected.remove(flowBean);
        }
        OnTagClickListener onTagClickListener = this.mListener;
        if (onTagClickListener != null) {
            onTagClickListener.onTagClick(flowBean, Boolean.valueOf(textView.isSelected()));
        }
        requestLayout();
    }

    public List<FlowBean> getSelectedLabels() {
        return this.lableSelected;
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            View childAt = getChildAt(i7);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i8 = i5 + measuredWidth;
            int i9 = this.ROW_SPACE;
            int i10 = ((measuredHeight + i9) * i6) + measuredHeight;
            if (i8 > i3 - this.LEFT_RIGHT_SPACE && (i6 = i6 + 1) < this.maxRow) {
                i10 = ((i9 + measuredHeight) * i6) + measuredHeight;
                i8 = measuredWidth;
            }
            childAt.layout(i8 - measuredWidth, i10 - measuredHeight, i8, i10);
            i5 = i8 + this.LEFT_RIGHT_SPACE;
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        int i3;
        measureChildren(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i);
        if (mode != 1073741824) {
            int childCount = getChildCount();
            if (childCount <= 0) {
                size = 0;
            } else {
                int i4 = size2;
                int i5 = 1;
                for (int i6 = 0; i6 < childCount; i6++) {
                    int measuredWidth = getChildAt(i6).getMeasuredWidth();
                    if (i4 >= measuredWidth) {
                        i3 = i4 - measuredWidth;
                    } else {
                        if (i5 < this.maxRow) {
                            i5++;
                        }
                        i3 = size2 - measuredWidth;
                    }
                    i4 = i3 - this.LEFT_RIGHT_SPACE;
                }
                size = (getChildAt(0).getMeasuredHeight() * i5) + (this.ROW_SPACE * (i5 - 1));
            }
        }
        setMeasuredDimension(size2, size);
    }

    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void setLabels(List<FlowBean> list, boolean z) {
        if (this.labels == null) {
            this.labels = new ArrayList();
        }
        if (z) {
            this.labels.addAll(list);
        } else {
            removeAllViews();
            this.labels.clear();
            this.labels = list;
            this.mViews.clear();
        }
        if (list == null || list.size() <= 0) {
            return;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        for (final FlowBean flowBean : list) {
            final TextView textView = (TextView) layoutInflaterFrom.inflate(R.layout.layout_item_flow_normal, (ViewGroup) null);
            textView.setText(flowBean.value);
            textView.setTag(flowBean);
            if (this.lableSelected.contains(flowBean)) {
                textView.setSelected(true);
                textView.setTextColor(getResources().getColor(R.color.white));
            } else {
                textView.setSelected(false);
                textView.setTextColor(getResources().getColor(R.color.black_65));
            }
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.lambda$setLabels$0(textView, flowBean, view);
                }
            });
            this.mViews.add(textView);
            addView(textView);
        }
    }

    public void setMaxRow(int i) {
        this.maxRow = i;
    }

    public void setNormal(boolean z) {
        this.isNormal = z;
    }

    public void setOnTagClickListener(OnTagClickListener onTagClickListener) {
        this.mListener = onTagClickListener;
    }

    public MultiFlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MultiFlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mViews = new ArrayList();
        this.lableSelected = new ArrayList();
        this.maxRow = Integer.MAX_VALUE;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VishaFlowLayout);
        this.LEFT_RIGHT_SPACE = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.VishaFlowLayout_leftAndRightSpace, oc2.a(getContext(), this.isNormal ? 8.0f : 10.0f));
        this.ROW_SPACE = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.VishaFlowLayout_rowSpace, oc2.a(getContext(), this.isNormal ? 8.0f : 10.0f));
        this.mIsMulti = typedArrayObtainStyledAttributes.getBoolean(R.styleable.VishaFlowLayout_multiSelected, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static class FlowBean {
        public int id;
        public boolean isChecked;
        Object tag;
        public int type;
        public String value;

        public FlowBean(String str, int i, int i2, boolean z) {
            this.value = str;
            this.type = i;
            this.id = i2;
            this.isChecked = z;
        }

        public FlowBean(String str) {
            this.value = str;
        }

        public FlowBean(String str, int i) {
            this.value = str;
            this.type = i;
        }

        public FlowBean(String str, Object obj) {
            this.value = str;
            this.tag = obj;
        }
    }
}
