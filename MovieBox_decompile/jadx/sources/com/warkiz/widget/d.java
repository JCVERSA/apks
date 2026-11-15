package com.warkiz.widget;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;

public class d {

    private ArrowView f58548c;

    private TextView f58549d;

    private PopupWindow f58550e;

    private LinearLayout f58551f;

    private int f58552g;

    private int f58553h;

    private Context f58554i;

    private int f58555j;

    private IndicatorSeekBar f58556k;

    private View f58557l;

    private View f58558m;

    private View f58559n;

    private float f58560o;

    private int f58561p;

    private int[] f58547b = new int[2];

    private final int f58546a = e();

    public d(Context context, IndicatorSeekBar indicatorSeekBar, int i10, int i11, int i12, int i13, View view, View view2) {
        this.f58554i = context;
        this.f58556k = indicatorSeekBar;
        this.f58553h = i10;
        this.f58555j = i11;
        this.f58558m = view;
        this.f58559n = view2;
        this.f58560o = i12;
        this.f58561p = i13;
        this.f58552g = g.a(this.f58554i, 2.0f);
        h();
    }

    private void a(float f10) {
        int i10 = this.f58555j;
        if (i10 == 4 || i10 == 1) {
            return;
        }
        int iC = c();
        if (iC + f10 < this.f58550e.getContentView().getMeasuredWidth() / 2) {
            k(this.f58548c, -((int) (((this.f58550e.getContentView().getMeasuredWidth() / 2) - iC) - f10)), -1, -1, -1);
        } else if ((this.f58546a - iC) - f10 < this.f58550e.getContentView().getMeasuredWidth() / 2) {
            k(this.f58548c, (int) ((this.f58550e.getContentView().getMeasuredWidth() / 2) - ((this.f58546a - iC) - f10)), -1, -1, -1);
        } else {
            k(this.f58548c, 0, 0, 0, 0);
        }
    }

    private GradientDrawable b() {
        GradientDrawable gradientDrawable = this.f58555j == 2 ? (GradientDrawable) this.f58554i.getResources().getDrawable(R$drawable.isb_indicator_rounded_corners) : (GradientDrawable) this.f58554i.getResources().getDrawable(R$drawable.isb_indicator_square_corners);
        gradientDrawable.setColor(this.f58553h);
        return gradientDrawable;
    }

    private int c() {
        this.f58556k.getLocationOnScreen(this.f58547b);
        return this.f58547b[0];
    }

    private int e() {
        WindowManager windowManager = (WindowManager) this.f58554i.getSystemService("window");
        if (windowManager != null) {
            return windowManager.getDefaultDisplay().getWidth();
        }
        return 0;
    }

    private void h() {
        View viewFindViewById;
        int i10 = this.f58555j;
        if (i10 == 4) {
            View view = this.f58558m;
            if (view == null) {
                throw new IllegalArgumentException("the attr：indicator_custom_layout must be set while you set the indicator type to CUSTOM.");
            }
            this.f58557l = view;
            int identifier = this.f58554i.getResources().getIdentifier("isb_progress", "id", this.f58554i.getApplicationContext().getPackageName());
            if (identifier <= 0 || (viewFindViewById = this.f58557l.findViewById(identifier)) == null) {
                return;
            }
            if (!(viewFindViewById instanceof TextView)) {
                throw new ClassCastException("the view identified by isb_progress in indicator custom layout can not be cast to TextView");
            }
            TextView textView = (TextView) viewFindViewById;
            this.f58549d = textView;
            textView.setText(this.f58556k.getIndicatorTextString());
            this.f58549d.setTextSize(g.b(this.f58554i, this.f58560o));
            this.f58549d.setTextColor(this.f58561p);
            return;
        }
        if (i10 == 1) {
            CircleBubbleView circleBubbleView = new CircleBubbleView(this.f58554i, this.f58560o, this.f58561p, this.f58553h, "1000");
            this.f58557l = circleBubbleView;
            circleBubbleView.setProgress(this.f58556k.getIndicatorTextString());
            return;
        }
        View viewInflate = View.inflate(this.f58554i, R$layout.isb_indicator, null);
        this.f58557l = viewInflate;
        this.f58551f = (LinearLayout) viewInflate.findViewById(R$id.indicator_container);
        ArrowView arrowView = (ArrowView) this.f58557l.findViewById(R$id.indicator_arrow);
        this.f58548c = arrowView;
        arrowView.setColor(this.f58553h);
        TextView textView2 = (TextView) this.f58557l.findViewById(R$id.isb_progress);
        this.f58549d = textView2;
        textView2.setText(this.f58556k.getIndicatorTextString());
        this.f58549d.setTextSize(g.b(this.f58554i, this.f58560o));
        this.f58549d.setTextColor(this.f58561p);
        this.f58551f.setBackground(b());
        if (this.f58559n != null) {
            int identifier2 = this.f58554i.getResources().getIdentifier("isb_progress", "id", this.f58554i.getApplicationContext().getPackageName());
            View view2 = this.f58559n;
            if (identifier2 <= 0) {
                m(view2);
                return;
            }
            View viewFindViewById2 = view2.findViewById(identifier2);
            if (viewFindViewById2 == null || !(viewFindViewById2 instanceof TextView)) {
                m(view2);
            } else {
                n(view2, (TextView) viewFindViewById2);
            }
        }
    }

