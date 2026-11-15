package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetslib.widget.OSPopupPressLayout;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class qb9 extends ArrayAdapter {
    public List A;
    public List B;
    public int b;
    public Set c;
    public boolean d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public Integer i;
    public ColorStateList j;
    public Integer k;
    public ColorStateList l;
    public CharSequence m;
    public CharSequence n;
    public Integer o;
    public ColorStateList p;
    public Integer q;
    public ColorStateList r;
    public Integer s;
    public List t;
    public int u;
    public SparseIntArray v;
    public SparseArray w;
    public SparseArray x;
    public SparseArray y;
    public SparseArray z;

    public static class a {
        public CharSequence a;
        public CharSequence b;
        public CharSequence c;
        public CharSequence d;
        public boolean e = false;
        public Object f;

        public a(CharSequence charSequence, Object obj) {
            this.a = charSequence;
            this.f = obj;
        }

        public boolean a() {
            return this.e;
        }

        public CharSequence getLeftIcon() {
            return this.c;
        }

        public CharSequence getMainText() {
            return this.a;
        }

        public Object getOriginalData() {
            return this.f;
        }

        public CharSequence getRightIcon() {
            return this.d;
        }

        public CharSequence getSubText() {
            return this.b;
        }

        public void setEnableDivider(boolean z) {
            this.e = z;
        }

        public void setLeftIcon(CharSequence charSequence) {
            this.c = charSequence;
        }

        public void setMainText(CharSequence charSequence) {
            this.a = charSequence;
        }

        public void setOriginalData(Object obj) {
            this.f = obj;
        }

        public void setRightIcon(CharSequence charSequence) {
            this.d = charSequence;
        }

        public void setSubText(CharSequence charSequence) {
            this.b = charSequence;
        }
    }

    public qb9(Context context, Object[] objArr) {
        this(context, Arrays.asList(objArr));
    }

    public static qb9 b(Context context, String[] strArr) {
        return new qb9(context, strArr);
    }

    public static List h(List list) {
        if (list == null) {
            return new ArrayList();
        }
        return list instanceof ArrayList ? list : new ArrayList(list);
    }

    public void a() {
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
    }

    @Override
    public boolean areAllItemsEnabled() {
        return this.c.isEmpty();
    }

    public final a c(Object obj) {
        CharSequence charSequenceH0;
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj instanceof CharSequence) {
            charSequenceH0 = olb.G0((CharSequence) obj);
        } else {
            charSequenceH0 = obj != null ? olb.H0(obj.toString()) : null;
        }
        return new a(charSequenceH0, obj);
    }

    public int d(int i) {
        List list = this.t;
        if (list != null && !list.isEmpty() && i >= 0) {
            int iIntValue = 0;
            for (int i2 = 0; i2 < this.t.size(); i2++) {
                iIntValue += ((Integer) this.t.get(i2)).intValue();
                if (i < iIntValue) {
                    return i2;
                }
            }
        }
        return -1;
    }

    public final CharSequence e(Object obj) {
        if (obj instanceof CharSequence) {
            return (CharSequence) obj;
        }
        if (obj != null) {
            return obj.toString();
        }
        return null;
    }

    public final void f() {
        int count = getCount();
        this.B.clear();
        if (count <= 0) {
            return;
        }
        for (int i = 0; i < count; i++) {
            this.B.add(c(getItem(i)));
        }
    }

    public final boolean g(int i) {
        int iD;
        List list = this.t;
        if (list == null || list.isEmpty() || (iD = d(i)) < 0) {
            return this.b == i;
        }
        int i2 = this.v.get(iD, -1);
        if (i2 != -1) {
            return i2 == i;
        }
        return this.b == i;
    }

    @Override
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        View dropDownView = super.getDropDownView(i, view, viewGroup);
        if (dropDownView != null) {
            k(dropDownView, isEnabled(i));
            if (this.d) {
                j(i, dropDownView);
            }
        }
        return dropDownView;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (view2 != null) {
            k(view2, isEnabled(i));
            j(i, view2);
        }
        return view2;
    }

    public void i(int i, boolean z) {
        if (i < 0 || i >= getCount()) {
            return;
        }
        if (z) {
            this.c.remove(Integer.valueOf(i));
        } else {
            this.c.add(Integer.valueOf(i));
        }
        notifyDataSetChanged();
    }

    @Override
    public boolean isEnabled(int i) {
        return !this.c.contains(Integer.valueOf(i));
    }

    public final void j(int i, View view) {
        ColorStateList colorStateList;
        Integer num;
        int i2;
        View viewFindViewById;
        List list;
        if (view instanceof OSPopupPressLayout) {
            Integer num2 = this.s;
            if (num2 != null) {
                ((OSPopupPressLayout) view).setMaskColorOverride(num2.intValue());
            } else {
                ((OSPopupPressLayout) view).clearMaskColorOverride();
            }
        }
        boolean zG = g(i);
        View viewFindViewById2 = view.findViewById(this.e);
        viewFindViewById2.setSelected(zG);
        int iD = d(i);
        if (iD >= 0) {
            num = (Integer) this.w.get(iD);
            colorStateList = (ColorStateList) this.x.get(iD);
        } else {
            colorStateList = null;
            num = null;
        }
        Integer num3 = (Integer) this.y.get(i);
        ColorStateList colorStateList2 = (ColorStateList) this.z.get(i);
        a aVar = (i < 0 || i >= this.B.size()) ? null : (a) this.B.get(i);
        if (viewFindViewById2 instanceof TextView) {
            Typeface typefaceCreate = zG ? Typeface.create(Typeface.SANS_SERIF, view.getResources().getInteger(R.integer.OSSemiBoldWeight), false) : Typeface.create(Typeface.SANS_SERIF, 0);
            TextView textView = (TextView) viewFindViewById2;
            CharSequence mainText = aVar != null ? aVar.getMainText() : null;
            if (mainText != null) {
                textView.setText(mainText);
            }
            textView.setTypeface(typefaceCreate);
            if (colorStateList2 != null) {
                textView.setTextColor(colorStateList2);
            } else if (num3 != null) {
                textView.setTextColor(num3.intValue());
            } else if (colorStateList != null) {
                textView.setTextColor(colorStateList);
            } else if (num != null) {
                textView.setTextColor(num.intValue());
            } else {
                ColorStateList colorStateList3 = this.j;
                if (colorStateList3 != null) {
                    textView.setTextColor(colorStateList3);
                } else {
                    Integer num4 = this.i;
                    if (num4 != null) {
                        textView.setTextColor(num4.intValue());
                    }
                }
            }
        }
        View viewFindViewById3 = view.findViewById(this.f);
        if (viewFindViewById3 instanceof TextView) {
            TextView textView2 = (TextView) viewFindViewById3;
            CharSequence subText = aVar != null ? aVar.getSubText() : null;
            if (subText == null || subText.length() <= 0) {
                viewFindViewById3.setVisibility(8);
            } else {
                viewFindViewById3.setSelected(zG);
                textView2.setTypeface(zG ? Typeface.create(Typeface.SANS_SERIF, view.getResources().getInteger(R.integer.OSSemiBoldWeight), false) : Typeface.create(Typeface.SANS_SERIF, 0));
                textView2.setText(subText);
                if (!zG) {
                    ColorStateList colorStateList4 = this.l;
                    if (colorStateList4 != null) {
                        textView2.setTextColor(colorStateList4);
                    } else {
                        Integer num5 = this.k;
                        if (num5 != null) {
                            textView2.setTextColor(num5.intValue());
                        } else {
                            ColorStateList colorStateList5 = this.j;
                            if (colorStateList5 != null) {
                                textView2.setTextColor(colorStateList5);
                            } else {
                                Integer num6 = this.i;
                                if (num6 != null) {
                                    textView2.setTextColor(num6.intValue());
                                }
                            }
                        }
                    }
                } else if (colorStateList2 != null) {
                    textView2.setTextColor(colorStateList2);
                } else if (num3 != null) {
                    textView2.setTextColor(num3.intValue());
                } else if (colorStateList != null) {
                    textView2.setTextColor(colorStateList);
                } else if (num != null) {
                    textView2.setTextColor(num.intValue());
                } else {
                    ColorStateList colorStateList6 = this.j;
                    if (colorStateList6 != null) {
                        textView2.setTextColor(colorStateList6);
                    } else {
                        Integer num7 = this.i;
                        if (num7 != null) {
                            textView2.setTextColor(num7.intValue());
                        }
                    }
                }
                viewFindViewById3.setVisibility(0);
            }
        }
        View viewFindViewById4 = view.findViewById(this.g);
        if (viewFindViewById4 instanceof OSIconTextView) {
            OSIconTextView oSIconTextView = (OSIconTextView) viewFindViewById4;
            CharSequence leftIcon = aVar != null ? aVar.getLeftIcon() : null;
            if (leftIcon == null || leftIcon.length() == 0) {
                leftIcon = this.m;
            }
            if (leftIcon == null || leftIcon.length() <= 0) {
                viewFindViewById4.setVisibility(8);
            } else {
                oSIconTextView.setText(leftIcon);
                viewFindViewById4.setSelected(zG);
                if (colorStateList2 != null) {
                    oSIconTextView.setTextColor(colorStateList2);
                } else if (num3 != null) {
                    oSIconTextView.setTextColor(num3.intValue());
                } else if (colorStateList != null) {
                    oSIconTextView.setTextColor(colorStateList);
                } else if (num != null) {
                    oSIconTextView.setTextColor(num.intValue());
                } else {
                    ColorStateList colorStateList7 = this.p;
                    if (colorStateList7 != null) {
                        oSIconTextView.setTextColor(colorStateList7);
                    } else {
                        Integer num8 = this.o;
                        if (num8 != null) {
                            oSIconTextView.setTextColor(num8.intValue());
                        } else {
                            ColorStateList colorStateList8 = this.j;
                            if (colorStateList8 != null) {
                                oSIconTextView.setTextColor(colorStateList8);
                            } else {
                                Integer num9 = this.i;
                                if (num9 != null) {
                                    oSIconTextView.setTextColor(num9.intValue());
                                }
                            }
                        }
                    }
                }
                viewFindViewById4.setVisibility(0);
            }
        }
        View viewFindViewById5 = view.findViewById(this.h);
        if (viewFindViewById5 instanceof TextView) {
            CharSequence rightIcon = aVar != null ? aVar.getRightIcon() : null;
            if (rightIcon == null) {
                rightIcon = this.n;
            }
            if (rightIcon == null || rightIcon.length() == 0) {
                i2 = 8;
                viewFindViewById5.setVisibility(8);
            } else {
                OSIconTextView oSIconTextView2 = (OSIconTextView) viewFindViewById5;
                oSIconTextView2.setText(rightIcon);
                viewFindViewById5.setSelected(zG);
                if (colorStateList2 != null) {
                    oSIconTextView2.setTextColor(colorStateList2);
                } else if (num3 != null) {
                    oSIconTextView2.setTextColor(num3.intValue());
                } else if (colorStateList != null) {
                    oSIconTextView2.setTextColor(colorStateList);
                } else if (num != null) {
                    oSIconTextView2.setTextColor(num.intValue());
                } else {
                    ColorStateList colorStateList9 = this.r;
                    if (colorStateList9 != null) {
                        oSIconTextView2.setTextColor(colorStateList9);
                    } else {
                        Integer num10 = this.q;
                        if (num10 != null) {
                            oSIconTextView2.setTextColor(num10.intValue());
                        } else {
                            ColorStateList colorStateList10 = this.j;
                            if (colorStateList10 != null) {
                                oSIconTextView2.setTextColor(colorStateList10);
                            } else {
                                Integer num11 = this.i;
                                if (num11 != null) {
                                    oSIconTextView2.setTextColor(num11.intValue());
                                }
                            }
                        }
                    }
                }
                oSIconTextView2.setTextSize(1, 16.0f);
                viewFindViewById5.setVisibility(zG ? 0 : 4);
                i2 = 8;
            }
        } else {
            i2 = 8;
        }
        if (this.u == 0) {
            this.u = R.id.os_list_popup_group_divider_frame;
        }
        int i3 = this.u;
        if (i3 == 0 || (viewFindViewById = view.findViewById(i3)) == null) {
            return;
        }
        boolean zL = l(i);
        if (aVar != null && (list = this.t) != null && !list.isEmpty()) {
            zL = zL && aVar.a();
        }
        if (i == getCount() - 1) {
            zL = false;
        }
        viewFindViewById.setVisibility(zL ? 0 : i2);
    }

    public final void k(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            ArrayDeque arrayDeque = new ArrayDeque();
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                arrayDeque.push(viewGroup.getChildAt(i));
            }
            while (!arrayDeque.isEmpty()) {
                View view2 = (View) arrayDeque.pop();
                view2.setEnabled(z);
                if (view2 instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) view2;
                    for (int i2 = 0; i2 < viewGroup2.getChildCount(); i2++) {
                        arrayDeque.push(viewGroup2.getChildAt(i2));
                    }
                }
            }
        }
    }

    public final boolean l(int i) {
        List list = this.t;
        if (list != null && !list.isEmpty() && i >= 0) {
            int i2 = 0;
            int iIntValue = 0;
            while (i2 < this.t.size()) {
                iIntValue += ((Integer) this.t.get(i2)).intValue();
                if (i == iIntValue - 1) {
                    return i2 != this.t.size() - 1;
                }
                i2++;
            }
        }
        return false;
    }

    public final void m() {
        List list = this.t;
        if (list == null || list.isEmpty() || this.B == null) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (i < this.t.size()) {
            int iIntValue = ((Integer) this.t.get(i)).intValue();
            int i3 = 0;
            while (i3 < iIntValue) {
                int i4 = i2 + i3;
                if (i4 < this.B.size()) {
                    ((a) this.B.get(i4)).setEnableDivider((i3 == iIntValue + (-1)) && !(i == this.t.size() - 1));
                }
                i3++;
            }
            i2 += iIntValue;
            i++;
        }
    }

    public final void n() {
        int count = getCount();
        int size = this.B.size();
        if (size > count) {
            for (int i = size - 1; i >= count; i--) {
                this.B.remove(i);
            }
            size = count;
        }
        for (int i2 = 0; i2 < count; i2++) {
            Object item = getItem(i2);
            if (i2 >= size) {
                this.B.add(c(item));
            } else {
                a aVar = (a) this.B.get(i2);
                if (!(item instanceof a)) {
                    aVar.setMainText(e(item));
                    aVar.setOriginalData(item);
                } else if (aVar != item) {
                    this.B.set(i2, (a) item);
                }
            }
        }
    }

    @Override
    public void notifyDataSetChanged() {
        n();
        super.notifyDataSetChanged();
    }

    public void setDropDownSpinner(boolean z) {
        this.d = z;
    }

    public void setGroupCounts(List<Integer> list) {
        int iD;
        this.t = list;
        if (this.b != -1 && list != null && !list.isEmpty() && (iD = d(this.b)) >= 0) {
            this.v.put(iD, this.b);
        }
        m();
        notifyDataSetChanged();
    }

    public void setLeftTextIcon(CharSequence charSequence) {
        if (charSequence == null) {
            return;
        }
        int count = getCount();
        if (this.B != null) {
            for (int i = 0; i < count && i < this.B.size(); i++) {
                ((a) this.B.get(i)).setLeftIcon(charSequence);
            }
        }
        notifyDataSetChanged();
    }

    public void setLeftTextIconColor(Integer num) {
        this.o = num;
    }

    public void setLeftTextIconColorStateList(ColorStateList colorStateList) {
        this.p = colorStateList;
    }

    public void setLeftTextIconResource(@StringRes int i) {
        CharSequence text = getContext().getResources().getText(i);
        int count = getCount();
        if (this.B != null) {
            for (int i2 = 0; i2 < count && i2 < this.B.size(); i2++) {
                ((a) this.B.get(i2)).setLeftIcon(text);
            }
        }
        notifyDataSetChanged();
    }

    public void setLeftTextIconsResource(@NonNull List<Integer> list) {
        if (this.B != null) {
            for (int i = 0; i < list.size() && i < this.B.size(); i++) {
                Integer num = list.get(i);
                ((a) this.B.get(i)).setLeftIcon((num == null || num.intValue() == 0) ? "" : getContext().getResources().getText(num.intValue()));
            }
        }
        notifyDataSetChanged();
    }

    public void setMainTextArrayResource(@ArrayRes int i) {
        List listAsList = Arrays.asList(getContext().getResources().getTextArray(i));
        if (this.B != null) {
            for (int i2 = 0; i2 < listAsList.size() && i2 < this.B.size(); i2++) {
                ((a) this.B.get(i2)).setMainText((CharSequence) listAsList.get(i2));
            }
        }
        notifyDataSetChanged();
    }

    public void setMainTexts(@Nullable List<CharSequence> list) {
        if (list != null && this.B != null) {
            for (int i = 0; i < list.size() && i < this.B.size(); i++) {
                ((a) this.B.get(i)).setMainText(list.get(i));
            }
        }
        notifyDataSetChanged();
    }

    public void setPressColor(Integer num) {
        this.s = num;
    }

    public void setRightTextIcon(CharSequence charSequence) {
        this.n = charSequence;
        notifyDataSetChanged();
    }

    public void setRightTextIconColor(Integer num) {
        this.q = num;
    }

    public void setRightTextIconColorStateList(ColorStateList colorStateList) {
        this.r = colorStateList;
    }

    public void setRightTextIconResource(@StringRes int i) {
        this.n = getContext().getResources().getText(i);
        notifyDataSetChanged();
    }

    public void setSelected(int i) {
        List list;
        if (i == this.b) {
            if (i == -1 || (list = this.t) == null || list.isEmpty()) {
                return;
            }
            int iD = d(i);
            if (iD >= 0 && this.v.get(iD, -1) == i) {
                return;
            }
        }
        List list2 = this.t;
        if (list2 == null || list2.isEmpty()) {
            if (i < 0 || i >= getCount()) {
                this.b = -1;
            } else {
                this.b = i;
            }
        } else if (i < 0 || i >= getCount()) {
            this.b = -1;
            this.v.clear();
        } else {
            int iD2 = d(i);
            if (iD2 >= 0) {
                this.v.put(iD2, i);
                this.b = i;
            }
        }
        notifyDataSetChanged();
    }

    public void setSubTextArrayResource(@ArrayRes int i) {
        List listAsList = Arrays.asList(getContext().getResources().getTextArray(i));
        if (this.B != null) {
            for (int i2 = 0; i2 < listAsList.size() && i2 < this.B.size(); i2++) {
                ((a) this.B.get(i2)).setSubText((CharSequence) listAsList.get(i2));
            }
        }
        notifyDataSetChanged();
    }

    public void setSubTextColor(Integer num) {
        this.k = num;
    }

    public void setSubTextColorStateList(ColorStateList colorStateList) {
        this.l = colorStateList;
    }

    public void setSubTexts(List<CharSequence> list) {
        if (list != null && this.B != null) {
            for (int i = 0; i < list.size() && i < this.B.size(); i++) {
                ((a) this.B.get(i)).setSubText(list.get(i));
            }
        }
        notifyDataSetChanged();
    }

    public void setTextViewColor(Integer num) {
        this.i = num;
    }

    public void setTextViewColorStateList(ColorStateList colorStateList) {
        this.j = colorStateList;
    }

    public qb9(Context context, List list) {
        this(context, R.layout.os_popup_item_layout_selected, android.R.id.text1, list);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public qb9(Context context, int i, int i2, List list) {
        List listH = h(list);
        super(context, i, i2, listH);
        this.b = -1;
        this.c = new HashSet();
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.u = 0;
        this.v = new SparseIntArray();
        this.w = new SparseArray();
        this.x = new SparseArray();
        this.y = new SparseArray();
        this.z = new SparseArray();
        this.B = new ArrayList();
        this.A = listH;
        this.e = i2;
        this.f = R.id.os_list_popup_sub_text;
        this.g = R.id.os_list_popup_left_text_icon;
        this.h = R.id.os_list_popup_right_text_icon;
        f();
    }

    public void setLeftTextIcon(List<CharSequence> list) {
        if (list != null && this.B != null) {
            for (int i = 0; i < list.size() && i < this.B.size(); i++) {
                ((a) this.B.get(i)).setLeftIcon(list.get(i));
            }
        }
        notifyDataSetChanged();
    }

    public void setSelected(@Nullable Object obj) {
        setSelected(getPosition(obj));
    }
}
