package com.transsion.audio.shortcut;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import android.widget.ImageView;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import defpackage.cl0;
import defpackage.el0;
import defpackage.h27;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.qi4;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

public final class ShortcutObserver extends ContentObserver {
    public final Context a;
    public final ImageView b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.audio.shortcut.ShortcutObserver$onChange$1", f = "ShortcutObserver.kt", l = {24}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        int label;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return ShortcutObserver.this.new AnonymousClass1(wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            try {
                if (i == 0) {
                    c.b(obj);
                    kotlinx.coroutines.c cVarB = mc2.b();
                    ShortcutObserver$onChange$1$shortcutExists$1 shortcutObserver$onChange$1$shortcutExists$1 = new ShortcutObserver$onChange$1$shortcutExists$1(ShortcutObserver.this, null);
                    this.label = 1;
                    obj = cl0.g(cVarB, shortcutObserver$onChange$1$shortcutExists$1, this);
                    if (obj == objF) {
                        return objF;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c.b(obj);
                }
                if (((Boolean) obj).booleanValue()) {
                    ShortcutObserver.this.e();
                } else {
                    ShortcutObserver.this.g();
                }
            } catch (Exception e) {
                Log.e("shortcut", "Error checking shortcut existence", e);
            }
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortcutObserver(Handler handler, Context context, ImageView imageView) {
        super(handler);
        y45.j(handler, "handler");
        y45.j(context, "context");
        y45.j(imageView, "mShortCutIv");
        this.a = context;
        this.b = imageView;
    }

    public final void e() {
        h27.c().e(1169, Boolean.FALSE);
    }

    public final boolean f(Context context, String str) {
        List<ShortcutInfoCompat> shortcuts = ShortcutManagerCompat.getShortcuts(context, 4);
        y45.i(shortcuts, "getShortcuts(...)");
        List<ShortcutInfoCompat> list = shortcuts;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (y45.e(str, ((ShortcutInfoCompat) it.next()).getId())) {
                return true;
            }
        }
        return false;
    }

    public final void g() {
        h27.c().e(1169, Boolean.TRUE);
    }

    @Override
    public void onChange(boolean z, Uri uri) {
        super.onChange(z, uri);
        el0.d(qi4.b, mc2.c(), null, new AnonymousClass1(null), 2, null);
    }
}
