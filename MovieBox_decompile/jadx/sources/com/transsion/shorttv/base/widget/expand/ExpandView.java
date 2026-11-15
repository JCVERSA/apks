package com.transsion.shorttv.base.widget.expand;

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
import com.transsion.shorttv.base.widget.TnTextView;
import kotlin.jvm.functions.Function0;

public class ExpandView extends TnTextView {
    public static final int STATE_EXPAND = 1;
    public static final int STATE_SHRINK = 0;
    private String A;
    private String B;

    private String f50878b;

    private String f50879c;

    private String f50880d;

    private String f50881e;

    private String f50882f;

    private boolean f50883g;

    private boolean f50884h;

    private boolean f50885i;

    private boolean f50886j;

    private boolean f50887k;

    private int f50888l;

    private int f50889m;

    private int f50890n;

    private int f50891o;

    private int f50892p;

    private int f50893q;

    private int f50894r;

    private float f50895s;

    private boolean f50896t;

    private ClickableSpan f50897u;

    private ir.a f50898v;

    private ir.a f50899w;

    private Layout f50900x;

    private CharSequence f50901y;

    private c f50902z;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override
        public void onGlobalLayout() {
            ExpandView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            ExpandView expandView = ExpandView.this;
            expandView.setTitle(expandView.f50901y);
            ExpandView.this.f50887k = true;
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
        String str;
        int i11;
        TextPaint paint = getPaint();
        if (this.f50901y != null) {
            str = "" + ((Object) this.f50901y);
        } else {
            str = "";
        }
        if (this.f50900x == null) {
            this.f50900x = new StaticLayout(str, paint, i10, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        int lineCount = this.f50900x.getLineCount();
        int i12 = this.f50888l;
        if (lineCount <= i12) {
            CharSequence charSequence = this.f50901y;
            if (charSequence == null) {
                charSequence = " ";
            }
            return o(new SpannableStringBuilder(charSequence));
        }
        int i13 = this.f50894r;
        if (i13 != 0) {
            if (i13 != 1 || !this.f50886j) {
                return o(new SpannableStringBuilder(this.f50901y));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f50901y);
            spannableStringBuilder.append((CharSequence) this.f50882f).append((CharSequence) this.f50880d);
            int length = (spannableStringBuilder.length() - this.f50882f.length()) - this.f50880d.length();
            int length2 = spannableStringBuilder.length();
            i11 = length >= 0 ? length : 0;
            spannableStringBuilder.setSpan(this.f50897u, i11, length2, 33);
            spannableStringBuilder.setSpan(this.f50898v, i11, length2, 33);
            return o(spannableStringBuilder);
        }
        int i14 = i(str, paint, this.f50900x.getLineStart(this.f50888l - 1), this.f50900x.getLineEnd(i12 - 1), i10);
        CharSequence charSequence2 = this.f50901y;
        if (charSequence2 != null && charSequence2.length() <= i14) {
            i14 = this.f50901y.length() - 1;
        }
        CharSequence charSequence3 = this.f50901y;
        if (charSequence3 == null || i14 <= 0) {
            return charSequence3;
        }
        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence3.subSequence(0, i14)).append((CharSequence) this.f50878b);
        if (this.f50885i) {
            spannableStringBuilderAppend.append((CharSequence) this.f50881e);
            spannableStringBuilderAppend.append((CharSequence) this.f50879c);
            int length3 = (spannableStringBuilderAppend.length() - this.f50881e.length()) - this.f50879c.length();
            int length4 = spannableStringBuilderAppend.length();
            i11 = length3 >= 0 ? length3 : 0;
            spannableStringBuilderAppend.setSpan(this.f50897u, i11, length4, 33);
            spannableStringBuilderAppend.setSpan(this.f50899w, i11, length4, 33);
        }
        return o(spannableStringBuilderAppend);
    }

    private int i(String str, TextPaint textPaint, int i10, int i11, int i12) {
        String str2;
        ir.a aVar = this.f50899w;
        String str3 = this.f50878b;
        if (this.f50885i) {
            str2 = this.f50879c + this.f50881e;
        } else {
            str2 = "";
        }
        return textPaint.breakText(str, i10, i11, true, i12 - aVar.e(textPaint, str3, str2), null) + i10;
    }

    private void j() {
        if (this.f50895s == 0.0f) {
            this.f50895s = getTextSize();
        }
        boolean z10 = getLayoutDirection() == 1;
        this.f50899w = new ir.a(getContext(), this.f50896t ? R$mipmap.short_tv_ic_down_more : -111, this.f50889m, this.f50891o, this.f50895s, 6, z10, 8);
        this.f50898v = new ir.a(getContext(), this.f50896t ? R$mipmap.short_tv_ic_up_hide : -111, this.f50890n, this.f50892p, this.f50895s, 6, z10, 8);
        setMovementMethod(new LinkMovementMethod());
        if (TextUtils.isEmpty(this.f50878b)) {
            this.f50878b = "...";
        }
        if (TextUtils.isEmpty(this.f50879c)) {
            this.f50879c = getResources().getString(R$string.short_tv_str_more);
        }
        if (TextUtils.isEmpty(this.f50880d)) {
            this.f50880d = getResources().getString(R$string.short_tv_str_hide);
        }
        if (this.f50881e == null) {
            this.f50881e = "  ";
        }
        if (this.f50882f == null) {
            this.f50882f = "  ";
        }
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f62603a.l(view);
            }
        });
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void k(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            j();
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExpandView);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.ExpandView_pop_hint_text_size) {
                this.f50895s = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
            } else if (index == R$styleable.ExpandView_pop_reverse_Lines) {
                this.f50888l = typedArrayObtainStyledAttributes.getInteger(index, 1);
            } else if (index == R$styleable.ExpandView_pop_ellipsis) {
                this.f50878b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_expand_hint) {
                this.f50879c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint) {
                this.f50880d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_toggle_enabled) {
                this.f50883g = typedArrayObtainStyledAttributes.getBoolean(index, this.f50883g);
            } else if (index == R$styleable.ExpandView_pop_show_expand_hint) {
                this.f50885i = typedArrayObtainStyledAttributes.getBoolean(index, this.f50885i);
            } else if (index == R$styleable.ExpandView_pop_show_shrink_hint) {
                this.f50886j = typedArrayObtainStyledAttributes.getBoolean(index, this.f50886j);
            } else if (index == R$styleable.ExpandView_pop_expand_hint_color) {
                this.f50889m = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint_color) {
                this.f50890n = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_expand_bg_Color) {
                this.f50891o = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_shrink_bg_color) {
                this.f50892p = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_Init_state) {
                this.f50894r = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_expand_gap) {
                this.f50881e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_collapse_gap) {
                this.f50882f = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_hash_tag_color) {
                this.f50893q = typedArrayObtainStyledAttributes.getInteger(index, this.f50893q);
            } else if (index == R$styleable.ExpandView_pop_show_hint_icon) {
                this.f50896t = typedArrayObtainStyledAttributes.getBoolean(index, true);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        j();
    }

    public void l(View view) {
        p();
    }

    public void m(CharSequence charSequence) {
        if (this.f50887k) {
            setTitle(charSequence);
        }
    }

    public CharSequence n(final CharSequence charSequence) {
        if (!this.f50884h) {
            return charSequence;
        }
        if (!TextUtils.equals(charSequence, this.f50901y)) {
            this.f50900x = null;
        }
        this.f50901y = charSequence;
        int layoutWidth = getLayoutWidth();
        if (layoutWidth > 0) {
            return this.f50901y == null ? charSequence : h(layoutWidth);
        }
        postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f62604a.m(charSequence);
            }
        }, 200L);
        return null;
    }

    private CharSequence o(SpannableStringBuilder spannableStringBuilder) {
        return spannableStringBuilder;
    }

    private void p() {
        if (getText().toString().contains(this.f50879c) || getText().toString().contains(this.f50880d)) {
            int i10 = this.f50894r;
            if (i10 == 0) {
                this.f50894r = 1;
                c cVar = this.f50902z;
                if (cVar != null) {
                    cVar.a(this);
                }
            } else if (i10 == 1) {
                this.f50894r = 0;
                c cVar2 = this.f50902z;
                if (cVar2 != null) {
                    cVar2.b(this);
                }
            }
            setTitle(this.f50901y);
        }
    }

    public void addLegacyHashTag(String str, String str2) {
        this.B = str;
        this.A = str2;
    }

    @Override
    public void changeLocal() {
        this.f50879c = getResources().getString(R$string.short_tv_str_more);
        this.f50880d = getResources().getString(R$string.short_tv_str_hide);
        super.changeLocal();
    }

    public int getExpandState() {
        return this.f50894r;
    }

    public boolean isOutLines() {
        Layout layout = this.f50900x;
        return layout != null && layout.getLineCount() > this.f50888l;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void reset() {
        this.f50894r = 0;
        c cVar = this.f50902z;
        if (cVar != null) {
            cVar.b(this);
        }
        setTitle(this.f50901y);
    }

    public void setCollapseEnable(boolean z10) {
        this.f50884h = z10;
    }

    public void setExpandListener(c cVar) {
        this.f50902z = cVar;
    }

    public void setOnClickHashTagListener(b bVar) {
    }

    public void setTitle(final CharSequence charSequence) {
        setTextAction(new Function0() {
            @Override
            public final Object invoke() {
                return this.f62601a.n(charSequence);
            }
        });
    }

    public ExpandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f50881e = "  ";
        this.f50882f = "  ";
        this.f50883g = false;
        this.f50884h = true;
        this.f50885i = true;
        this.f50886j = true;
        this.f50887k = false;
        this.f50888l = 1;
        this.f50889m = -1711276033;
        this.f50890n = -1711276033;
        this.f50891o = 872415231;
        this.f50892p = 872415231;
        this.f50893q = -1;
        this.f50894r = 0;
        this.f50896t = true;
        k(context, attributeSet);
    }

    public ExpandView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f50881e = "  ";
        this.f50882f = "  ";
        this.f50883g = false;
        this.f50884h = true;
        this.f50885i = true;
        this.f50886j = true;
        this.f50887k = false;
        this.f50888l = 1;
        this.f50889m = -1711276033;
        this.f50890n = -1711276033;
        this.f50891o = 872415231;
        this.f50892p = 872415231;
        this.f50893q = -1;
        this.f50894r = 0;
        this.f50896t = true;
        k(context, attributeSet);
    }
}
