package com.yandex.div.core.resources;

import android.content.Context;
import android.content.res.Resources;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.c74;
import defpackage.ff8;
import defpackage.y45;
import defpackage.yi5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u001b\u0010\u000e\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/yandex/div/core/resources/ContextThemeWrapperWithResourceCache;", "Landroidx/appcompat/view/ContextThemeWrapper;", "Landroid/content/Context;", "baseContext", "", "themeResId", MethodDecl.initName, "(Landroid/content/Context;I)V", "Landroid/content/res/Resources;", "getResources", "()Landroid/content/res/Resources;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lyi5;", "b", "resourceCache", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ContextThemeWrapperWithResourceCache extends ContextThemeWrapper {

    public final yi5 resourceCache;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextThemeWrapperWithResourceCache(Context context, int i) {
        super(context, i);
        y45.j(context, "baseContext");
        this.resourceCache = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final ff8 invoke() {
                Resources resources = super/*androidx.appcompat.view.ContextThemeWrapper*/.getResources();
                y45.i(resources, "super.getResources()");
                return new ff8(resources);
            }
        });
    }

    public final Resources b() {
        return (Resources) this.resourceCache.getValue();
    }

    @Override
    public Resources getResources() {
        return b();
    }
}
