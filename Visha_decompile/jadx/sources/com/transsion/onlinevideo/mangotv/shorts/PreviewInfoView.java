package com.transsion.onlinevideo.mangotv.shorts;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.onlinevideo.R;
import com.transsion.utils.a;
import defpackage.se;

public class PreviewInfoView extends ConstraintLayout {
    public static final String k = se.a().getString(R.string.visha_expand);
    public final Context b;
    public Drawable c;
    public TextView d;
    public TextView e;
    public TextView f;
    public ScrollView g;
    public boolean h;
    public String i;
    public int j;

    public PreviewInfoView(@NonNull Context context) {
        super(context);
        this.h = true;
        this.b = context;
        n();
    }

    private void n() {
        LayoutInflater.from(this.b).inflate(R.layout.layout_short_info, (ViewGroup) this, true);
        this.d = (TextView) findViewById(R.id.tv_title);
        this.e = (TextView) findViewById(R.id.tv_content);
        this.f = (TextView) findViewById(R.id.tv_collapse);
        this.g = (ScrollView) findViewById(R.id.scroll_content);
        this.e.setText("");
        this.e.setMovementMethod(LinkMovementMethod.getInstance());
        this.e.setHighlightColor(0);
        this.g.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.r(view, motionEvent);
            }
        });
        this.e.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.s(view, motionEvent);
            }
        });
        this.j = a.d(this.b, 180.0f);
        o();
    }

    public final SpannableStringBuilder f(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return new SpannableStringBuilder();
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "  ");
        spannableStringBuilder.append(charSequence);
        if (this.c != null) {
            spannableStringBuilder.setSpan(new ImageSpan(this.c, 1), 0, 1, 33);
        }
        return spannableStringBuilder;
    }

    public final void g() {
        TextView textView = this.e;
        textView.measure(View.MeasureSpec.makeMeasureSpec(textView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredHeight = this.e.getMeasuredHeight();
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.g.getLayoutParams();
        int i = this.j;
        if (measuredHeight > i) {
            ((ViewGroup.MarginLayoutParams) layoutParams).height = i;
        } else {
            ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        }
        this.g.setLayoutParams(layoutParams);
    }

    public final void h() {
        if (this.h) {
            return;
        }
        LogUtils.v("collapseContent");
        this.h = true;
        i();
    }

    public final void i() {
        this.e.setText(f(this.i));
        Layout layout = this.e.getLayout();
        if (layout == null || layout.getLineCount() <= 2) {
            return;
        }
        k(layout);
        this.g.scrollTo(0, 0);
    }

    public final void j() {
        this.e.setText(f(this.i));
        this.f.setText(R.string.visha_collapse);
        this.f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.p(view);
            }
        });
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.g.getLayoutParams();
        layoutParams.bottomToBottom = -1;
        layoutParams.bottomToTop = R.id.tv_collapse;
        this.g.setLayoutParams(layoutParams);
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.g();
            }
        });
        requestLayout();
    }

    public final void k(Layout layout) {
        SpannableStringBuilder spannableStringBuilderF = f(m(layout));
        spannableStringBuilderF.append("...");
        this.f.setText(R.string.visha_expand);
        this.f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.q(view);
            }
        });
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.g.getLayoutParams();
        layoutParams.bottomToBottom = 0;
        layoutParams.bottomToTop = -1;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        this.g.setLayoutParams(layoutParams);
        requestLayout();
        this.e.setText(spannableStringBuilderF);
        this.e.setMovementMethod(LinkMovementMethod.getInstance());
        this.e.setHighlightColor(0);
    }

    public final void l() {
        if (this.h) {
            this.h = false;
            j();
        }
    }

    public final String m(Layout layout) {
        int lineStart = layout.getLineStart(1);
        int lineEnd = layout.getLineEnd(1);
        TextPaint paint = this.e.getPaint();
        float width = ((this.e.getWidth() - this.e.getPaddingLeft()) - this.e.getPaddingRight()) - paint.measureText("...    " + k);
        String strSubstring = this.i.substring(lineStart);
        int iBreakText = paint.breakText(strSubstring, true, width, null);
        if (iBreakText < strSubstring.length()) {
            return " " + this.i.substring(0, lineStart + iBreakText).trim();
        }
        return " " + this.i.substring(0, lineEnd).trim();
    }

    public final void o() {
        Drawable drawable = ContextCompat.getDrawable(this.b, R.drawable.ic_short_info_start);
        this.c = drawable;
        if (drawable != null) {
            int iD = a.d(this.b, 16.0f);
            this.c.setBounds(0, 0, iD, iD);
        }
    }

    public final void p(View view) {
        h();
    }

    public final void q(View view) {
        l();
    }

    public final boolean r(View view, MotionEvent motionEvent) {
        ViewParent parent = view.getParent();
        boolean z = true;
        if ((this.h || !this.g.canScrollVertically(1)) && !this.g.canScrollVertically(-1)) {
            z = false;
        }
        parent.requestDisallowInterceptTouchEvent(z);
        return false;
    }

    public final boolean s(View view, MotionEvent motionEvent) {
        ViewParent parent = view.getParent().getParent();
        boolean z = true;
        if ((this.h || !this.g.canScrollVertically(1)) && !this.g.canScrollVertically(-1)) {
            z = false;
        }
        parent.requestDisallowInterceptTouchEvent(z);
        return false;
    }

    public void setContent(String str) {
        this.i = str;
        if (str == null || str.isEmpty()) {
            this.e.setText("");
            this.e.setVisibility(8);
            this.f.setVisibility(8);
        } else {
            this.e.setVisibility(0);
            this.f.setVisibility(0);
            if (this.h) {
                i();
            } else {
                j();
            }
        }
    }

    public void setTitle(String str) {
        if (str != null && str.trim().isEmpty()) {
            str = null;
        }
        TextView textView = this.d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public PreviewInfoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = true;
        this.b = context;
        n();
    }

    public PreviewInfoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = true;
        this.b = context;
        n();
    }
}
