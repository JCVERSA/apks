package com.yandex.div.core.view2;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.app.NotificationCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.lzy.okgo.cookie.SerializableCookie;
import defpackage.s74;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001BQ\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u001e\b\u0002\u0010\u0007\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u001e\b\u0002\u0010\b\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0017\u0010\u0013J\u001f\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0013J\u001f\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ'\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\"J)\u0010&\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\f2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b&\u0010'R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R8\u0010\u0007\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b*\u0010.R8\u0010\b\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010+\u001a\u0004\b0\u0010-\"\u0004\b(\u0010.¨\u00061"}, d2 = {"Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;", "Landroidx/core/view/AccessibilityDelegateCompat;", "originalDelegate", "Lkotlin/Function2;", "Landroid/view/View;", "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;", "Lzfb;", "initializeAccessibilityNodeInfo", "actionsAccessibilityNodeInfo", MethodDecl.initName, "(Landroidx/core/view/AccessibilityDelegateCompat;Ls74;Ls74;)V", SerializableCookie.HOST, "", "eventType", "sendAccessibilityEvent", "(Landroid/view/View;I)V", "Landroid/view/accessibility/AccessibilityEvent;", NotificationCompat.CATEGORY_EVENT, "sendAccessibilityEventUnchecked", "(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V", "", "dispatchPopulateAccessibilityEvent", "(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z", "onPopulateAccessibilityEvent", "onInitializeAccessibilityEvent", "info", "onInitializeAccessibilityNodeInfo", "(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V", "Landroid/view/ViewGroup;", "child", "onRequestSendAccessibilityEvent", "(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z", "Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;", "getAccessibilityNodeProvider", "(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;", "action", "Landroid/os/Bundle;", "args", "performAccessibilityAction", "(Landroid/view/View;ILandroid/os/Bundle;)Z", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Landroidx/core/view/AccessibilityDelegateCompat;", "b", "Ls74;", "getInitializeAccessibilityNodeInfo", "()Ls74;", "(Ls74;)V", "c", "getActionsAccessibilityNodeInfo", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AccessibilityDelegateWrapper extends AccessibilityDelegateCompat {

    public final AccessibilityDelegateCompat originalDelegate;

    public s74 initializeAccessibilityNodeInfo;

    public s74 actionsAccessibilityNodeInfo;

    public AccessibilityDelegateWrapper(AccessibilityDelegateCompat accessibilityDelegateCompat, s74 s74Var, s74 s74Var2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(accessibilityDelegateCompat, (i & 2) != 0 ? new s74() {
            public final void invoke(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((View) obj, (AccessibilityNodeInfoCompat) obj2);
                return zfb.a;
            }
        } : s74Var, (i & 4) != 0 ? new s74() {
            public final void invoke(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((View) obj, (AccessibilityNodeInfoCompat) obj2);
                return zfb.a;
            }
        } : s74Var2);
    }

    public final void a(s74 s74Var) {
        y45.j(s74Var, "<set-?>");
        this.actionsAccessibilityNodeInfo = s74Var;
    }

    public final void b(s74 s74Var) {
        y45.j(s74Var, "<set-?>");
        this.initializeAccessibilityNodeInfo = s74Var;
    }

    @Override
    public boolean dispatchPopulateAccessibilityEvent(View host, AccessibilityEvent event) {
        y45.j(host, SerializableCookie.HOST);
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        AccessibilityDelegateCompat accessibilityDelegateCompat = this.originalDelegate;
        return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.dispatchPopulateAccessibilityEvent(host, event) : super.dispatchPopulateAccessibilityEvent(host, event);
    }

    @Override
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View host) {
        AccessibilityNodeProviderCompat accessibilityNodeProvider;
        y45.j(host, SerializableCookie.HOST);
        AccessibilityDelegateCompat accessibilityDelegateCompat = this.originalDelegate;
        return (accessibilityDelegateCompat == null || (accessibilityNodeProvider = accessibilityDelegateCompat.getAccessibilityNodeProvider(host)) == null) ? super.getAccessibilityNodeProvider(host) : accessibilityNodeProvider;
    }

    @Override
    public void onInitializeAccessibilityEvent(View host, AccessibilityEvent event) {
        zfb zfbVar;
        y45.j(host, SerializableCookie.HOST);
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        AccessibilityDelegateCompat accessibilityDelegateCompat = this.originalDelegate;
        if (accessibilityDelegateCompat != null) {
            accessibilityDelegateCompat.onInitializeAccessibilityEvent(host, event);
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            super.onInitializeAccessibilityEvent(host, event);
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
        zfb zfbVar;
        y45.j(host, SerializableCookie.HOST);
        y45.j(info, "info");
        AccessibilityDelegateCompat accessibilityDelegateCompat = this.originalDelegate;
        if (accessibilityDelegateCompat != null) {
            accessibilityDelegateCompat.onInitializeAccessibilityNodeInfo(host, info);
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            super.onInitializeAccessibilityNodeInfo(host, info);
        }
        this.initializeAccessibilityNodeInfo.invoke(host, info);
        this.actionsAccessibilityNodeInfo.invoke(host, info);
    }

    @Override
    public void onPopulateAccessibilityEvent(View host, AccessibilityEvent event) {
        zfb zfbVar;
        y45.j(host, SerializableCookie.HOST);
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        AccessibilityDelegateCompat accessibilityDelegateCompat = this.originalDelegate;
        if (accessibilityDelegateCompat != null) {
            accessibilityDelegateCompat.onPopulateAccessibilityEvent(host, event);
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            super.onPopulateAccessibilityEvent(host, event);
        }
    }

    @Override
    public boolean onRequestSendAccessibilityEvent(ViewGroup host, View child, AccessibilityEvent event) {
        y45.j(host, SerializableCookie.HOST);
        y45.j(child, "child");
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        AccessibilityDelegateCompat accessibilityDelegateCompat = this.originalDelegate;
        return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.onRequestSendAccessibilityEvent(host, child, event) : super.onRequestSendAccessibilityEvent(host, child, event);
    }

    @Override
    public boolean performAccessibilityAction(View host, int action, Bundle args) {
        y45.j(host, SerializableCookie.HOST);
        AccessibilityDelegateCompat accessibilityDelegateCompat = this.originalDelegate;
        return accessibilityDelegateCompat != null ? accessibilityDelegateCompat.performAccessibilityAction(host, action, args) : super.performAccessibilityAction(host, action, args);
    }

    @Override
    public void sendAccessibilityEvent(View host, int eventType) {
        zfb zfbVar;
        y45.j(host, SerializableCookie.HOST);
        AccessibilityDelegateCompat accessibilityDelegateCompat = this.originalDelegate;
        if (accessibilityDelegateCompat != null) {
            accessibilityDelegateCompat.sendAccessibilityEvent(host, eventType);
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            super.sendAccessibilityEvent(host, eventType);
        }
    }

    @Override
    public void sendAccessibilityEventUnchecked(View host, AccessibilityEvent event) {
        zfb zfbVar;
        y45.j(host, SerializableCookie.HOST);
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        AccessibilityDelegateCompat accessibilityDelegateCompat = this.originalDelegate;
        if (accessibilityDelegateCompat != null) {
            accessibilityDelegateCompat.sendAccessibilityEventUnchecked(host, event);
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            super.sendAccessibilityEventUnchecked(host, event);
        }
    }

    public AccessibilityDelegateWrapper(AccessibilityDelegateCompat accessibilityDelegateCompat, s74 s74Var, s74 s74Var2) {
        y45.j(s74Var, "initializeAccessibilityNodeInfo");
        y45.j(s74Var2, "actionsAccessibilityNodeInfo");
        this.originalDelegate = accessibilityDelegateCompat;
        this.initializeAccessibilityNodeInfo = s74Var;
        this.actionsAccessibilityNodeInfo = s74Var2;
    }
}
