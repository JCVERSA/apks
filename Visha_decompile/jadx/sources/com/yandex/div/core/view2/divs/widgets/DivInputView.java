package com.yandex.div.core.view2.divs.widgets;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.internal.widget.SuperLineHeightEditText;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import defpackage.a15;
import defpackage.e74;
import defpackage.ig2;
import defpackage.j1a;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.qc2;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b'\b\u0010\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004B'\b\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0096\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u0017\u0010\u0013J \u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0096\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u001c\u0010\u0013J\u0010\u0010\u001d\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u001d\u0010\u0013J*\u0010$\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b$\u0010%J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b&\u0010'J\u0018\u0010(\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b(\u0010'J\u0019\u0010+\u001a\u00020\u000f2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J\u0019\u0010/\u001a\u00020\u000f2\b\u0010.\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b/\u00100J/\u00105\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\t2\u0006\u00103\u001a\u00020\t2\u0006\u00104\u001a\u00020\tH\u0014¢\u0006\u0004\b5\u00106J)\u0010<\u001a\u00020\u000f2\u0006\u00108\u001a\u0002072\u0006\u00109\u001a\u00020\t2\b\u0010;\u001a\u0004\u0018\u00010:H\u0014¢\u0006\u0004\b<\u0010=J\u0017\u0010@\u001a\u00020\u000f2\u0006\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b@\u0010AJ\u0017\u0010C\u001a\u00020\u000f2\u0006\u0010B\u001a\u000207H\u0016¢\u0006\u0004\bC\u0010DJ%\u0010H\u001a\u00020\u000f2\u0014\u0010G\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010F\u0012\u0004\u0012\u00020\u000f0EH\u0016¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\u000fH\u0016¢\u0006\u0004\bJ\u0010\u0013R\u001c\u0010P\u001a\u0004\u0018\u00010K8\u0010X\u0090\u0004¢\u0006\f\n\u0004\bL\u0010M\u001a\u0004\bN\u0010OR$\u0010W\u001a\u0004\u0018\u00010Q8\u0010@\u0010X\u0090\u000e¢\u0006\u0012\n\u0004\b2\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR(\u0010[\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010F\u0012\u0004\u0012\u00020\u000f0E0X8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\bY\u0010ZR\u0018\u0010_\u001a\u0004\u0018\u00010\\8\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0018\u0010b\u001a\u0004\u0018\u00010)8\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010e\u001a\u0002078\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\bc\u0010dR*\u0010k\u001a\u0002072\u0006\u0010f\u001a\u0002078\u0016@PX\u0096\u000e¢\u0006\u0012\n\u0004\bg\u0010d\u001a\u0004\bh\u0010i\"\u0004\bj\u0010DR*\u0010o\u001a\u0002072\u0006\u0010f\u001a\u0002078\u0010@PX\u0090\u000e¢\u0006\u0012\n\u0004\bl\u0010d\u001a\u0004\bm\u0010i\"\u0004\bn\u0010DR\u0014\u0010r\u001a\u00020\t8SX\u0092\u0004¢\u0006\u0006\u001a\u0004\bp\u0010qR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bs\u0010t\"\u0004\bu\u0010vR\u001e\u0010{\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR\u0014\u0010|\u001a\u0002078\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b|\u0010iR\u001c\u0010\u007f\u001a\u0002078\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b}\u0010i\"\u0004\b~\u0010DR\u001d\u0010\u0082\u0001\u001a\b\u0012\u0004\u0012\u00020\r0X8\u0016X\u0096\u0005¢\u0006\b\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001¨\u0006\u0083\u0001"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivInputView;", "Lcom/yandex/div/internal/widget/SuperLineHeightEditText;", "Lmk2;", "Lcom/yandex/div2/Div$i;", "Lig2;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "", "hint", "setInputHint", "(Ljava/lang/String;)V", "", "contentDescription", "setContentDescription", "(Ljava/lang/CharSequence;)V", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "", "focused", ICode.CALL.CALL_KEY_DIRECTION, "Landroid/graphics/Rect;", "previouslyFocusedRect", "onFocusChanged", "(ZILandroid/graphics/Rect;)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "focusable", "setFocusable", "(Z)V", "Lkotlin/Function1;", "Landroid/text/Editable;", "action", "addAfterTextChangeAction", "(Le74;)V", "removeAfterTextChangeListener", "Landroid/graphics/drawable/Drawable;", GslbInterceptor.HEADER_KEY_GSLB, "Landroid/graphics/drawable/Drawable;", "getNativeBackground$div_release", "()Landroid/graphics/drawable/Drawable;", "nativeBackground", "La15;", "La15;", "getFocusTracker$div_release", "()La15;", "setFocusTracker$div_release", "(La15;)V", "focusTracker", "", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Ljava/util/List;", "onTextChangedActions", "Landroid/text/TextWatcher;", "j", "Landroid/text/TextWatcher;", "textChangeWatcher", "k", "Ljava/lang/String;", "_hint", CmcdData.STREAM_TYPE_LIVE, "Z", "_isFocusable", ES6Iterator.VALUE_PROPERTY, CmcdData.OBJECT_TYPE_MANIFEST, "getEnabled", "()Z", "setEnabled$div_release", "enabled", "n", "getAccessibilityEnabled$div_release", "setAccessibilityEnabled$div_release", "accessibilityEnabled", "getNativeBackgroundResId", "()I", "nativeBackgroundResId", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$i;", "setDiv", "(Lcom/yandex/div2/Div$i;)V", TtmlNode.TAG_DIV, "isTransient", "getNeedClipping", "setNeedClipping", "needClipping", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class DivInputView extends SuperLineHeightEditText implements mk2, ig2 {
    public final nk2 f;

    public final Drawable nativeBackground;

    public a15 focusTracker;

    public final List onTextChangedActions;

    public TextWatcher textChangeWatcher;

    public String _hint;

    public boolean _isFocusable;

    public boolean enabled;

    public boolean accessibilityEnabled;

    public static final class a implements TextWatcher {
        public a() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            Iterator it = DivInputView.this.onTextChangedActions.iterator();
            while (it.hasNext()) {
                ((e74) it.next()).invoke(editable);
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivInputView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @DrawableRes
    private int getNativeBackgroundResId() {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.editTextBackground, typedValue, true);
        return typedValue.resourceId;
    }

    public void addAfterTextChangeAction(e74 action) {
        y45.j(action, "action");
        if (this.textChangeWatcher == null) {
            a aVar = new a();
            addTextChangedListener(aVar);
            this.textChangeWatcher = aVar;
        }
        this.onTextChangedActions.add(action);
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.f.addSubscription(subscription);
    }

    @Override
    public void closeAllSubscription() {
        this.f.closeAllSubscription();
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        DivBorderDrawer divBorderDrawer = getDivBorderDrawer();
        if (divBorderDrawer == null) {
            super.draw(canvas);
            return;
        }
        if (scrollX == 0 && scrollY == 0) {
            int iSave = canvas.save();
            try {
                divBorderDrawer.g(canvas);
                super.draw(canvas);
                divBorderDrawer.h(canvas);
                return;
            } finally {
                canvas.restoreToCount(iSave);
            }
        }
        float f = scrollX;
        float f2 = scrollY;
        int iSave2 = canvas.save();
        try {
            canvas.translate(f, f2);
            divBorderDrawer.g(canvas);
            canvas.translate(-f, -f2);
            super.draw(canvas);
            canvas.translate(f, f2);
            divBorderDrawer.h(canvas);
        } finally {
            canvas.restoreToCount(iSave2);
        }
    }

    public boolean getAccessibilityEnabled() {
        return this.accessibilityEnabled;
    }

    @Override
    public com.yandex.div.core.view2.a getBindingContext() {
        return this.f.getBindingContext();
    }

    @Override
    public Div.i getDiv() {
        return (Div.i) this.f.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.f.getDivBorderDrawer();
    }

    public boolean getEnabled() {
        return this.enabled;
    }

    public a15 getFocusTracker() {
        return this.focusTracker;
    }

    public Drawable getNativeBackground() {
        return this.nativeBackground;
    }

    @Override
    public boolean getNeedClipping() {
        return this.f.getNeedClipping();
    }

    @Override
    public List<qc2> getSubscriptions() {
        return this.f.getSubscriptions();
    }

    @Override
    public void invalidateBorder() {
        this.f.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.f.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.f.onBoundsChanged(width, height);
    }

    @Override
    public void onFocusChanged(boolean focused, int direction, Rect previouslyFocusedRect) {
        a15 focusTracker = getFocusTracker();
        if (focusTracker != null) {
            focusTracker.c(getTag(), this, focused);
        }
        super.onFocusChanged(focused, direction, previouslyFocusedRect);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    public void release() {
        this.f.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.f.releaseBorderDrawer();
    }

    public void removeAfterTextChangeListener() {
        removeTextChangedListener(this.textChangeWatcher);
        this.onTextChangedActions.clear();
        this.textChangeWatcher = null;
    }

    public void setAccessibilityEnabled$div_release(boolean z) {
        this.accessibilityEnabled = z;
        setInputHint(this._hint);
    }

    @Override
    public void setBindingContext(com.yandex.div.core.view2.a aVar) {
        this.f.setBindingContext(aVar);
    }

    @Override
    public void setBorder(com.yandex.div.core.view2.a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.f.setBorder(bindingContext, border, view);
    }

    @Override
    public void setContentDescription(CharSequence contentDescription) {
        super.setContentDescription(contentDescription);
        setInputHint(this._hint);
    }

    @Override
    public void setDiv(Div.i iVar) {
        this.f.setDiv(iVar);
    }

    public void setEnabled$div_release(boolean z) {
        this.enabled = z;
        setFocusable(this._isFocusable);
    }

    public void setFocusTracker$div_release(a15 a15Var) {
        this.focusTracker = a15Var;
    }

    @Override
    public void setFocusable(boolean focusable) {
        this._isFocusable = focusable;
        boolean z = focusable && getEnabled();
        super.setFocusable(z);
        setFocusableInTouchMode(z);
    }

    public void setInputHint(String hint) {
        CharSequence contentDescription;
        this._hint = hint;
        CharSequence contentDescription2 = hint;
        if (getAccessibilityEnabled()) {
            if ((hint == null || hint.length() == 0) && ((contentDescription = getContentDescription()) == null || contentDescription.length() == 0)) {
                contentDescription2 = null;
            } else if (hint == null || hint.length() == 0) {
                contentDescription2 = getContentDescription();
            } else {
                CharSequence contentDescription3 = getContentDescription();
                if (contentDescription3 != null && contentDescription3.length() != 0) {
                    contentDescription2 = hint;
                    contentDescription2 = hint;
                    contentDescription2 = j1a.l1(hint, '.') + ". " + ((Object) getContentDescription());
                }
            }
        }
        contentDescription2 = hint;
        contentDescription2 = hint;
        contentDescription2 = hint;
        setHint(contentDescription2);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.f.setNeedClipping(z);
    }

    @Override
    public void startDivAnimation() {
        super.startDivAnimation();
    }

    @Override
    public void stopDivAnimation() {
        super.stopDivAnimation();
    }

    @Override
    public void transitionFinished(View view) {
        y45.j(view, "view");
        this.f.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.f.transitionStarted(view);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivInputView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivInputView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? com.yandex.div.R.attr.divInputStyle : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivInputView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.f = new nk2();
        this.nativeBackground = ContextCompat.getDrawable(context, getNativeBackgroundResId());
        this.onTextChangedActions = new ArrayList();
        this._isFocusable = true;
        this.enabled = true;
    }
}
