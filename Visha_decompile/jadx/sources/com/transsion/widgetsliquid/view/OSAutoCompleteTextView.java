package com.transsion.widgetsliquid.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.AutoCompleteTextView;
import androidx.core.app.NotificationCompat;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0017\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSAutoCompleteTextView;", "Landroid/widget/AutoCompleteTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "shouldIntercept", "Lzfb;", "setShouldInterceptEvents", "(Z)V", "getShouldInterceptEvents", "()Z", "b", "Z", "shouldInterceptEvents", "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"AppCompatCustomView"})
public class OSAutoCompleteTextView extends AutoCompleteTextView {

    public boolean shouldInterceptEvents;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSAutoCompleteTextView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public final boolean getShouldInterceptEvents() {
        return this.shouldInterceptEvents;
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        if (this.shouldInterceptEvents) {
            return super.onTouchEvent(event);
        }
        return false;
    }

    public final void setShouldInterceptEvents(boolean shouldIntercept) {
        this.shouldInterceptEvents = shouldIntercept;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSAutoCompleteTextView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.shouldInterceptEvents = true;
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
    }
}
