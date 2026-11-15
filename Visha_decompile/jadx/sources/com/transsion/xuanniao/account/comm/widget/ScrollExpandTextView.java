package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.transsion.xuanniao.account.R;
import defpackage.c39;
import defpackage.xj1;

public class ScrollExpandTextView extends ScrollView implements ViewTreeObserver.OnGlobalLayoutListener {

    public static int f30OppOOO0;
    public FrameLayout.LayoutParams OppO;
    public int OppO00p;
    public int OppO0O0;
    public int OppO0OO;
    public int OppO0Op;
    public TextView OppO0p;
    public TextView OppO0p0;
    public State OppO0pO;
    public CharSequence OppO0pp;
    public int OppOO0;
    public int OppOO0O;
    public int OppOO0p;

    public enum State {
        EXPAND,
        COLLAPSE
    }

    public ScrollExpandTextView(@NonNull Context context) {
        super(context);
        this.OppO0pO = State.COLLAPSE;
        OppO00p();
    }

    public final void OppO00p() {
        xj1.b(getContext());
        f30OppOOO0 = c39.a(50.0f) * 3;
        this.OppO00p = (int) (((double) c39.f()) * 0.7d);
        int iA = c39.a(50.0f);
        this.OppO0O0 = iA;
        this.OppO0OO = iA;
        this.OppO0Op = c39.a(7.0f);
        this.OppOO0 = c39.a(3.0f);
        FrameLayout frameLayout = new FrameLayout(getContext());
        TextView textView = new TextView(getContext());
        this.OppO0p0 = textView;
        textView.setTextSize(14.0f);
        this.OppO0p0.setMaxHeight(c39.a(50.0f));
        this.OppO0p0.setMaxLines(2);
        this.OppO0p0.setIncludeFontPadding(true);
        this.OppO0p0.setLineSpacing(1.0f, 1.2f);
        TextView textView2 = new TextView(getContext());
        this.OppO0p = textView2;
        textView2.setMaxLines(1);
        this.OppO0p.setTextSize(12.0f);
        this.OppO0p.setGravity(17);
        this.OppO0p.setVisibility(8);
        this.OppO0p.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.b(view);
            }
        });
        this.OppO0p0.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        this.OppO = layoutParams;
        this.OppO0p.setLayoutParams(layoutParams);
        frameLayout.addView(this.OppO0p0);
        frameLayout.addView(this.OppO0p);
        addView(frameLayout);
        setTextColor(ContextCompat.getColor(getContext(), R.color.xn_font_base_color_t40));
        setMoreTextColor(ContextCompat.getColor(getContext(), R.color.xn_base_color));
        setOverScrollMode(2);
        setVerticalScrollBarEnabled(false);
    }

    public final void OppO0O0() {
        int i;
        Layout layout = this.OppO0p0.getLayout();
        if (layout == null) {
            return;
        }
        int lineCount = layout.getLineCount();
        int lineBottom = layout.getLineBottom(0) - layout.getLineTop(0);
        this.OppO0O0 = lineBottom * 2;
        this.OppO0OO = lineCount * lineBottom;
        if (this.OppO0pp == null || (lineCount <= 2 && this.OppO0p0.length() == this.OppO0pp.length())) {
            this.OppO0p.setVisibility(8);
        } else {
            if (this.OppO0pO == State.COLLAPSE) {
                this.OppO0OO = this.OppO0O0;
                float lineWidth = layout.getLineWidth(1);
                int lineEnd = layout.getLineEnd(1);
                float lineWidth2 = layout.getLineWidth(1) / (lineEnd + 1);
                float measuredWidth = ((lineWidth + this.OppO0p.getMeasuredWidth()) + this.OppOO0) - ((getWidth() - getPaddingLeft()) - getPaddingRight());
                if (measuredWidth > 0.0f && lineEnd > (i = (int) (measuredWidth / lineWidth2))) {
                    setTextAndRefresh(((Object) this.OppO0pp.subSequence(0, lineEnd - i)) + "...");
                    return;
                }
                this.OppO.leftMargin = ((int) layout.getLineRight(1)) + this.OppOO0;
                this.OppO.topMargin = (this.OppO0p0.getPaddingTop() + lineBottom) - this.OppOO0;
                this.OppO0p.setText("展开");
                OppO00p(R.drawable.xn_icon_more);
            } else {
                int i2 = this.OppO0OO;
                int i3 = f30OppOOO0;
                if (i2 > i3) {
                    this.OppO0OO = i3;
                }
                int i4 = lineCount - 1;
                if ((layout.getLineWidth(i4) + this.OppO0p.getMeasuredWidth()) - ((getWidth() - getPaddingLeft()) - getPaddingRight()) > 0.0f && this.OppO0pp.length() > 2) {
                    StringBuilder sb = new StringBuilder();
                    CharSequence charSequence = this.OppO0pp;
                    sb.append((Object) charSequence.subSequence(0, charSequence.length() - 2));
                    sb.append("\n");
                    CharSequence charSequence2 = this.OppO0pp;
                    sb.append((Object) charSequence2.subSequence(charSequence2.length() - 2, this.OppO0pp.length()));
                    setTextAndRefresh(sb.toString());
                    return;
                }
                this.OppO0p.setText("收起");
                OppO00p(R.drawable.xn_icon_question);
                this.OppO.leftMargin = ((int) layout.getSecondaryHorizontal(layout.getLineEnd(i4))) + this.OppOO0;
                this.OppO.topMargin = c39.a(2.0f) + ((layout.getHeight() - this.OppO0p0.getPaddingBottom()) - lineBottom);
            }
            this.OppO0p.setVisibility(0);
        }
        getLayoutParams().height = this.OppO0OO;
    }

    public final void b(View view) {
        State state = this.OppO0pO;
        State state2 = State.COLLAPSE;
        if (state == state2) {
            this.OppO0pO = State.EXPAND;
            this.OppO0p0.setMaxLines(Integer.MAX_VALUE);
            this.OppO0p0.setText(this.OppO0pp);
        } else {
            this.OppO0pO = state2;
            this.OppO0p0.setMaxLines(2);
        }
        OppO0O0();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.OppOO0O = (int) motionEvent.getX();
            this.OppOO0p = (int) motionEvent.getY();
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (action != 2) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (Math.abs(x - this.OppOO0O) > Math.abs(y - this.OppOO0p)) {
                getParent().requestDisallowInterceptTouchEvent(canScrollHorizontally(this.OppOO0O - x));
            } else {
                getParent().requestDisallowInterceptTouchEvent(canScrollVertically(this.OppOO0p - y));
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        OppO0O0();
    }

    @Override
    public void onGlobalLayout() {
        OppO0O0();
        this.OppO0p0.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }

    @Override
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(this.OppO00p, this.OppO0OO);
    }

    public void setMoreTextColor(int i) {
        this.OppO0p.setTextColor(i);
    }

    public void setText(CharSequence charSequence) {
        this.OppO0pp = charSequence;
        setTextAndRefresh(charSequence);
    }

    public void setTextAndRefresh(CharSequence charSequence) {
        this.OppO0p0.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.OppO0p0.setText(charSequence);
    }

    public void setTextColor(int i) {
        this.OppO0p0.setTextColor(i);
    }

    public ScrollExpandTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OppO0pO = State.COLLAPSE;
        OppO00p();
    }

    public ScrollExpandTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OppO0pO = State.COLLAPSE;
        OppO00p();
    }

    public final void OppO00p(int i) {
        Drawable drawable = getResources().getDrawable(i);
        int i2 = this.OppO0Op;
        int i3 = i2 / 3;
        drawable.setBounds(i3, 0, i2, i3);
        this.OppO0p.setCompoundDrawables(null, null, drawable, null);
    }
}
