package com.yandex.div.core.view2;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.Button;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.core.view2.AccessibilityListDelegate;
import com.yandex.div.core.view2.backbutton.BackHandlingRecyclerView;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.widget.DivViewWrapper;
import defpackage.xq8;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0000\u0018\u00002\u00020\u0001:\u0002>,B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0015\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\r*\u00020\tH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0013\u0010 \u001a\u00020\r*\u00020\u001fH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\rH\u0002¢\u0006\u0004\b\"\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R$\u0010*\u001a\u0012\u0012\u0004\u0012\u00020&0%j\b\u0012\u0004\u0012\u00020&`'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R$\u00107\u001a\u00020\u00142\u0006\u00102\u001a\u00020\u00148\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b3\u00104\"\u0004\b5\u00106R\u0018\u0010:\u001a\u00020\t*\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b8\u00109R\u001a\u0010=\u001a\u0004\u0018\u00010\t*\u00020\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<¨\u0006?"}, d2 = {"Lcom/yandex/div/core/view2/AccessibilityListDelegate;", "Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;", "Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;", "recyclerView", MethodDecl.initName, "(Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;)V", "Landroidx/core/view/AccessibilityDelegateCompat;", "getItemDelegate", "()Landroidx/core/view/AccessibilityDelegateCompat;", "Landroid/view/View;", SerializableCookie.HOST, "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "info", "Lzfb;", "onInitializeAccessibilityNodeInfo", "(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V", "", "action", "Landroid/os/Bundle;", "args", "", "performAccessibilityAction", "(Landroid/view/View;ILandroid/os/Bundle;)Z", CmcdData.STREAMING_FORMAT_HLS, "()V", CmcdData.OBJECT_TYPE_INIT_SEGMENT, GslbInterceptor.HEADER_KEY_GSLB, CmcdData.OBJECT_TYPE_MANIFEST, "()Z", TtmlNode.TAG_P, "(Landroid/view/View;)V", "Landroid/view/ViewGroup;", CmcdData.STREAM_TYPE_LIVE, "(Landroid/view/ViewGroup;)V", "n", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;", "Ljava/util/ArrayList;", "Lcom/yandex/div/core/view2/AccessibilityListDelegate$c;", "Lkotlin/collections/ArrayList;", "b", "Ljava/util/ArrayList;", "list", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "c", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "visibilityListener", "d", "Landroidx/core/view/AccessibilityDelegateCompat;", "itemDelegate", ES6Iterator.VALUE_PROPERTY, "e", "Z", "o", "(Z)V", "isItemsFocusActive", "k", "(Landroid/view/View;)Landroid/view/View;", "unwrap", "j", "(Landroid/view/ViewGroup;)Landroid/view/View;", "firstChild", "ItemAccessibilityDelegate", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AccessibilityListDelegate extends RecyclerViewAccessibilityDelegate {

    public final BackHandlingRecyclerView recyclerView;

    public final ArrayList list;

    public final ViewTreeObserver.OnGlobalLayoutListener visibilityListener;

    public AccessibilityDelegateCompat itemDelegate;

    public boolean isItemsFocusActive;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div/core/view2/AccessibilityListDelegate$ItemAccessibilityDelegate;", "Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;", MethodDecl.initName, "(Lcom/yandex/div/core/view2/AccessibilityListDelegate;)V", "Landroid/view/View;", SerializableCookie.HOST, "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "info", "Lzfb;", "onInitializeAccessibilityNodeInfo", "(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class ItemAccessibilityDelegate extends RecyclerViewAccessibilityDelegate.ItemDelegate {
        public ItemAccessibilityDelegate() {
            super(AccessibilityListDelegate.this);
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
            y45.j(host, SerializableCookie.HOST);
            y45.j(info, "info");
            super.onInitializeAccessibilityNodeInfo(host, info);
            info.setClassName(xq8.b(Button.class).c());
            AccessibilityListDelegate.this.p(host);
        }
    }

    public static final class a implements View.OnAttachStateChangeListener {
        public a() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            y45.j(view, "view");
            AccessibilityListDelegate.this.recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(AccessibilityListDelegate.this.visibilityListener);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            y45.j(view, "view");
            AccessibilityListDelegate.this.recyclerView.getViewTreeObserver().removeOnGlobalLayoutListener(AccessibilityListDelegate.this.visibilityListener);
            AccessibilityListDelegate.this.g();
        }
    }

    public static final class b implements com.yandex.div.core.view2.backbutton.b.a {
        public b() {
        }

        @Override
        public boolean a() {
            return AccessibilityListDelegate.this.m();
        }
    }

    public static final class c {
        public final WeakReference a;
        public final int b;

        public c(WeakReference weakReference, int i) {
            y45.j(weakReference, "view");
            this.a = weakReference;
            this.b = i;
        }

        public final int a() {
            return this.b;
        }

        public final WeakReference b() {
            return this.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccessibilityListDelegate(BackHandlingRecyclerView backHandlingRecyclerView) {
        super(backHandlingRecyclerView);
        y45.j(backHandlingRecyclerView, "recyclerView");
        this.recyclerView = backHandlingRecyclerView;
        this.list = new ArrayList();
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public final void onGlobalLayout() {
                AccessibilityListDelegate.q(this.b);
            }
        };
        this.visibilityListener = onGlobalLayoutListener;
        if (backHandlingRecyclerView.isAttachedToWindow()) {
            backHandlingRecyclerView.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
        backHandlingRecyclerView.addOnAttachStateChangeListener(new a());
        int childCount = backHandlingRecyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            p(backHandlingRecyclerView.getChildAt(i));
        }
        this.recyclerView.setOnBackClickListener(new b());
    }

    public static final void q(AccessibilityListDelegate accessibilityListDelegate) {
        y45.j(accessibilityListDelegate, "this$0");
        if (!accessibilityListDelegate.isItemsFocusActive || accessibilityListDelegate.recyclerView.getVisibility() == 0) {
            return;
        }
        accessibilityListDelegate.g();
    }

    public final void g() {
        o(false);
        n();
    }

    @Override
    public AccessibilityDelegateCompat getItemDelegate() {
        AccessibilityDelegateCompat accessibilityDelegateCompat = this.itemDelegate;
        if (accessibilityDelegateCompat != null) {
            return accessibilityDelegateCompat;
        }
        ItemAccessibilityDelegate itemAccessibilityDelegate = new ItemAccessibilityDelegate();
        this.itemDelegate = itemAccessibilityDelegate;
        return itemAccessibilityDelegate;
    }

    public final void h() {
        o(true);
        l(this.recyclerView);
        View viewJ = j(this.recyclerView);
        View viewK = viewJ != null ? k(viewJ) : null;
        if (viewK != null) {
            BaseDivViewExtensionsKt.V(viewK);
        }
    }

    public final void i() {
        BaseDivViewExtensionsKt.V(this.recyclerView);
        g();
    }

    public final View j(ViewGroup viewGroup) {
        return (View) SequencesKt___SequencesKt.T(ViewGroupKt.getChildren(viewGroup), kotlin.comparisons.a.b(AccessibilityListDelegate$firstChild$1.INSTANCE, AccessibilityListDelegate$firstChild$2.INSTANCE));
    }

    public final View k(View view) {
        View child;
        return (!(view instanceof DivViewWrapper) || (child = ((DivViewWrapper) view).getChild()) == null) ? view : child;
    }

    public final void l(ViewGroup viewGroup) {
        ViewParent parent = viewGroup.getParent();
        ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup2 == null || y45.e(viewGroup, viewGroup2.getRootView())) {
            return;
        }
        for (View view : ViewGroupKt.getChildren(viewGroup2)) {
            if (!y45.e(view, viewGroup) && view.getImportantForAccessibility() != 4) {
                this.list.add(new c(new WeakReference(view), view.getImportantForAccessibility()));
                view.setImportantForAccessibility(4);
            }
        }
        l(viewGroup2);
    }

    public final boolean m() {
        if (!this.isItemsFocusActive) {
            return false;
        }
        i();
        return true;
    }

    public final void n() {
        for (c cVar : this.list) {
            View view = (View) cVar.b().get();
            if (view != null) {
                view.setImportantForAccessibility(cVar.a());
            }
        }
        this.list.clear();
    }

    public final void o(boolean z) {
        if (this.isItemsFocusActive == z) {
            return;
        }
        this.isItemsFocusActive = z;
        BackHandlingRecyclerView backHandlingRecyclerView = this.recyclerView;
        int childCount = backHandlingRecyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            p(backHandlingRecyclerView.getChildAt(i));
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
        y45.j(host, SerializableCookie.HOST);
        y45.j(info, "info");
        super.onInitializeAccessibilityNodeInfo(host, info);
        info.setClassName(this.isItemsFocusActive ? xq8.b(RecyclerView.class).c() : xq8.b(Button.class).c());
        info.addAction(16);
        info.setClickable(true);
        info.setImportantForAccessibility(true);
        info.setScreenReaderFocusable(true);
        BackHandlingRecyclerView backHandlingRecyclerView = this.recyclerView;
        int childCount = backHandlingRecyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            p(backHandlingRecyclerView.getChildAt(i));
        }
    }

    public final void p(View view) {
        view.setImportantForAccessibility(this.isItemsFocusActive ? 1 : 4);
    }

    @Override
    public boolean performAccessibilityAction(View host, int action, Bundle args) {
        boolean z;
        y45.j(host, SerializableCookie.HOST);
        if (action == 16) {
            h();
            z = true;
        } else {
            z = false;
        }
        return super.performAccessibilityAction(host, action, args) || z;
    }
}
