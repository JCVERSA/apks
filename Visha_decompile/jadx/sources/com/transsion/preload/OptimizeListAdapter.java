package com.transsion.preload;

import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import defpackage.td8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \u000f*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0001\u0010B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\t2\b\b\u0001\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/transsion/preload/OptimizeListAdapter;", "T", "Lcom/chad/library/adapter/base/BaseViewHolder;", "K", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "layoutResId", MethodDecl.initName, "(I)V", "Landroid/view/ViewGroup;", "parent", "layoutId", "Landroid/view/View;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Landroid/view/ViewGroup;I)Landroid/view/View;", "o", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class OptimizeListAdapter<T, K extends BaseViewHolder> extends BaseQuickAdapter<T, K> {

    public static final Companion INSTANCE = new Companion(null);
    public static final td8 p = new td8();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final td8 a() {
            return b();
        }

        public final td8 b() {
            return OptimizeListAdapter.p;
        }

        public Companion() {
        }
    }

    public OptimizeListAdapter(int i) {
        super(i);
    }

    public static final td8 h() {
        return INSTANCE.a();
    }

    public final View i(ViewGroup parent, int layoutId) {
        y45.j(parent, "parent");
        View viewB = p.b(parent, layoutId);
        y45.i(viewB, "getView(...)");
        return viewB;
    }
}
