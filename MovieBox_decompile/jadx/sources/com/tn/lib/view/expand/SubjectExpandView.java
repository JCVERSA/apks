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
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.R$styleable;

public class SubjectExpandView extends AppCompatTextView {
    public static final int STATE_EXPAND = 1;
    public static final int STATE_SHRINK = 0;

    private String f40307a;

    private String f40308b;

    private String f40309c;

    private String f40310d;

    private String f40311e;

    private boolean f40312f;

    private boolean f40313g;

    private boolean f40314h;

    private boolean f40315i;

    private boolean f40316j;

    private int f40317k;

    private int f40318l;

    private int f40319m;

    private int f40320n;

    private int f40321o;

    private int f40322p;

    private int f40323q;

    private float f40324r;

    private bh.a f40325s;

    private bh.a f40326t;

    private Layout f40327u;

    private CharSequence f40328v;

    private ClickableSpan f40329w;

    private boolean f40330x;

    private boolean f40331y;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override
        public void onGlobalLayout() {
            SubjectExpandView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            SubjectExpandView subjectExpandView = SubjectExpandView.this;
            subjectExpandView.k(subjectExpandView.f40328v);
            SubjectExpandView.this.f40316j = true;
        }
    }

    public interface b {
    }

    public SubjectExpandView(Context context) {
        this(context, null);
    }

    private CharSequence f(int i10) {
        String str;
        int i11;
        TextPaint paint = getPaint();
        if (this.f40328v != null) {
            str = "" + ((Object) this.f40328v);
        } else {
            str = "";
        }
        if (this.f40327u == null) {
            this.f40327u = new StaticLayout(str, paint, i10, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        int lineCount = this.f40327u.getLineCount();
        int i12 = this.f40317k;
        if (lineCount <= i12) {
            CharSequence charSequence = this.f40328v;
            if (charSequence == null) {
                charSequence = " ";
            }
            return l(new SpannableStringBuilder(charSequence));
        }
        int i13 = this.f40323q;
        if (i13 != 0) {
            if (i13 != 1 || !this.f40315i) {
                return l(new SpannableStringBuilder(this.f40328v));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f40328v);
            spannableStringBuilder.append((CharSequence) this.f40311e).append((CharSequence) this.f40309c);
            int length = (spannableStringBuilder.length() - this.f40311e.length()) - this.f40309c.length();
            int length2 = spannableStringBuilder.length();
            i11 = length >= 0 ? length : 0;
            spannableStringBuilder.setSpan(this.f40329w, i11, length2, 33);
            spannableStringBuilder.setSpan(this.f40325s, i11, length2, 33);
            return l(spannableStringBuilder);
        }
        int iG = g(str, paint, this.f40327u.getLineStart(this.f40317k - 1), this.f40327u.getLineEnd(i12 - 1), i10);
        CharSequence charSequence2 = this.f40328v;
        if (charSequence2 != null && charSequence2.length() <= iG) {
            iG = this.f40328v.length() - 1;
        }
        CharSequence charSequence3 = this.f40328v;
        if (charSequence3 == null || iG <= 0) {
            return charSequence3;
        }
        SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(charSequence3.length() > 180 ? this.f40328v.subSequence(0, 180) : this.f40328v).append((CharSequence) this.f40307a);
        if (this.f40314h) {
            spannableStringBuilderAppend.append((CharSequence) this.f40310d);
            spannableStringBuilderAppend.append((CharSequence) this.f40308b);
            int length3 = (spannableStringBuilderAppend.length() - this.f40310d.length()) - this.f40308b.length();
            int length4 = spannableStringBuilderAppend.length();
            i11 = length3 >= 0 ? length3 : 0;
            spannableStringBuilderAppend.setSpan(this.f40329w, i11, length4, 33);
            spannableStringBuilderAppend.setSpan(this.f40326t, i11, length4, 33);
        }
        return l(spannableStringBuilderAppend);
    }

    private int g(String str, TextPaint textPaint, int i10, int i11, int i12) {
        String str2;
        bh.a aVar = this.f40326t;
        String str3 = this.f40307a;
        if (this.f40314h) {
            str2 = this.f40308b + this.f40310d;
        } else {
            str2 = "";
        }
        return textPaint.breakText(str, i10, i11, true, i12 - aVar.e(textPaint, str3, str2), null) + i10;
    }

    private int getLayoutWidth() {
        Layout layout = getLayout();
        int width = layout != null ? layout.getWidth() : 0;
        return (width > 0 || getWidth() == 0) ? width : (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void h() {
        if (this.f40324r == 0.0f) {
            this.f40324r = getTextSize();
        }
        boolean z10 = getLayoutDirection() == 1;
        this.f40326t = new bh.a(getContext(), R$mipmap.info_player_ic_expand, this.f40318l, this.f40320n, this.f40324r, 5, z10);
        this.f40325s = new bh.a(getContext(), R$mipmap.info_player_ic_collapse, this.f40319m, this.f40321o, this.f40324r, 5, z10);
        setMovementMethod(new LinkMovementMethod());
        if (TextUtils.isEmpty(this.f40307a)) {
            this.f40307a = "...";
        }
        if (TextUtils.isEmpty(this.f40308b)) {
            this.f40308b = getResources().getString(R$string.player_more);
        }
        if (TextUtils.isEmpty(this.f40309c)) {
            this.f40309c = getResources().getString(R$string.player_hide);
        }
        if (this.f40310d == null) {
            this.f40310d = "  ";
        }
        if (this.f40311e == null) {
            this.f40311e = "  ";
        }
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f15816a.j(view);
            }
        });
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void i(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            h();
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExpandView);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.ExpandView_pop_hint_text_size) {
                this.f40324r = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
            } else if (index == R$styleable.ExpandView_pop_reverse_Lines) {
                this.f40317k = typedArrayObtainStyledAttributes.getInteger(index, 1);
            } else if (index == R$styleable.ExpandView_pop_ellipsis) {
                this.f40307a = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_expand_hint) {
                this.f40308b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint) {
                this.f40309c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_toggle_enabled) {
                this.f40312f = typedArrayObtainStyledAttributes.getBoolean(index, this.f40312f);
            } else if (index == R$styleable.ExpandView_pop_show_expand_hint) {
                this.f40314h = typedArrayObtainStyledAttributes.getBoolean(index, this.f40314h);
            } else if (index == R$styleable.ExpandView_pop_show_shrink_hint) {
                this.f40315i = typedArrayObtainStyledAttributes.getBoolean(index, this.f40315i);
            } else if (index == R$styleable.ExpandView_pop_expand_hint_color) {
                this.f40318l = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_shrink_hint_color) {
                this.f40319m = typedArrayObtainStyledAttributes.getInteger(index, -1711276033);
            } else if (index == R$styleable.ExpandView_pop_expand_bg_Color) {
                this.f40320n = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_shrink_bg_color) {
                this.f40321o = typedArrayObtainStyledAttributes.getInteger(index, 872415231);
            } else if (index == R$styleable.ExpandView_pop_Init_state) {
                this.f40323q = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandView_pop_expand_gap) {
                this.f40310d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_collapse_gap) {
                this.f40311e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandView_pop_hash_tag_color) {
                this.f40322p = typedArrayObtainStyledAttributes.getInteger(index, this.f40322p);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        h();
    }

    public void j(View view) {
        m();
    }

    private void m() {
        if (getText().toString().contains(this.f40308b) || getText().toString().contains(this.f40309c) || this.f40331y) {
            int i10 = this.f40323q;
            if (i10 == 0) {
                this.f40323q = 1;
            } else if (i10 == 1) {
                this.f40323q = 0;
            }
            k(this.f40328v);
        }
    }

    public int getExpandState() {
        return this.f40323q;
    }

    public boolean isOutLines() {
        Layout layout = this.f40327u;
        return layout != null && layout.getLineCount() > this.f40317k;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void reset() {
        this.f40323q = 0;
        k(this.f40328v);
    }

    public void setCollapseEnable(boolean z10) {
        this.f40313g = z10;
    }

    public void setHasStarring(boolean z10) {
        this.f40330x = z10;
    }

    public void setShrink(boolean z10) {
        this.f40331y = z10;
        if (z10) {
            this.f40323q = 1;
            m();
            this.f40331y = false;
        }
    }

    public void k(final CharSequence charSequence) {
        if (!this.f40313g) {
            super.setText(charSequence);
            return;
        }
        if (!TextUtils.equals(charSequence, this.f40328v)) {
            this.f40327u = null;
        }
        this.f40328v = charSequence;
        int layoutWidth = getLayoutWidth();
        if (this.f40330x) {
            if (this.f40323q == 1) {
                super.setText(charSequence);
                return;
            }
            if (this.f40328v != null) {
                charSequence = f(layoutWidth);
            }
            super.setText(charSequence);
            return;
        }
        if (layoutWidth > 0) {
            if (this.f40328v != null) {
                charSequence = f(layoutWidth);
            }
            super.setText(charSequence);
        } else if (this.f40316j) {
            postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f15817a.k(charSequence);
                }
            }, 100L);
        }
    }

    public SubjectExpandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40310d = "  ";
        this.f40311e = "  ";
        this.f40312f = false;
        this.f40313g = true;
        this.f40314h = true;
        this.f40315i = true;
        this.f40316j = false;
        this.f40317k = 1;
        this.f40318l = -1711276033;
        this.f40319m = -1711276033;
        this.f40320n = 872415231;
        this.f40321o = 872415231;
        this.f40322p = -1;
        this.f40323q = 0;
        this.f40330x = false;
        this.f40331y = false;
        i(context, attributeSet);
    }

    public SubjectExpandView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f40310d = "  ";
        this.f40311e = "  ";
        this.f40312f = false;
        this.f40313g = true;
        this.f40314h = true;
        this.f40315i = true;
        this.f40316j = false;
        this.f40317k = 1;
        this.f40318l = -1711276033;
        this.f40319m = -1711276033;
        this.f40320n = 872415231;
        this.f40321o = 872415231;
        this.f40322p = -1;
        this.f40323q = 0;
        this.f40330x = false;
        this.f40331y = false;
        i(context, attributeSet);
    }

    private CharSequence l(SpannableStringBuilder spannableStringBuilder) {
        return spannableStringBuilder;
    }

    public void setExpandListener(b bVar) {
    }
}
