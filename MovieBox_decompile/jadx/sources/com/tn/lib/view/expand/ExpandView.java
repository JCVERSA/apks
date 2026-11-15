package com.tn.lib.view.expand;

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
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.R$styleable;
import com.tn.lib.widget.TnTextView;
import kotlin.jvm.functions.Function0;

public class ExpandView extends TnTextView {
    public static final int STATE_EXPAND = 1;
    public static final int STATE_SHRINK = 0;
    private String A;
    private String B;

    private String f40281b;

    private String f40282c;

    private String f40283d;

    private String f40284e;

    private String f40285f;

    private boolean f40286g;

    private boolean f40287h;

    private boolean f40288i;

    private boolean f40289j;

    private boolean f40290k;

    private int f40291l;

    private int f40292m;

    private int f40293n;

    private int f40294o;

    private int f40295p;

    private int f40296q;

    private int f40297r;

    private float f40298s;

    private boolean f40299t;

    private ClickableSpan f40300u;

    private bh.a f40301v;

    private bh.a f40302w;

    private Layout f40303x;

    private CharSequence f40304y;

    private c f40305z;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override
        public void onGlobalLayout() {
            ExpandView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            ExpandView expandView = ExpandView.this;
            expandView.m(expandView.f40304y);
            ExpandView.this.f40290k = true;
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
        if (this.f40304y != null) {
            str = "" + ((Object) this.f40304y);
        } else {
            str = "";
        }
        if (this.f40303x == null) {
            this.f40303x = new StaticLayout(str, paint, i10, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        int lineCount = this.f40303x.getLineCount();
        int i12 = this.f40291l;
        if (lineCount <= i12) {
            CharSequence charSequence = this.f40304y;
            if (charSequence == null) {
                charSequence = " ";
            }
            return o(new SpannableStringBuilder(charSequence));
        }
        int i13 = this.f40297r;
        if (i13 != 0) {
            if (i13 != 1 || !this.f40289j) {
                return o(new SpannableStringBuilder(this.f40304y));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f40304y);
            spannableStringBuilder.append((CharSequence) this.f40285f).append((CharSequence) this.f40283d);
            int length = (spannableStringBuilder.length() - this.f40285f.length()) - this.f40283d.length();
            int length2 = spannableStringBuilder.length();
            i11 = length >= 0 ? length : 0;
            spannableStringBuilder.setSpan(this.f40300u, i11, length2, 33);
            spannableStringBuilder.setSpan(this.f40301v, i11, length2, 33);
            return o(spannableStringBuilder);
        }
        int i14 = i(str, paint, this.f40303x.getLineStart(this.f40291l - 1), this.f40303x.getLineEnd(i12 - 1), i10);
        CharSequence charSequence2 = this.f40304y;
        if (charSequence2 != null && charSequence2.length() <= i14) {
            i14 = this.f40304y.length() - 1;
        }
        CharSequence charSequence3 = this.f40304y;
        if (charSequence3 == null || i14 <= 0) {
            return charSequence3;
        }
        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence3.subSequence(0, i14)).append((CharSequence) this.f40281b);
        if (this.f40288i) {
            spannableStringBuilderAppend.append((CharSequence) this.f40284e);
            spannableStringBuilderAppend.append((CharSequence) this.f40282c);
            int length3 = (spannableStringBuilderAppend.length() - this.f40284e.length()) - this.f40282c.length();
            int length4 = spannableStringBuilderAppend.length();
            i11 = length3 >= 0 ? length3 : 0;
            spannableStringBuilderAppend.setSpan(this.f40300u, i11, length4, 33);
            spannableStringBuilderAppend.setSpan(this.f40302w, i11, length4, 33);
        }
        return o(spannableStringBuilderAppend);
    }

    private int i(String str, TextPaint textPaint, int i10, int i11, int i12) {
        String str2;
        bh.a aVar = this.f40302w;
        String str3 = this.f40281b;
        if (this.f40288i) {
            str2 = this.f40282c + this.f40284e;
        } else {
            str2 = "";
        }
        return textPaint.breakText(str, i10, i11, true, i12 - aVar.e(textPaint, str3, str2), null) + i10;
    }

    private void j() {
        if (this.f40298s == 0.0f) {
            this.f40298s = getTextSize();
        }
        boolean z10 = getLayoutDirection() == 1;
        this.f40302w = new bh.a(getContext(), this.f40299t ? R$mipmap.info_player_ic_expand : -111, this.f40292m, this.f40294o, this.f40298s, 5, z10);
        this.f40301v = new bh.a(getContext(), this.f40299t ? R$mipmap.info_player_ic_collapse : -111, this.f40293n, this.f40295p, this.f40298s, 5, z10);
        setMovementMethod(new LinkMovementMethod());
        if (TextUtils.isEmpty(this.f40281b)) {
            this.f40281b = "...";
        }
        if (TextUtils.isEmpty(this.f40282c)) {
            this.f40282c = getResources().getString(R$string.player_more);
        }
        if (TextUtils.isEmpty(this.f40283d)) {
            this.f40283d = getResources().getString(R$string.player_hide);
        }
        if (this.f40284e == null) {
            this.f40284e = "  ";
        }
        if (this.f40285f == null) {
            this.f40285f = "  ";
        }
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f15813a.l(view);
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
                this.f40298s = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
            } else if (index == R$styleable.ExpandView_pop_reverse_Lines) {
                this.f40291l = typedArrayObtainStyledAttributes.getInteger(index, 1);
            } else if (index == R$styleable.ExpandView_pop_ellipsis) {
                this.f40281b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_expand_hint) {
                this.f40282c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint) {
                this.f40283d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_toggle_enabled) {
                this.f40286g = typedArrayObtainStyledAttributes.getBoolean(index, this.f40286g);
            } else if (index == R$styleable.ExpandView_pop_show_expand_hint) {
                this.f40288i = typedArrayObtainStyledAttributes.getBoolean(index, this.f40288i);
            } else if (index == R$styleable.ExpandView_pop_show_shrink_hint) {
                this.f40289j = typedArrayObtainStyledAttributes.getBoolean(index, this.f40289j);
            } else if (index == R$styleable.ExpandView_pop_expand_hint_color) {
                this.f40292m = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint_color) {
                this.f40293n = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_expand_bg_Color) {
                this.f40294o = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_shrink_bg_color) {
                this.f40295p = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_Init_state) {
                this.f40297r = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_expand_gap) {
                this.f40284e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_collapse_gap) {
                this.f40285f = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_hash_tag_color) {
                this.f40296q = typedArrayObtainStyledAttributes.getInteger(index, this.f40296q);
            } else if (index == R$styleable.ExpandView_pop_show_hint_icon) {
                this.f40299t = typedArrayObtainStyledAttributes.getBoolean(index, true);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        j();
    }

    public void l(View view) {
        p();
    }

    public CharSequence n(final CharSequence charSequence) {
        if (!this.f40287h) {
            return charSequence;
        }
        if (!TextUtils.equals(charSequence, this.f40304y)) {
            this.f40303x = null;
        }
        this.f40304y = charSequence;
        int layoutWidth = getLayoutWidth();
        if (layoutWidth > 0) {
            return this.f40304y == null ? charSequence : h(layoutWidth);
        }
        if (this.f40290k) {
            postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f15814a.m(charSequence);
                }
            }, 100L);
        }
        return null;
    }

    private void p() {
        if (getText().toString().contains(this.f40282c) || getText().toString().contains(this.f40283d)) {
            int i10 = this.f40297r;
            if (i10 == 0) {
                this.f40297r = 1;
                c cVar = this.f40305z;
                if (cVar != null) {
                    cVar.b(this);
                }
            } else if (i10 == 1) {
                this.f40297r = 0;
                c cVar2 = this.f40305z;
                if (cVar2 != null) {
                    cVar2.a(this);
                }
            }
            m(this.f40304y);
        }
    }

    public void addLegacyHashTag(String str, String str2) {
        this.B = str;
        this.A = str2;
    }

    @Override
    public void changeLocal() {
        this.f40282c = getResources().getString(R$string.player_more);
        this.f40283d = getResources().getString(R$string.player_hide);
        super.changeLocal();
    }

    public int getExpandState() {
        return this.f40297r;
    }

    public boolean isOutLines() {
        Layout layout = this.f40303x;
        return layout != null && layout.getLineCount() > this.f40291l;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void reset() {
        this.f40297r = 0;
        c cVar = this.f40305z;
        if (cVar != null) {
            cVar.a(this);
        }
        m(this.f40304y);
    }

    public void setCollapseEnable(boolean z10) {
        this.f40287h = z10;
    }

    public void setExpandListener(c cVar) {
        this.f40305z = cVar;
    }

    public void m(final CharSequence charSequence) {
        setTextAction(new Function0() {
            @Override
            public final Object invoke() {
                return this.f15811a.n(charSequence);
            }
        });
    }

    public ExpandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40284e = "  ";
        this.f40285f = "  ";
        this.f40286g = false;
        this.f40287h = true;
        this.f40288i = true;
        this.f40289j = true;
        this.f40290k = false;
        this.f40291l = 1;
        this.f40292m = -1711276033;
        this.f40293n = -1711276033;
        this.f40294o = 872415231;
        this.f40295p = 872415231;
        this.f40296q = -1;
        this.f40297r = 0;
        this.f40299t = true;
        k(context, attributeSet);
    }

    public ExpandView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40284e = "  ";
        this.f40285f = "  ";
        this.f40286g = false;
        this.f40287h = true;
        this.f40288i = true;
        this.f40289j = true;
        this.f40290k = false;
        this.f40291l = 1;
        this.f40292m = -1711276033;
        this.f40293n = -1711276033;
        this.f40294o = 872415231;
        this.f40295p = 872415231;
        this.f40296q = -1;
        this.f40297r = 0;
        this.f40299t = true;
        k(context, attributeSet);
    }

    private CharSequence o(SpannableStringBuilder spannableStringBuilder) {
        return spannableStringBuilder;
    }

    public void setOnClickHashTagListener(b bVar) {
    }
}
