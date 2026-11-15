package com.noober.background.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import com.noober.background.R;
import com.noober.background.common.MultiSelector;
import com.noober.background.common.ResourceUtils;

public class MultiTextColorSelectorColorCreator implements ICreateColorState {
    private Context context;
    private int index;
    private TypedArray selectorTa;
    private int[][] states = new int[0][];
    private int[] colors = new int[0];

    public MultiTextColorSelectorColorCreator(Context context, TypedArray typedArray) {
        this.selectorTa = typedArray;
        this.context = context;
    }

    private void addState(int i10) {
        String string = this.selectorTa.getString(i10);
        if (string != null) {
            String[] strArrSplit = string.split(",");
            if (strArrSplit.length < 2) {
                throw new IllegalArgumentException("Attributes and drawable must be set at the same time");
            }
            int[] iArr = new int[strArrSplit.length - 1];
            int color = 0;
            for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                String str = strArrSplit[i11];
                if (i11 == strArrSplit.length - 1) {
                    color = ResourceUtils.getColor(this.context, str);
                    if (color == -1) {
                        throw new IllegalArgumentException("cannot find color from the last attribute");
                    }
                } else {
                    MultiSelector multiAttr = MultiSelector.getMultiAttr(str.replace("-", ""));
                    if (multiAttr == null) {
                        throw new IllegalArgumentException("the attribute of bl_multi_selector only support state_checkable, state_checked, state_enabled, state_selected, state_pressed, state_focused, state_hovered, state_activated");
                    }
                    if (str.contains("-")) {
                        iArr[i11] = -multiAttr.f39229id;
                    } else {
                        iArr[i11] = multiAttr.f39229id;
                    }
                }
            }
            int[][] iArr2 = this.states;
            int i12 = this.index;
            iArr2[i12] = iArr;
            this.colors[i12] = color;
            this.index = i12 + 1;
        }
    }

    @Override
    public ColorStateList create() {
        this.states = new int[this.selectorTa.getIndexCount()][];
        this.colors = new int[this.selectorTa.getIndexCount()];
        for (int i10 = 0; i10 < this.selectorTa.getIndexCount(); i10++) {
            int index = this.selectorTa.getIndex(i10);
            if (index == R.styleable.background_multi_selector_text_bl_multi_text_selector1) {
                addState(index);
            } else if (index == R.styleable.background_multi_selector_text_bl_multi_text_selector2) {
                addState(index);
            } else if (index == R.styleable.background_multi_selector_text_bl_multi_text_selector3) {
                addState(index);
            } else if (index == R.styleable.background_multi_selector_text_bl_multi_text_selector4) {
                addState(index);
            } else if (index == R.styleable.background_multi_selector_text_bl_multi_text_selector5) {
                addState(index);
            } else if (index == R.styleable.background_multi_selector_text_bl_multi_text_selector6) {
                addState(index);
            }
        }
        return new ColorStateList(this.states, this.colors);
    }
}
