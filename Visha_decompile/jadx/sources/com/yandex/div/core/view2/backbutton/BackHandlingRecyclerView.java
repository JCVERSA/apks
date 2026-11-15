package com.yandex.div.core.view2.backbutton;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0017¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0007H\u0015¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u00122\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "Lcom/yandex/div/core/view2/backbutton/a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "keyCode", "Landroid/view/KeyEvent;", NotificationCompat.CATEGORY_EVENT, "", "onKeyPreIme", "(ILandroid/view/KeyEvent;)Z", "hasWindowFocus", "Lzfb;", "onWindowFocusChanged", "(Z)V", "Landroid/view/View;", "changedView", "visibility", "onVisibilityChanged", "(Landroid/view/View;I)V", "Lcom/yandex/div/core/view2/backbutton/b$a;", "listener", "setOnBackClickListener", "(Lcom/yandex/div/core/view2/backbutton/b$a;)V", "Lcom/yandex/div/core/view2/backbutton/b;", "e", "Lcom/yandex/div/core/view2/backbutton/b;", "backKeyPressedHelper", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class BackHandlingRecyclerView extends RecyclerView implements a {

    public final b backKeyPressedHelper;

    public BackHandlingRecyclerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override
    @CallSuper
    public boolean onKeyPreIme(int keyCode, KeyEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        return this.backKeyPressedHelper.a(keyCode, event) || super.onKeyPreIme(keyCode, event);
    }

    @Override
    public void onVisibilityChanged(View changedView, int visibility) {
        y45.j(changedView, "changedView");
        this.backKeyPressedHelper.b();
    }

    @Override
    @CallSuper
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
        this.backKeyPressedHelper.c(hasWindowFocus);
    }

    @Override
    public void setOnBackClickListener(b.a listener) {
        setDescendantFocusability(listener != null ? 131072 : 262144);
        this.backKeyPressedHelper.setOnBackClickListener(listener);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackHandlingRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.backKeyPressedHelper = new b(this);
    }
}
