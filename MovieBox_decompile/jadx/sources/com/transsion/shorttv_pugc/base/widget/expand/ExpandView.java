package com.transsion.shorttv_pugc.base.widget.expand;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.R$styleable;
import com.transsion.shorttv_pugc.base.widget.TnTextView;
import kotlin.jvm.functions.Function0;

public class ExpandView extends TnTextView {
    public static final int STATE_EXPAND = 1;
    public static final int STATE_SHRINK = 0;
    private String A;
    private String B;
    private boolean C;

    private String f51860b;

    private String f51861c;

    private String f51862d;

    private String f51863e;

    private String f51864f;

    private boolean f51865g;

    private boolean f51866h;

    private boolean f51867i;

    private boolean f51868j;

    private boolean f51869k;

    private int f51870l;

    private int f51871m;

    private int f51872n;

    private int f51873o;

    private int f51874p;

    private int f51875q;

    private int f51876r;

    private float f51877s;

    private boolean f51878t;

    private ClickableSpan f51879u;

    private ms.a f51880v;

    private ms.a f51881w;

    private Layout f51882x;

    private CharSequence f51883y;

    private c f51884z;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override
        public void onGlobalLayout() {
            ExpandView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            ExpandView expandView = ExpandView.this;
            expandView.l(expandView.f51883y);
            ExpandView.this.f51869k = true;
        }
    }

    public interface b {
    }

    public interface c {
        void a(ExpandView expandView);

        void b(ExpandView expandView);
    }

    public ExpandView(Context context) {
        this(context, null);
    }

    private int getLayoutWidth() {
        Layout layout = getLayout();
        int width = layout != null ? layout.getWidth() : 0;
        return (width > 0 || getWidth() == 0) ? width : (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private CharSequence h(int i10) {
        int i11;
        TextPaint paint = getPaint();
        String str = "";
        if (this.f51883y != null) {
            str = "" + ((Object) this.f51883y);
        }
        if (this.f51882x == null) {
            this.f51882x = new StaticLayout(str, paint, i10, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        int lineCount = this.f51882x.getLineCount();
        int i12 = this.f51870l;
        if (lineCount <= i12) {
            CharSequence charSequence = this.f51883y;
            if (charSequence == null) {
                charSequence = " ";
            }
            return n(new SpannableStringBuilder(charSequence));
        }
        int i13 = this.f51876r;
        if (i13 != 0) {
            if (i13 != 1 || !this.f51868j) {
                return n(new SpannableStringBuilder(this.f51883y));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f51883y);
            spannableStringBuilder.append((CharSequence) this.f51864f).append((CharSequence) this.f51862d);
            int length = (spannableStringBuilder.length() - this.f51864f.length()) - this.f51862d.length();
            int length2 = spannableStringBuilder.length();
            i11 = length >= 0 ? length : 0;
            spannableStringBuilder.setSpan(this.f51879u, i11, length2, 33);
            spannableStringBuilder.setSpan(this.f51880v, i11, length2, 33);
            return n(spannableStringBuilder);
        }
        int lineEnd = this.f51882x.getLineEnd(i12 - 1);
        this.f51882x.getLineStart(this.f51870l - 1);
        CharSequence charSequence2 = this.f51883y;
        if (charSequence2 != null && charSequence2.length() <= lineEnd) {
            lineEnd = this.f51883y.length() - 1;
        }
        CharSequence charSequence3 = this.f51883y;
        if (charSequence3 == null || lineEnd <= 0) {
            return charSequence3;
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder((charSequence3.subSequence(0, Math.max(0, lineEnd - 3)).toString() + this.f51860b).replace("\n\n", "\n"));
        if (this.f51867i) {
            spannableStringBuilder2.append((CharSequence) this.f51863e);
            spannableStringBuilder2.append((CharSequence) this.f51861c);
            int length3 = (spannableStringBuilder2.length() - this.f51863e.length()) - this.f51861c.length();
            int length4 = spannableStringBuilder2.length();
            i11 = length3 >= 0 ? length3 : 0;
            spannableStringBuilder2.setSpan(this.f51879u, i11, length4, 33);
            spannableStringBuilder2.setSpan(this.f51881w, i11, length4, 33);
        }
        return n(spannableStringBuilder2);
    }

    private void i() {
        if (this.f51877s == 0.0f) {
            this.f51877s = getTextSize();
        }
        boolean z10 = getLayoutDirection() == 1;
        this.f51881w = new ms.a(getContext(), this.f51878t ? R$mipmap.short_tv_ic_down_more : -111, this.f51871m, this.f51873o, this.f51877s, 0, z10);
        this.f51880v = new ms.a(getContext(), this.f51878t ? R$mipmap.short_tv_ic_up_hide : -111, this.f51872n, this.f51874p, this.f51877s, 0, z10);
        setMovementMethod(new LinkMovementMethod());
        if (TextUtils.isEmpty(this.f51860b)) {
            this.f51860b = "...";
        }
        if (TextUtils.isEmpty(this.f51861c)) {
            this.f51861c = getResources().getString(R$string.short_tv_str_more);
        }
        if (TextUtils.isEmpty(this.f51862d)) {
            this.f51862d = "\n" + getResources().getString(R$string.short_tv_str_hide);
        }
        if (this.f51863e == null) {
            this.f51863e = "  ";
        }
        if (this.f51864f == null) {
            this.f51864f = "  ";
        }
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f66700a.k(view);
            }
        });
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void j(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            i();
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExpandView);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.ExpandView_pop_hint_text_size) {
                this.f51877s = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
            } else if (index == R$styleable.ExpandView_pop_reverse_Lines) {
                this.f51870l = typedArrayObtainStyledAttributes.getInteger(index, 1);
            } else if (index == R$styleable.ExpandView_pop_ellipsis) {
                this.f51860b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_expand_hint) {
                this.f51861c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint) {
                this.f51862d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_toggle_enabled) {
                this.f51865g = typedArrayObtainStyledAttributes.getBoolean(index, this.f51865g);
            } else if (index == R$styleable.ExpandView_pop_show_expand_hint) {
                this.f51867i = typedArrayObtainStyledAttributes.getBoolean(index, this.f51867i);
            } else if (index == R$styleable.ExpandView_pop_show_shrink_hint) {
                this.f51868j = typedArrayObtainStyledAttributes.getBoolean(index, this.f51868j);
            } else if (index == R$styleable.ExpandView_pop_expand_hint_color) {
                this.f51871m = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint_color) {
                this.f51872n = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_expand_bg_Color) {
                this.f51873o = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_shrink_bg_color) {
                this.f51874p = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_Init_state) {
                this.f51876r = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_expand_gap) {
                this.f51863e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_collapse_gap) {
                this.f51864f = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_hash_tag_color) {
                this.f51875q = typedArrayObtainStyledAttributes.getInteger(index, this.f51875q);
            } else if (index == R$styleable.ExpandView_pop_show_hint_icon) {
                this.f51878t = typedArrayObtainStyledAttributes.getBoolean(index, true);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        i();
    }

    public void k(View view) {
        o();
    }

    public CharSequence m(final CharSequence charSequence) {
        if (!this.f51866h) {
            return charSequence;
        }
        if (!TextUtils.equals(charSequence, this.f51883y)) {
            this.f51882x = null;
        }
        this.f51883y = charSequence;
        int layoutWidth = getLayoutWidth();
        if (layoutWidth > 0) {
            this.C = true;
            return this.f51883y == null ? charSequence : h(layoutWidth);
        }
        if (this.f51869k) {
            postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f66703a.l(charSequence);
                }
            }, 100L);
        }
        return null;
    }

    private CharSequence n(SpannableStringBuilder spannableStringBuilder) {
        return spannableStringBuilder;
    }

    private void o() {
        if (getText().toString().contains(this.f51861c) || getText().toString().contains(this.f51862d)) {
            int i10 = this.f51876r;
            if (i10 == 0) {
                this.f51876r = 1;
                c cVar = this.f51884z;
                if (cVar != null) {
                    cVar.a(this);
                }
            } else if (i10 == 1) {
                this.f51876r = 0;
                c cVar2 = this.f51884z;
                if (cVar2 != null) {
                    cVar2.b(this);
                }
            }
            l(this.f51883y);
        }
    }

    public void addLegacyHashTag(String str, String str2) {
        this.B = str;
        this.A = str2;
    }

    @Override
    public void changeLocal() {
        this.f51861c = getResources().getString(R$string.short_tv_str_more);
        this.f51862d = getResources().getString(R$string.short_tv_str_hide);
        super.changeLocal();
    }

    public int getExpandState() {
        return this.f51876r;
    }

    public boolean isOutLines() {
        Layout layout = this.f51882x;
        return layout != null && layout.getLineCount() > this.f51870l;
    }

    public boolean isSetTitleSuccess() {
        return this.C;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void reset() {
        this.f51876r = 0;
        c cVar = this.f51884z;
        if (cVar != null) {
            cVar.b(this);
        }
        l(this.f51883y);
    }

    public void setCollapseEnable(boolean z10) {
        this.f51866h = z10;
    }

    public void setExpandListener(c cVar) {
        this.f51884z = cVar;
    }

    public void setOnClickHashTagListener(b bVar) {
    }

    public void l(final CharSequence charSequence) {
        setTextAction(new Function0() {
            @Override
            public final Object invoke() {
                return this.f66701a.m(charSequence);
            }
        });
    }

    public ExpandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51863e = "  ";
        this.f51864f = "  ";
        this.f51865g = false;
        this.f51866h = true;
        this.f51867i = true;
        this.f51868j = true;
        this.f51869k = false;
        this.f51870l = 1;
        this.f51871m = -1711276033;
        this.f51872n = -1711276033;
        this.f51873o = 0;
        this.f51874p = 0;
        this.f51875q = -1;
        this.f51876r = 0;
        this.f51878t = true;
        this.C = false;
        j(context, attributeSet);
    }

    public ExpandView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f51863e = "  ";
        this.f51864f = "  ";
        this.f51865g = false;
        this.f51866h = true;
        this.f51867i = true;
        this.f51868j = true;
        this.f51869k = false;
        this.f51870l = 1;
        this.f51871m = -1711276033;
        this.f51872n = -1711276033;
        this.f51873o = 0;
        this.f51874p = 0;
        this.f51875q = -1;
        this.f51876r = 0;
        this.f51878t = true;
        this.C = false;
        j(context, attributeSet);
    }
}
