package com.transsion.widgetslib.widget;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.widgetslib.R;
import defpackage.olb;
import defpackage.ws7;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ7\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u0019¨\u0006 "}, d2 = {"Lcom/transsion/widgetslib/widget/OSSmoothCornerEditView;", "Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "Lzfb;", "onLayout", "(ZIIII)V", "Lws7;", "b", "Lws7;", "mOsSmoothCornerDrawable", "", "c", "F", "mCorner", "d", "I", "mFillColor", "e", "mSmoothness", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSSmoothCornerEditView extends AppCompatAutoCompleteTextView {

    public ws7 mOsSmoothCornerDrawable;

    public float mCorner;

    public int mFillColor;

    public float mSmoothness;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSmoothCornerEditView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.mOsSmoothCornerDrawable == null) {
            ws7 ws7Var = new ws7(getContext(), new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.mCorner, getPaint());
            this.mOsSmoothCornerDrawable = ws7Var;
            setBackground(ws7Var);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSmoothCornerEditView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSSmoothCornerEditView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSSmoothCornerEditView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.mSmoothness = 0.6f;
        this.mCorner = context.getResources().getDimension(R.dimen.os_radius_xxxl);
        this.mFillColor = olb.m(context, R.attr.os_fill_weakest, R.color.os_fill_weakest_hios);
        setPadding(olb.n(R.attr.osSearchBarEditLeft, R.dimen.os_search_bar_edit_left_hios, context), 0, (int) context.getResources().getDimension(R.dimen.os_search_bar_text_padding_end_with_del_icon), 0);
    }
}
