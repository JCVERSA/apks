package com.transsion.postdetail.layer;

import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.m;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.player.orplayer.f;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

public abstract class BaseLayer {

    private final String f46868a;

    private f f46869b;

    private String f46870c;

    private PostSubjectItem f46871d;

    private final Lazy f46872e;

    private ORPlayerView f46873f;

    private ImageView f46874g;

    private a f46875h;

    private boolean f46876i;

    public BaseLayer(final Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f46868a = getClass().getSimpleName();
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.f46872e = FragmentViewModelLazyKt.a(fragment, Reflection.b(PostDetailViewModel.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                m mVar = objInvoke instanceof m ? (m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    public final void F(LayerFlag flag, Object... params) {
        Intrinsics.h(flag, "flag");
        Intrinsics.h(params, "params");
        a aVar = this.f46875h;
        if (aVar != null) {
            aVar.h(flag, Arrays.copyOf(params, params.length));
        }
    }

    protected final ImageView G() {
        return this.f46874g;
    }

    protected final f H() {
        return this.f46869b;
    }

    protected final ORPlayerView I() {
        return this.f46873f;
    }

    protected final boolean J() {
        return this.f46876i;
    }

    protected final void K(ImageView imageView) {
        this.f46874g = imageView;
    }

    public final void L(a aVar) {
        this.f46875h = aVar;
    }

    public void M(f orPlayer, ORPlayerView orPlayerView) {
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(orPlayerView, "orPlayerView");
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46868a;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "setPlayer----->", false, 4, null);
        this.f46869b = orPlayer;
        this.f46873f = orPlayerView;
    }

    public final void N(String postId, PostSubjectItem postSubjectItem) {
        Intrinsics.h(postId, "postId");
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46868a;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "setPostData----->", false, 4, null);
        this.f46870c = postId;
        this.f46871d = postSubjectItem;
    }

    protected final void O(String str) {
        this.f46870c = str;
    }

    protected final void P(boolean z10) {
        this.f46876i = z10;
    }
}