    private void k(View view, int i10, int i11, int i12, int i13) {
        if (view != null && (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            if (i10 == -1) {
                i10 = marginLayoutParams.leftMargin;
            }
            if (i11 == -1) {
                i11 = marginLayoutParams.topMargin;
            }
            if (i12 == -1) {
                i12 = marginLayoutParams.rightMargin;
            }
            if (i13 == -1) {
                i13 = marginLayoutParams.bottomMargin;
            }
            marginLayoutParams.setMargins(i10, i11, i12, i13);
            view.requestLayout();
        }
    }

    View d() {
        return this.f58557l;
    }

    void f() {
        PopupWindow popupWindow = this.f58550e;
        if (popupWindow == null) {
            return;
        }
        popupWindow.dismiss();
    }

    void g() {
        View view;
        if (this.f58550e != null || this.f58555j == 0 || (view = this.f58557l) == null) {
            return;
        }
        view.measure(0, 0);
        this.f58550e = new PopupWindow(this.f58557l, -2, -2, false);
    }

    boolean i() {
        PopupWindow popupWindow = this.f58550e;
        return popupWindow != null && popupWindow.isShowing();
    }

    void j() {
        String indicatorTextString = this.f58556k.getIndicatorTextString();
        View view = this.f58557l;
        if (view instanceof CircleBubbleView) {
            ((CircleBubbleView) view).setProgress(indicatorTextString);
            return;
        }
        TextView textView = this.f58549d;
        if (textView != null) {
            textView.setText(indicatorTextString);
        }
    }

    void l(String str) {
        View view = this.f58557l;
        if (view instanceof CircleBubbleView) {
            ((CircleBubbleView) view).setProgress(str);
            return;
        }
        TextView textView = this.f58549d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void m(View view) {
        n(view, null);
    }

    public void n(View view, TextView textView) {
        this.f58549d = textView;
        this.f58551f.removeAllViews();
        view.setBackground(b());
        this.f58551f.addView(view);
    }

    void o(float f10) {
        if (this.f58556k.isEnabled() && this.f58556k.getVisibility() == 0) {
            j();
            PopupWindow popupWindow = this.f58550e;
            if (popupWindow != null) {
                popupWindow.getContentView().measure(0, 0);
                PopupWindow popupWindow2 = this.f58550e;
                popupWindow2.showAsDropDown(this.f58556k, (int) (f10 - (popupWindow2.getContentView().getMeasuredWidth() / 2.0f)), -(((this.f58556k.getMeasuredHeight() + this.f58550e.getContentView().getMeasuredHeight()) - this.f58556k.getPaddingTop()) + this.f58552g));
                a(f10);
            }
        }
    }

    void p(float f10) {
        if (this.f58556k.isEnabled() && this.f58556k.getVisibility() == 0) {
            j();
            PopupWindow popupWindow = this.f58550e;
            if (popupWindow != null) {
                popupWindow.getContentView().measure(0, 0);
                PopupWindow popupWindow2 = this.f58550e;
                popupWindow2.update(this.f58556k, (int) (f10 - (popupWindow2.getContentView().getMeasuredWidth() / 2)), -(((this.f58556k.getMeasuredHeight() + this.f58550e.getContentView().getMeasuredHeight()) - this.f58556k.getPaddingTop()) + this.f58552g), -1, -1);
                a(f10);
            }
        }
    }

    void q(int i10) {
        k(this.f58548c, i10, -1, -1, -1);
    }

    void r(int i10) {
        k(this.f58557l, i10, -1, -1, -1);
    }
}
