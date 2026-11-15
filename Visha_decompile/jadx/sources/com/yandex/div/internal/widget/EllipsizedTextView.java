package com.yandex.div.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.VisibleForTesting;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.R;
import defpackage.pha;
import defpackage.u20;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b1\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 o2\u00020\u0001:\u0001@B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u0010\u0010\u000eJ/\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\u001e\u001a\u0004\u0018\u00010\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b \u0010!J!\u0010$\u001a\u00020#2\u0006\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010%J!\u0010&\u001a\u00020#2\u0006\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\"\u001a\u00020\u0006H\u0003¢\u0006\u0004\b&\u0010%J\u000f\u0010'\u001a\u00020\fH\u0014¢\u0006\u0004\b'\u0010\u0018J\u000f\u0010(\u001a\u00020\fH\u0014¢\u0006\u0004\b(\u0010\u0018J\u000f\u0010)\u001a\u00020\nH\u0016¢\u0006\u0004\b)\u0010*J#\u0010-\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\n2\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\f2\u0006\u0010/\u001a\u00020\u0006H\u0016¢\u0006\u0004\b0\u00101J\u0019\u00104\u001a\u00020\f2\b\u00103\u001a\u0004\u0018\u000102H\u0016¢\u0006\u0004\b4\u00105J1\u00109\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u00106\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0006H\u0014¢\u0006\u0004\b9\u0010:J\u001f\u0010=\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u00062\u0006\u0010<\u001a\u00020\u0006H\u0014¢\u0006\u0004\b=\u0010>J/\u0010?\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0014¢\u0006\u0004\b?\u0010\u0016J\u000f\u0010@\u001a\u00020\u0006H\u0004¢\u0006\u0004\b@\u0010AR*\u0010\u000b\u001a\u00020\n2\u0006\u0010B\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010C\u001a\u0004\bD\u0010*\"\u0004\bE\u0010\u000eR*\u0010J\u001a\u00020\u001b2\u0006\u0010B\u001a\u00020\u001b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010F\u001a\u0004\bG\u0010\u001d\"\u0004\bH\u0010IR.\u0010P\u001a\u0004\u0018\u0001022\b\u0010B\u001a\u0004\u0018\u0001028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u00105R\u0016\u0010Q\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010FR4\u0010U\u001a\u0004\u0018\u00010\n2\b\u0010B\u001a\u0004\u0018\u00010\n8\u0006@BX\u0087\u000e¢\u0006\u0018\n\u0004\b\u001c\u0010C\u0012\u0004\bT\u0010\u0018\u001a\u0004\bR\u0010*\"\u0004\bS\u0010\u000eR.\u0010Y\u001a\u0004\u0018\u00010\n2\b\u0010V\u001a\u0004\u0018\u00010\n8\u0006@BX\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010C\u0012\u0004\bX\u0010\u0018\u001a\u0004\bW\u0010*R\"\u0010Z\u001a\u00020\u001b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010F\u001a\u0004\bZ\u0010\u001d\"\u0004\b[\u0010IR\u0016\u0010]\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\\R\"\u0010a\u001a\u00020\u00068\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b^\u0010\\\u001a\u0004\b_\u0010A\"\u0004\b`\u00101R\u0018\u0010c\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010CR\u0016\u0010g\u001a\u00020d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u0016\u0010i\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010FR\u001a\u0010n\u001a\u00020j8\u0002X\u0082\u0004¢\u0006\f\n\u0004\bk\u0010l\u0012\u0004\bm\u0010\u0018¨\u0006p"}, d2 = {"Lcom/yandex/div/internal/widget/EllipsizedTextView;", "Lcom/yandex/div/internal/widget/SuperLineHeightTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "ellipsis", "Lzfb;", "j", "(Ljava/lang/CharSequence;)V", "text", "setTextInternal", "width", "height", "oldWidth", "oldHeight", CmcdData.STREAM_TYPE_LIVE, "(IIII)V", "k", "()V", "e", "d", "", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "()Z", "c", "(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;", "b", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I", "textWidth", "Landroid/text/Layout;", "f", "(Ljava/lang/CharSequence;I)Landroid/text/Layout;", CmcdData.STREAMING_FORMAT_HLS, "onAttachedToWindow", "onDetachedFromWindow", "getText", "()Ljava/lang/CharSequence;", "Landroid/widget/TextView$BufferType;", "type", "setText", "(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V", "maxLines", "setMaxLines", "(I)V", "Landroid/text/TextUtils$TruncateAt;", "where", "setEllipsize", "(Landroid/text/TextUtils$TruncateAt;)V", TtmlNode.START, "lengthBefore", "lengthAfter", "onTextChanged", "(Ljava/lang/CharSequence;III)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "onSizeChanged", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()I", ES6Iterator.VALUE_PROPERTY, "Ljava/lang/CharSequence;", "getEllipsis", "setEllipsis", "Z", "getAutoEllipsize", "setAutoEllipsize", "(Z)V", "autoEllipsize", GslbInterceptor.HEADER_KEY_GSLB, "Landroid/text/TextUtils$TruncateAt;", "getEllipsisLocation", "()Landroid/text/TextUtils$TruncateAt;", "setEllipsisLocation", "ellipsisLocation", "isRemeasureNeeded", "getEllipsizedText", "setEllipsizedText", "getEllipsizedText$annotations", "ellipsizedText", "<set-?>", "getDisplayText", "getDisplayText$annotations", "displayText", "isInternalTextChange", "setInternalTextChange", "I", "lastMeasuredWidth", CmcdData.OBJECT_TYPE_MANIFEST, "getLastMeasuredHeight", "setLastMeasuredHeight", "lastMeasuredHeight", "n", "originalText", "", "o", "F", "cachedEllipsisWidth", TtmlNode.TAG_P, "isEllipsizeRequested", "Lu20;", "q", "Lu20;", "getAutoEllipsizeHelper$annotations", "autoEllipsizeHelper", "Companion", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class EllipsizedTextView extends SuperLineHeightTextView {
    public static final String DEFAULT_ELLIPSIS = "…";
    public static final int NOT_SET = -1;

    public CharSequence ellipsis;

    public boolean autoEllipsize;

    public TextUtils.TruncateAt ellipsisLocation;

    public boolean isRemeasureNeeded;

    public CharSequence ellipsizedText;

    public CharSequence displayText;

    public boolean isInternalTextChange;

    public int lastMeasuredWidth;

    public int lastMeasuredHeight;

    public CharSequence originalText;

    public float cachedEllipsisWidth;

    public boolean isEllipsizeRequested;

    public final u20 autoEllipsizeHelper;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EllipsizedTextView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static Layout g(EllipsizedTextView ellipsizedTextView, CharSequence charSequence, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: layoutText");
        }
        if ((i2 & 2) != 0) {
            i = Integer.MAX_VALUE;
        }
        return ellipsizedTextView.f(charSequence, i);
    }

    private static void getAutoEllipsizeHelper$annotations() {
    }

    @VisibleForTesting
    public static void getDisplayText$annotations() {
    }

    @VisibleForTesting
    public static void getEllipsizedText$annotations() {
    }

    private final void setEllipsizedText(CharSequence charSequence) {
        this.ellipsizedText = charSequence;
        setTextInternal(charSequence);
    }

    private final void setTextInternal(CharSequence text) {
        this.isInternalTextChange = true;
        super.setText(text);
        this.isInternalTextChange = false;
    }

    public final int a() {
        return (getMeasuredWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight();
    }

    public final int b(CharSequence text, CharSequence ellipsis) {
        int iA;
        if (text.length() == 0 || getMaxLines() == 0 || (iA = a()) <= 0) {
            return 0;
        }
        Layout layoutH = pha.d(this) ? h(text, iA) : f(text, iA);
        int lineCount = layoutH.getLineCount();
        float lineWidth = layoutH.getLineWidth(lineCount - 1);
        if (lineCount < getMaxLines() || (lineCount == getMaxLines() && lineWidth <= iA)) {
            this.isRemeasureNeeded = true;
            return text.length();
        }
        if (this.cachedEllipsisWidth == -1.0f) {
            this.cachedEllipsisWidth = g(this, ellipsis, 0, 2, null).getLineWidth(0);
        }
        this.isRemeasureNeeded = true;
        float f = iA - this.cachedEllipsisWidth;
        int offsetForHorizontal = layoutH.getOffsetForHorizontal(getMaxLines() - 1, f);
        while (layoutH.getPrimaryHorizontal(offsetForHorizontal) > f && offsetForHorizontal > 0) {
            offsetForHorizontal--;
        }
        return (offsetForHorizontal <= 0 || !Character.isHighSurrogate(text.charAt(offsetForHorizontal + (-1)))) ? offsetForHorizontal : offsetForHorizontal - 1;
    }

    public final CharSequence c(CharSequence text) {
        CharSequence charSequence;
        int iB;
        if (text == null || text.length() == 0 || (iB = b(text, (charSequence = this.ellipsis))) <= 0) {
            return null;
        }
        if (iB == text.length()) {
            return text;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text, 0, iB);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    public final void d() {
        CharSequence charSequence = this.ellipsizedText;
        boolean z = i() || y45.e(this.ellipsis, DEFAULT_ELLIPSIS);
        if (this.ellipsizedText != null || !z) {
            if (z) {
                CharSequence charSequence2 = this.originalText;
                if (charSequence2 != null) {
                    this.isRemeasureNeeded = !y45.e(charSequence2, charSequence);
                } else {
                    charSequence2 = null;
                }
                setEllipsizedText(charSequence2);
            } else {
                setEllipsizedText(c(this.originalText));
            }
        }
        this.isEllipsizeRequested = false;
    }

    public final void e() {
        this.cachedEllipsisWidth = -1.0f;
        this.isRemeasureNeeded = false;
    }

    public final Layout f(CharSequence text, int textWidth) {
        return new StaticLayout(text, getPaint(), textWidth, Layout.Alignment.ALIGN_NORMAL, getLineSpacingMultiplier(), getLineSpacingExtra(), true);
    }

    public final boolean getAutoEllipsize() {
        return this.autoEllipsize;
    }

    public final CharSequence getDisplayText() {
        return this.displayText;
    }

    public final CharSequence getEllipsis() {
        return this.ellipsis;
    }

    public final TextUtils.TruncateAt getEllipsisLocation() {
        return this.ellipsisLocation;
    }

    public final CharSequence getEllipsizedText() {
        return this.ellipsizedText;
    }

    public final int getLastMeasuredHeight() {
        return this.lastMeasuredHeight;
    }

    @Override
    public CharSequence getText() {
        CharSequence charSequence = this.originalText;
        return charSequence == null ? "" : charSequence;
    }

    public final Layout h(CharSequence text, int textWidth) {
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(text, 0, text.length(), getPaint(), textWidth);
        y45.i(builderObtain, "obtain(text, 0, text.length, paint, textWidth)");
        StaticLayout staticLayoutBuild = builderObtain.setAlignment(Layout.Alignment.ALIGN_NORMAL).setLineSpacing(getLineSpacingExtra(), getLineSpacingMultiplier()).setIncludePad(true).setHyphenationFrequency(getHyphenationFrequency()).build();
        y45.i(staticLayoutBuild, "builder\n            .set…ncy)\n            .build()");
        return staticLayoutBuild;
    }

    public final boolean i() {
        return getMaxLines() < 0 || getMaxLines() == Integer.MAX_VALUE;
    }

    public final void j(CharSequence ellipsis) {
        if (i()) {
            super.setEllipsize(null);
        } else if (y45.e(ellipsis, DEFAULT_ELLIPSIS)) {
            super.setEllipsize(this.ellipsisLocation);
        } else {
            super.setEllipsize(null);
            k();
            e();
        }
        requestLayout();
    }

    public final void k() {
        this.isEllipsizeRequested = true;
    }

    public final void l(int width, int height, int oldWidth, int oldHeight) {
        if (width == oldWidth && height == oldHeight) {
            return;
        }
        k();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.autoEllipsizeHelper.d();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.autoEllipsizeHelper.e();
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        l(getMeasuredWidth(), getMeasuredHeight(), this.lastMeasuredWidth, this.lastMeasuredHeight);
        if (this.isEllipsizeRequested) {
            d();
            CharSequence charSequence = this.ellipsizedText;
            if (charSequence != null) {
                if (!this.isRemeasureNeeded) {
                    charSequence = null;
                }
                if (charSequence != null) {
                    super.onMeasure(widthMeasureSpec, heightMeasureSpec);
                }
            }
        }
        this.lastMeasuredWidth = getMeasuredWidth();
    }

    @Override
    public void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        l(width, height, oldWidth, oldHeight);
    }

    @Override
    public void onTextChanged(CharSequence text, int start, int lengthBefore, int lengthAfter) {
        super.onTextChanged(text, start, lengthBefore, lengthAfter);
        if (this.isInternalTextChange) {
            return;
        }
        this.originalText = text;
        requestLayout();
        k();
    }

    public final void setAutoEllipsize(boolean z) {
        this.autoEllipsize = z;
        this.autoEllipsizeHelper.g(z);
    }

    public final void setEllipsis(CharSequence charSequence) {
        y45.j(charSequence, ES6Iterator.VALUE_PROPERTY);
        j(charSequence);
        this.ellipsis = charSequence;
    }

    public final void setEllipsisLocation(TextUtils.TruncateAt truncateAt) {
        this.ellipsisLocation = truncateAt;
        if (truncateAt == null) {
            setAutoEllipsize(false);
        }
        j(this.ellipsis);
    }

    @Override
    public void setEllipsize(TextUtils.TruncateAt where) {
    }

    public final void setInternalTextChange(boolean z) {
        this.isInternalTextChange = z;
    }

    public final void setLastMeasuredHeight(int i) {
        this.lastMeasuredHeight = i;
    }

    @Override
    public void setMaxLines(int maxLines) {
        if (maxLines == getMaxLines()) {
            return;
        }
        super.setMaxLines(maxLines);
        j(this.ellipsis);
        k();
        e();
    }

    @Override
    public void setText(CharSequence text, TextView.BufferType type) {
        this.displayText = text;
        super.setText(text, type);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EllipsizedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public EllipsizedTextView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EllipsizedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        CharSequence charSequence = DEFAULT_ELLIPSIS;
        this.ellipsis = DEFAULT_ELLIPSIS;
        this.ellipsisLocation = TextUtils.TruncateAt.END;
        this.lastMeasuredWidth = -1;
        this.lastMeasuredHeight = -1;
        this.cachedEllipsisWidth = -1.0f;
        this.autoEllipsizeHelper = new u20(this);
        if (isInEditMode()) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EllipsizedTextView, i, 0);
            y45.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…extView, defStyleAttr, 0)");
            try {
                CharSequence text = typedArrayObtainStyledAttributes.getText(R.styleable.EllipsizedTextView_ellipsis);
                if (text != null) {
                    charSequence = text;
                }
                setEllipsis(charSequence);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        j(this.ellipsis);
    }
}
