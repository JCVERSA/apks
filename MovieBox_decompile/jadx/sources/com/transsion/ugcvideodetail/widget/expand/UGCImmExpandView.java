package com.transsion.ugcvideodetail.widget.expand;

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

public class UGCImmExpandView extends TnTextView {
    public static final int STATE_EXPAND = 1;
    public static final int STATE_SHRINK = 0;
    private String A;
    private boolean B;

    private String f54485b;

    private String f54486c;

    private String f54487d;

    private String f54488e;

    private String f54489f;

    private boolean f54490g;

    private boolean f54491h;

    private boolean f54492i;

    private boolean f54493j;

    private boolean f54494k;

    private int f54495l;

    private int f54496m;

    private int f54497n;

    private int f54498o;

    private int f54499p;

    private int f54500q;

    private int f54501r;

    private float f54502s;

    private boolean f54503t;

    private ClickableSpan f54504u;

    private mu.a f54505v;

    private mu.a f54506w;

    private Layout f54507x;

    private CharSequence f54508y;

    private String f54509z;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override
        public void onGlobalLayout() {
            UGCImmExpandView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            UGCImmExpandView uGCImmExpandView = UGCImmExpandView.this;
            uGCImmExpandView.l(uGCImmExpandView.f54508y);
            UGCImmExpandView.this.f54494k = true;
        }
    }

    public interface b {
    }

    public interface c {
    }

    public UGCImmExpandView(Context context) {
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
        if (this.f54508y != null) {
            str = "" + ((Object) this.f54508y);
        }
        if (this.f54507x == null) {
            this.f54507x = new StaticLayout(str, paint, i10, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        int lineCount = this.f54507x.getLineCount();
        int i12 = this.f54495l;
        if (lineCount <= i12) {
            CharSequence charSequence = this.f54508y;
            if (charSequence == null) {
                charSequence = " ";
            }
            return n(new SpannableStringBuilder(charSequence));
        }
        int i13 = this.f54501r;
        if (i13 != 0) {
            if (i13 != 1 || !this.f54493j) {
                return n(new SpannableStringBuilder(this.f54508y));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f54508y);
            spannableStringBuilder.append((CharSequence) this.f54489f).append((CharSequence) this.f54487d);
            int length = (spannableStringBuilder.length() - this.f54489f.length()) - this.f54487d.length();
            int length2 = spannableStringBuilder.length();
            i11 = length >= 0 ? length : 0;
            spannableStringBuilder.setSpan(this.f54504u, i11, length2, 33);
            spannableStringBuilder.setSpan(this.f54505v, i11, length2, 33);
            return n(spannableStringBuilder);
        }
        int lineEnd = this.f54507x.getLineEnd(i12 - 1);
        this.f54507x.getLineStart(this.f54495l - 1);
        CharSequence charSequence2 = this.f54508y;
        if (charSequence2 != null && charSequence2.length() <= lineEnd) {
            lineEnd = this.f54508y.length() - 1;
        }
        CharSequence charSequence3 = this.f54508y;
        if (charSequence3 == null || lineEnd <= 0) {
            return charSequence3;
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder((charSequence3.subSequence(0, Math.max(0, lineEnd - 3)).toString() + this.f54485b).replace("\n\n", "\n"));
        if (this.f54492i) {
            spannableStringBuilder2.append((CharSequence) this.f54488e);
            spannableStringBuilder2.append((CharSequence) this.f54486c);
            int length3 = (spannableStringBuilder2.length() - this.f54488e.length()) - this.f54486c.length();
            int length4 = spannableStringBuilder2.length();
            i11 = length3 >= 0 ? length3 : 0;
            spannableStringBuilder2.setSpan(this.f54504u, i11, length4, 33);
            spannableStringBuilder2.setSpan(this.f54506w, i11, length4, 33);
        }
        return n(spannableStringBuilder2);
    }

    private void i() {
        if (this.f54502s == 0.0f) {
            this.f54502s = getTextSize();
        }
        boolean z10 = getLayoutDirection() == 1;
        this.f54506w = new mu.a(getContext(), this.f54503t ? R$mipmap.short_tv_ic_down_more : -111, this.f54496m, this.f54498o, this.f54502s, 0, z10);
        this.f54505v = new mu.a(getContext(), this.f54503t ? R$mipmap.short_tv_ic_up_hide : -111, this.f54497n, this.f54499p, this.f54502s, 0, z10);
        setMovementMethod(new LinkMovementMethod());
        if (TextUtils.isEmpty(this.f54485b)) {
            this.f54485b = "...";
        }
        if (TextUtils.isEmpty(this.f54486c)) {
            this.f54486c = getResources().getString(R$string.short_tv_str_more);
        }
        if (TextUtils.isEmpty(this.f54487d)) {
            this.f54487d = "\n" + getResources().getString(R$string.short_tv_str_hide);
        }
        if (this.f54488e == null) {
            this.f54488e = "  ";
        }
        if (this.f54489f == null) {
            this.f54489f = "  ";
        }
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f66719a.k(view);
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
                this.f54502s = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
            } else if (index == R$styleable.ExpandView_pop_reverse_Lines) {
                this.f54495l = typedArrayObtainStyledAttributes.getInteger(index, 1);
            } else if (index == R$styleable.ExpandView_pop_ellipsis) {
                this.f54485b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_expand_hint) {
                this.f54486c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint) {
                this.f54487d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_toggle_enabled) {
                this.f54490g = typedArrayObtainStyledAttributes.getBoolean(index, this.f54490g);
            } else if (index == R$styleable.ExpandView_pop_show_expand_hint) {
                this.f54492i = typedArrayObtainStyledAttributes.getBoolean(index, this.f54492i);
            } else if (index == R$styleable.ExpandView_pop_show_shrink_hint) {
                this.f54493j = typedArrayObtainStyledAttributes.getBoolean(index, this.f54493j);
            } else if (index == R$styleable.ExpandView_pop_expand_hint_color) {
                this.f54496m = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint_color) {
                this.f54497n = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_expand_bg_Color) {
                this.f54498o = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_shrink_bg_color) {
                this.f54499p = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_Init_state) {
                this.f54501r = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_expand_gap) {
                this.f54488e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_collapse_gap) {
                this.f54489f = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_hash_tag_color) {
                this.f54500q = typedArrayObtainStyledAttributes.getInteger(index, this.f54500q);
            } else if (index == R$styleable.ExpandView_pop_show_hint_icon) {
                this.f54503t = typedArrayObtainStyledAttributes.getBoolean(index, true);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        i();
    }

    public void k(View view) {
        o();
    }

    public CharSequence m(final CharSequence charSequence) {
        if (!this.f54491h) {
            return charSequence;
        }
        if (!TextUtils.equals(charSequence, this.f54508y)) {
            this.f54507x = null;
        }
        this.f54508y = charSequence;
        int layoutWidth = getLayoutWidth();
        if (layoutWidth > 0) {
            this.B = true;
            return this.f54508y == null ? charSequence : h(layoutWidth);
        }
        if (this.f54494k) {
            postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f66720a.l(charSequence);
                }
            }, 100L);
        }
        return null;
    }

    private CharSequence n(SpannableStringBuilder spannableStringBuilder) {
        return spannableStringBuilder;
    }

    private void o() {
        if (getText().toString().contains(this.f54486c) || getText().toString().contains(this.f54487d)) {
            int i10 = this.f54501r;
            if (i10 == 0) {
                this.f54501r = 1;
            } else if (i10 == 1) {
                this.f54501r = 0;
            }
            l(this.f54508y);
        }
    }

    public void addLegacyHashTag(String str, String str2) {
        this.A = str;
        this.f54509z = str2;
    }

    @Override
    public void changeLocal() {
        this.f54486c = getResources().getString(R$string.short_tv_str_more);
        this.f54487d = getResources().getString(R$string.short_tv_str_hide);
        super.changeLocal();
    }

    public int getExpandState() {
        return this.f54501r;
    }

    public boolean isOutLines() {
        Layout layout = this.f54507x;
        return layout != null && layout.getLineCount() > this.f54495l;
    }

    public boolean isSetTitleSuccess() {
        return this.B;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void reset() {
        this.f54501r = 0;
        l(this.f54508y);
    }

    public void setCollapseEnable(boolean z10) {
        this.f54491h = z10;
    }

    public void setExpandListener(c cVar) {
    }

    public void setOnClickHashTagListener(b bVar) {
    }

    public void l(final CharSequence charSequence) {
        setTextAction(new Function0() {
            @Override
            public final Object invoke() {
                return this.f66717a.m(charSequence);
            }
        });
    }

    public UGCImmExpandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54488e = "  ";
        this.f54489f = "  ";
        this.f54490g = false;
        this.f54491h = true;
        this.f54492i = true;
        this.f54493j = true;
        this.f54494k = false;
        this.f54495l = 1;
        this.f54496m = -1711276033;
        this.f54497n = -1711276033;
        this.f54498o = 0;
        this.f54499p = 0;
        this.f54500q = -1;
        this.f54501r = 0;
        this.f54503t = true;
        this.B = false;
        j(context, attributeSet);
    }

    public UGCImmExpandView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f54488e = "  ";
        this.f54489f = "  ";
        this.f54490g = false;
        this.f54491h = true;
        this.f54492i = true;
        this.f54493j = true;
        this.f54494k = false;
        this.f54495l = 1;
        this.f54496m = -1711276033;
        this.f54497n = -1711276033;
        this.f54498o = 0;
        this.f54499p = 0;
        this.f54500q = -1;
        this.f54501r = 0;
        this.f54503t = true;
        this.B = false;
        j(context, attributeSet);
    }
}
